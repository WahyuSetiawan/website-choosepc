<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\EvidenceModel;

class BuildController extends Controller {

    private $evaluation = true;

    public function result() {
        return view('client/builder/result')->with('maxprob', $maxprob);
    }

    public function build() {
        return view('client/builder/question')->with('evids', EvidenceModel::all());
    }

    public function teoremaBayes() {
        $price = \Input::get("amount") / 1;


        /*
         * depends variable yang akan dipakai
         */

        $wattageUsedForPSU = 0;
        $productMax = array();
        $bill = 0;
        $hipotesis = \App\HipotesisModel::all();


        /*
         * 
         * pencarian nilai semesta yang akan menghasilkan perhitungan bayes
         * 
         */
        foreach ($hipotesis as $hipo) {
            $a = \App\RuleBayesModel::where('id_hipo', $hipo->id)->lists('id_evid');
            $rule[$hipo->id] = $a;
            $hipotensisa[$hipo->id] = \App\HipotesisModel::find($hipo->id)->probabilitas;
        }

        /*
         * 
         * setelah mendapat bayes teruskan ke bayes compute untuk menghasilkan bayes maksimal
         * dan generate global yang menghasilkan ahp setia criteria
         * 
         */

        $bayes = new bayesCompute(\Input::get('evidence'), $rule, $hipotensisa);
        $global_variable = UtilController::GenerateGlobal($bayes);

        /*
         * 
         * mencari psu allocation dengan menggunakan 
         * 
         */

        $allocation_psu = \DB::table('allocation_psu')->where('hipo', '=', $bayes->getIDMax())->first()->value;
        $psuprice = round(($allocation_psu / 100) * $price, 0);
        $price = $price - $psuprice;

        /*
         * 
         * mencari data yang telah didayat dan mengambil alokasi harga barang yang akan digunakan
         * atau akan dilalui langkah ahp
         * 
         */

        $components = \DB::table('build_component_queue')->orderBy('id', 'asc')->lists('component', 'id');
        $price = $price - \DB::table('allocation_psu')->where('hipo', '=', $bayes->getIDMax())->first()->value;

        foreach ($components as $component) {
            $allocationDatabase[$component] = \DB::table('allocation_product')->where('component', '=', $component)->where('hipo', '=', $bayes->getIDMax())->first()->allocation;
            $allocation[$component] = round(($allocationDatabase[$component] / 100 ) * $price, 0);
        }

        /*
         * 
         * biar gak ada uang yang tersisa apabila allocation tidak dapat mencapai hardware yang 
         * terdapat dalam database produk
         * 
         */

        $productToFix = $components;

        foreach ($productToFix as $component) {
            $productCount = \DB::table('product')->where('component', '=', $component)->where('price', '<', ($allocation[$component] + 30))->count();
            if ($productCount == 0) {
                $last = \DB::table('build_component_queue')->orderBy('id', 'desc')->first()->component;
                $unsetArray = array_search($last, $productToFix);
                unset($allocation[$component]);
                unset($productToFix[$unsetArray]);
                break;
            }
        }

        $allocation = null;
        $sum = 0;
        foreach ($productToFix as $component) {
            $sum = $sum + \DB::table('allocation_product')->where('component', '=', $component)->where('hipo', '=', $bayes->getIDMax())->first()->allocation;
        }

        foreach ($productToFix as $component) {
            $allocation[$component] = \DB::table('allocation_product')->where('component', '=', $component)->where('hipo', '=', $bayes->getIDMax())->first()->allocation;
            $allocation[$component] = round(($allocation[$component] / $sum ) * $price, 0);
        }

        /*
         * 
         * perulangan dengan menggunakan array yang tersedia untuk product yang telah dioptimalkan
         * 
         */

        foreach ($productToFix as $component) {
            /*
             * 
             * mendapatkan product dengan allocasi harga yang telah ditentukan
             * 
             */
            /* $depend = \DB::table('build_depend')->where('component_1', '=', $component)->orWhere('component_2', '=', $component)->get();
              foreach ($depend as $dep) {
              if (!empty($productMax[$dep->component_1]) || !empty($productMax[$dep->component_2])) {
              if (!empty($productMax[$dep->component_1])) {
              if ($dep->rule == 1) {
              $ruleDepend = \DB::table('build_component_rule')
              ->where('id', '=', $dep->rule)
              ->first();
              $dataProductDepend = \DB::table('product')
              ->join('product_depend', 'product_depend.product', '=', 'product.id')
              ->where('product', '=', $productMax[$dep->component_1])
              ->where('build_depend', '=', $dep->id)
              ->first();
              if (count($dataProductDepend) == 0) {
              continue;
              }
              print_r($dataProductDepend);
              } else {
              print_r($dep);
              }
              } else if (!empty($productMax[$dep->component_2])) {

              }
              } else { */
            $productsComputer = \DB::select("select * from product "
                            . "where "
                            . " price < " . ($allocation[$component] + 20)
                            . " and component = '" . $component . "' "
                            . " order by price desc limit 7");
            /* }
              /* } */

            /*
             * 
             * pencarian nilai ahp pada masing masing product
             * 
             */

            foreach ($productsComputer as $product) {
                /*
                 * 
                 * pengambilan setiap criteria yang akan diambil dalam product yang ada di database product_detail
                 * 
                 */
                $productsComputerDetail = \DB::table('product_detail')->where('product', '=', $product->id)->get();
                $sum = 0;
                foreach ($productsComputerDetail as $criteria) {
                    $sum = $sum + $global_variable[$criteria->id_subcriteria];
                }
                $products[$component][$product->id] = $sum;
            }

            /*
             * 
             * pencarian nilai ahp yang terbesar dari setiap product dan di simpan dalam array dengan header id component tersebut
             * 
             */
            if (isset($products[$component])) {

                $productMax[$component] = UtilController::getMax($products[$component]);
                /*
                 * pengambilan consumption daya yang dipakai setiap product atau barang yang telah dinilai ahpnya
                 */
                $watt = \DB::table('product')->where('id', '=', $productMax[$component])->first()->consumption;
                $bill = \DB::table('product')->where('id', '=', $productMax[$component])->first()->price + $bill;
                if (NULL != $watt) {
                    $productsConsumption[$component] = $watt;
                    $wattageUsedForPSU = $wattageUsedForPSU + intval($productsConsumption[$component]);
                }
            } else {
                $message[$component] = 'alokasi tidak menemukan ' . $component;
            }
        }

        /*
         * 
         * final, mencari product untuk dikembalikan 
         * 
         */

        $getproduct = array();

        foreach ($productMax as $product) {
            $getproduct[$product] = \DB::table('product')
                    ->where('id', '=', $product)
                    ->first();
            $getimage[$product] = \DB::table('product_image')
                    ->where('id_product', '=', $product)
                    ->first();
        }

        $bayesConvert = UtilController::convertHeader($bayes->getElementProbabilitas());

        $headerComponent = \App\ahp_component_computerModel::lists('name', 'id');
        $headerComponent['psu'] = 'powersupplyunit';
        $getproduct['psu'] = \App\product_psuModel::where('wattage', '>', $wattageUsedForPSU)
                        ->where('price', '<=', $psuprice)
                        ->orderBy('price', 'ASC')->orderBy('wattage', 'ASC')->first();
        if (count($getproduct['psu']) != 0) {
            $getimage['psu'] = \DB::table('product_psu_image')->where('id_product', '=', $getproduct['psu']->id_psu)->first();
            $bill = $getproduct['psu']->price + $bill;
        } else {
            unset($getproduct['psu']);
        }

        /*
         * return to view
         */
        return view('client/builder/result')
                        ->with('price', \Input::get('amount'))
                        ->with('headerComponent', $headerComponent)
                        ->with('getimage', $getimage)
                        ->with('bill', $bill)
                        ->with('productFix', $getproduct)
                        ->with('bayes', $bayesConvert)
                        ->with('product', $productMax);
    }

    function showProduct($comp, $id) {

        $products = \App\ProductModel::find($id);
        $title = \App\ahp_component_computerModel::find($products->component)->name;
        $description = \App\Product_Comp_DescriptionModel::where('component', '=', $products->component)->get();
        $descriptionValue = \App\Product_DescriptionModel::where('product', '=', $products->id)->lists('content', 'description');
        $criteriaValue = \App\Product_DetailModel::where('product', '=', $products->id)->lists('id_subcriteria', 'id_criteria');

        $processors = \App\ahp_criteriaModel::where('id_component', '=', $products->component)->get();

        foreach ($processors as $processor) {
            $dataHeader[$processor->id_criteria] = $processor->nama_criteria;
            $data[$processor->id_criteria] = \App\ahp_subcriteriaModel::where('id_criteria', '=', $processor->id_criteria)->lists('sub', 'id_sub');
        }

        $description = \App\Product_Comp_DescriptionModel::where('component', '=', $products->component)->lists('description', 'id');

        $images = \DB::table('product_image')->where('id_product', '=', $id)->get();

        return \View::make('client/builder/show')
                        ->with('product', $products)
                        ->with('component', $id)
                        ->with('title', $title)
                        ->with('comp', $comp)
                        ->with('images', $images)
                        ->with('data', $data)
                        ->with('dataHeader', $dataHeader)
                        ->with('criteriaValue', $criteriaValue)
                        ->with('descriptionValue', $descriptionValue)
                        ->with('description', $description);
    }

    public function showPsu($id) {
        $dataShow = \DB::table('product_psu')
                ->where('id_psu', '=', $id)
                ->join('product_psu_rating', 'product_psu_rating.rating', '=', 'product_psu.rating')
                ->leftjoin('product_psu_image', 'product_psu_image.id_product', '=', 'product_psu.id_psu')
                ->select(\DB::raw("id_psu as 'ID PSU', manufactur as 'Manufactur'"
                                . ",model_number as 'Model Number',wattage as 'Wattage',"
                                . "product_psu_rating.name_rating as 'Certificate',"
                                . "price as 'price', image as 'Image'"))
                ->first();
        $dataShowDetail = \DB::table('product_psu_detail')
                ->join('ahp_criteria', 'ahp_criteria.id_criteria', '=', 'product_psu_detail' . '.id_criteria')
                ->join('ahp_subcriteria', 'ahp_subcriteria.id_sub', '=', 'product_psu_detail' . '.id_subcriteria')
                ->get();

        $images = \DB::table('product_psu_image')->where('id_product', '=', $id)->get();

        return \View::make('client/builder/showPsu')
                        ->with('dataShow', $dataShow)
                        ->with('images', $images)
                        ->with('dataShowDetail', $dataShowDetail);
    }

    /*
      function SumAllocation($alloc) {
      $sum = 0;

      foreach ($alloc as $a) {
      $sum = $sum + $a;
      }

      return $sum;
      } */
}
