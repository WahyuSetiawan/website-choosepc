<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

class ProdukController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    public function index($comp) {
        $countPagination = 15;
        $products = \App\ProductModel::where('component', '=', $comp)->paginate($countPagination);
        $title = \App\ahp_component_computerModel::find($comp)->name;
        $description = \DB::table('product_comp_description')->where('component', '=', $comp)->lists('id');
        $dataProduct = array();

        foreach ($products as $product) {
            $dataProduct[$product->id] = \DB::table('product_description')->where('product', '=', $product->id)->lists('content', 'description');
        }

        $description = \DB::table('product_comp_description')->where('component', '=', $comp)->lists('description', 'id');
        return \View::make('admin/product/index')
                        ->with('countPagination', $countPagination)
                        ->with('product', $products)
                        ->with('comp', $comp)
                        ->with('dataProduct', $dataProduct)
                        ->with('descriptions', $description)
                        ->with('title', $title);
    }

    public function create($id) {
        $processors = \App\ahp_criteriaModel::where('id_component', '=', $id)->get();
        $title = \App\ahp_component_computerModel::find($id)->name;
        $dataHeader = array();
        $data = array();

        foreach ($processors as $processor) {
            $dataHeader[$processor->id_criteria] = $processor->nama_criteria;
            $data[$processor->id_criteria] = \App\ahp_subcriteriaModel::where('id_criteria', '=', $processor->id_criteria)->lists('sub', 'id_sub');
        }

        $description = \App\Product_Comp_DescriptionModel::where('component', '=', $id)->lists('description', 'id');
        $depends = \DB::table('build_depend')
                ->where('component_1', '=', $id)
                ->orWhere('component_2', '=', $id)
                ->get();

        $dependsvalue = array();

        foreach ($depends as $depend) {
            if ($depend->rule == 1) {
                $dependsvalue[$depend->id] = \DB::table('build_depend_value')->where('depend', '=', $depend->id)->lists('value', 'id');
            }
        }

        return \View::make('admin/product/add')
                        ->with('component', $id)
                        ->with('data', $data)
                        ->with('depends', $depends)
                        ->with('title', $title)
                        ->with('dependsvalue', $dependsvalue)
                        ->with('dataHeader', $dataHeader)
                        ->with('description', $description);
    }

    public function store($id) {
        echo '<pre>';
        $data = \Input::all();
        unset($data["_token"]);
        print_r($data);
        $no = \DB::select('select max(id) + 1 as no from product')[0]->no;
        \DB::table('product')->insert([
            'id' => $no,
            'component' => $id,
            'name' => \Input::get('name'),
            'price' => \Input::get('price'),
            'consumption' => \Input::get('consumption')
        ]);

        if (null !== \Input::get('description')) {
            $header = array_keys($data['description']);
            $i = 0;

            foreach (\Input::get('description') as $dat) {
                if ($dat !== null) {
                    \DB::table('product_description')->insert(['product' => $no, 'description' => $header[$i++], 'content' => $dat]);
                }
            }
        }
        if (null !== \Input::get('subcriteria')) {
            $header = array_keys($data['subcriteria']);
            $i = 0;

            foreach (\Input::get('subcriteria') as $dat) {
                if ($dat !== null) {
                    \DB::table('product_detail')->insert(['product' => $no, 'id_criteria' => $header[$i++], 'id_subcriteria' => $dat]);
                }
            }
        }

        if (null !== \Input::get('dependselect')) {
            $header = array_keys($data['dependselect']);
            $i = 0;
            foreach (\Input::get('dependselect') as $dat) {
                if ($dat !== null) {
                    \DB::table('product_depend')->insert(['product' => $no, 'build_depend' => $header[$i++], 'depend' => $dat]);
                }
            }
        }

        if (null !== \Input::get('dependtext')) {
            $header = array_keys($data['dependtext']);
            $i = 0;
            foreach (\Input::get('dependtext') as $dat) {
                if ($dat !== null) {
                    \DB::table('product_depend')->insert(['product' => $no, 'build_depend' => $header[$i++], 'value' => $dat]);
                }
            }
        }

        if (null !== \Input::file('image')) {
            $header = array_keys($data['image']);
            $i = 1;
            foreach (\Input::file('image') as $dat) {
                if (null !== $dat) {
                    $destination = "Image\\" . $id . "\\" . $no;
                    $extention = $dat->getClientOriginalExtension();
                    $fileName = $id . '_' . $no . '_' . $i++ . '.' . $extention;
                    $dat->move($destination, $fileName);
                    \DB::table('product_image')->insert(['id_product' => $no, 'image' => $fileName]);
                }
            }
        }
        return redirect()->to('admin/product/' . $id);
    }

    public function show($comp, $id) {
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

        return \View::make('admin/product/show')
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

    public function edit($comp, $id) {
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

        /*
         * depend get value
         */

        $depends = \DB::table('build_depend')
                ->where('component_1', '=', $comp)
                ->orWhere('component_2', '=', $comp)
                ->get();

        $dependsvalue = array();
        $dependsDatabase = array();

        foreach ($depends as $depend) {
            if ($depend->rule == 1) {
                $dependsvalue[$depend->id] = \DB::table('build_depend_value')->where('depend', '=', $depend->id)->lists('value', 'id');
            }
            $dependsDatabase[$depend->id] = \DB::table('product_depend')
                    ->where('product', '=', $id)
                    ->where('build_depend', '=', $depend->id)
                    ->first();
        }

        /*
         * return to view
         */

        return \View::make('admin/product/edit')
                        ->with('product', $products)
                        ->with('component', $id)
                        ->with('title', $title)
                        ->with('dependsDatabase', $dependsDatabase)
                        ->with('comp', $comp)
                        ->with('depends', $depends)
                        ->with('dependsvalue', $dependsvalue)
                        ->with('image', $images)
                        ->with('data', $data)
                        ->with('dataHeader', $dataHeader)
                        ->with('criteriaValue', $criteriaValue)
                        ->with('descriptionValue', $descriptionValue)
                        ->with('description', $description);
    }

    public function update($id) {
        $data = \Input::all();
        print_r($data);
        unset($data["_token"]);
        $component = \DB::table('product')->where('id', '=', $id)->first()->component;
        \DB::table('product')
                ->where('id', '=', $id)
                ->update([
                    'name' => \Input::get('name'),
                    'price' => \Input::get('price'),
                    'consumption' => \Input::get('consumption')
        ]);

        if (null !== \Input::get('dependselect')) {
            $header = array_keys($data['dependselect']);
            $i = 0;
            foreach (\Input::get('dependselect') as $dat) {
                if ($dat !== null) {
                    \DB::table('product_depend')
                            ->where('product', '=', $id)
                            ->where('build_depend', '=', $header[$i++])
                            ->update(['depend' => $dat]);
                }
            }
        }

        if (null !== \Input::get('dependtext')) {
            $header = array_keys($data['dependtext']);
            $i = 0;
            foreach (\Input::get('dependtext') as $dat) {
                $count = \DB::table('product_depend')
                        ->where('product', '=', $id)
                        ->where('build_depend', '=', $header[$i])
                        ->count();
                if ($count == 1) {
                    \DB::table('product_depend')
                            ->where('product', '=', $id)
                            ->where('build_depend', '=', $header[$i++])
                            ->update(['value' => $dat]);
                } else {
                    \DB::table('product_depend')->insert(['product' => $id, 'build_depend' => $header[$i++], 'value' => $dat]);
                }
            }
        }

        if (null !== \Input::get('description')) {
            $header = array_keys($data['description']);
            $i = 0;
            foreach (\Input::get('description') as $dat) {
                $count = \DB::table('product_description')
                        ->where('product', '=', $id)
                        ->where('description', '=', $header[$i])
                        ->count();
                if ($count == 1) {
                    \DB::table('product_description')
                            ->where('product', '=', $id)
                            ->where('description', '=', $header[$i++])
                            ->update(['content' => $dat]);
                } else {
                    \DB::table('product_description')->insert(['product' => $id, 'description' => $header[$i++], 'content' => $dat]);
                }
            }
        }
        if (null !== \Input::get('add')) {
            $header = array_keys($data['add']);
            $i = 0;
            foreach (\Input::get('add') as $dat) {
                $count = \DB::table('product_detail')
                        ->where('product', '=', $id)
                        ->where('id_criteria', '=', $header[$i])
                        ->count();
                if ($count == 1) {
                    \DB::table('product_detail')
                            ->where('product', '=', $id)
                            ->where('id_criteria', '=', $header[$i++])
                            ->update(['id_subcriteria' => $dat]);
                } else {
                    \DB::table('product_detail')->insert(['product' => $id, 'id_criteria' => $header[$i++], 'id_subcriteria' => $dat]);
                }
            }
        }

        if (null !== \Input::file('imagechange')) {
            $idImage = array_keys($data['imagechange']);
            $count_image_save = \DB::table('product_image')->where('id_product', '=', $id)->count();
            $i = 1;
            foreach (\Input::file('imagechange') as $dat) {
                if (null !== $dat) {
                    $destination = "Image\\" . $component . "\\" . $id;
                    $extention = $dat->getClientOriginalExtension();
                    if ($extention === 'jpg') {
                        $fileName = \DB::table('product_image')->where('id', '=', $idImage[$i])->first()->image;
                        $dat->move($destination, $fileName);
                    }
                }
                $i++;
            }
        }
        if (null !== \Input::file('image')) {
            $header = array_keys($data['image']);
            $count_image_save = \DB::table('product_image')->where('id_product', '=', $id)->orderBy('id', 'asc')->count();
            $i = 1;
            foreach (\Input::file('image') as $dat) {
                if (null !== $dat) {
                    $destination = "Image\\" . $component . "\\" . $id;
                    $extention = $dat->getClientOriginalExtension();
                    if ($extention === 'jpg') {
                        $last = \DB::table('product_image')->where('id_product', '=', $id)->orderBy('id', 'desc')->first();
                        if ($last == null) {
                            $fileName = $component . '_' . $id . '_1.' . $extention;
                            $dat->move($destination, $fileName);
                            \DB::table('product_image')->insert(['id_product' => $id, 'image' => $fileName]);
                        } else {
                            $last = str_replace($component . '_' . $id . '_', "", $last->image);
                            $last = str_replace('.' . $extention, '', $last);
                            $last = $last + 1;
                            $fileName = $component . '_' . $id . '_' . $last . '.' . $extention;
                            $dat->move($destination, $fileName);
                            \DB::table('product_image')->insert(['id_product' => $id, 'image' => $fileName]);
                        }
                    }
                }
                $i++;
            }
        }
        return redirect()->to('admin/product/' . $component);
    }

    public function destroy($id) {
        $component = \DB::table('product')->where('id', '=', $id)->first()->component;
        \App\ProductModel::find($id)->delete();
        return redirect()->to('admin/product/' . $component);
    }

}
