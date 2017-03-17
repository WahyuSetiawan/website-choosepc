<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PowerSupplyController extends Controller {

    public function __construct() {
        $this->middleware('auth');
    }

    private $table = 'product_psu';
    private $tableDetail = 'product_psu_detail';
    private $destination = 'Image\PSU';

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        $datas = \App\product_psuModel::paginate(15);
        return \View::make('admin/psu/index')
                        ->with('datas', $datas);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {
        $data = array();
        $dataHeader = array();

        $attribut = \DB::table('product_psu_rating')->lists('name_rating', 'rating');

        return \View::make('admin/psu/add')
                        ->with('data', $data)
                        ->with('attribut', $attribut)
                        ->with('dataHeader', $dataHeader);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store() {

        print_r(\Input::all());
        $rules = array(
            'manufactur' => 'required',
            'model_number' => 'required',
            'price' => 'required|integer',
        );

        $validator = \Validator::make(\Input::all(), $rules);
        if ($validator->fails()) {
            
        } else {
            \DB::transaction(function() {
                if (null !== \DB::table('product_psu')->orderby('id_psu', 'desc')->first()) {
                    $id = \DB::table('product_psu')->orderby('id_psu', 'desc')->first()->id_psu + 1;
                } else {
                    $id = 0;
                }

                \DB::table($this->table)->insert([
                    'id_psu' => $id,
                    'manufactur' => \Input::get('manufactur'),
                    'model_number' => \Input::get('model_number'),
                    'wattage' => \Input::get('wattage'),
                    'rating' => \Input::get('rating'),
                    'price' => \Input::get('price')
                ]);

                foreach (\Input::all() as $input) {
                    if (is_array($input)) {
                        $i = 0;
                        foreach ($input as $insideInput) {
                            $dataSubcriteria[$i]['id_psu'] = $id;
                            $dataSubcriteria[$i]['id_criteria'] = array_keys($input)[$i];
                            $dataSubcriteria[$i]['id_subcriteria'] = $insideInput;
                            $i++;
                        }
                    } 
                }
                if (null !== \Input::file('image')) {
                        $header = array_keys(\Input::file('image'));
                        $i = 1;
                        for ($images = 0; $images < count(\Input::file('image')); $images++) {
                            if (null !== \Input::file('image')[$images]) {
                                $destination = "Image\psu\\" . $id;
                                $extention = \Input::file('image')[$images]->getClientOriginalExtension();
                                $fileName = 'psu_' . $id . '_' . $i++ . '.' . $extention;
                                \Input::file('image')[$images]->move($destination, $fileName);
                                \DB::table('product_psu_image')->insert(['id_product' => $id, 'image' => $fileName]);
                            }
                        }
                    }

                if (isset($dataSubcriteria)) {
                    foreach ($dataSubcriteria as $subcriteria) {
                        //\DB::table($this->tableDetail)->insert($subcriteria);
                    }
                }
            });
        }


        return \Redirect::to('admin/powersupply');
    }

    /**
     * Display the specified resource.
     *
     * @papsu  int  $id
     * @return Response
     */
    public function show($id) {
        $dataShow = \DB::table($this->table)
                ->where('id_psu', '=', $id)
                ->join('product_psu_rating', 'product_psu_rating.rating', '=', 'product_psu.rating')
                ->leftjoin('product_psu_image', 'product_psu_image.id_product', '=', 'product_psu.id_psu')
                ->select(\DB::raw("id_psu as 'ID PSU', manufactur as 'Manufactur'"
                                . ",model_number as 'Model Number',wattage as 'Wattage',"
                                . "product_psu_rating.name_rating as 'Certificate',"
                                . "price as 'price', image as 'Image'"))
                ->first();
        $dataShowDetail = \DB::table($this->tableDetail)
                ->join('ahp_criteria', 'ahp_criteria.id_criteria', '=', $this->tableDetail . '.id_criteria')
                ->join('ahp_subcriteria', 'ahp_subcriteria.id_sub', '=', $this->tableDetail . '.id_subcriteria')
                ->get();

        $images = \DB::table('product_psu_image')->where('id_product', '=', $id)->get();

        return \View::make('admin/psu/show')
                        ->with('dataShow', $dataShow)
                        ->with('images', $images)
                        ->with('dataShowDetail', $dataShowDetail);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @papsu  int  $id
     * @return Response
     */
    public function edit($id) {
        $data = array();
        $dataHeader = array();

        $product_psu = \DB::table($this->table)->where('id_psu', '=', $id)->first();

        $dataEditImage = \DB::table('product_psu_image')
                ->where('id_product', '=', $product_psu->id_psu)
                ->get();

        $images = \DB::table('product_psu_image')->where('id_product', '=', $id)->get();

        $attribut = \DB::table('product_psu_rating')->lists('name_rating', 'rating');

        return \View::make('admin/psu/edit')
                        ->with('product_psu', $product_psu)
                        ->with('dataEditImage', $dataEditImage)
                        ->with('attribut', $attribut)
                        ->with('images', $images)
                        ->with('data', $data)
                        ->with('dataHeader', $dataHeader);
    }

    /**
     * Update the specified resource in storage.
     *
     * @papsu  int  $id
     * @return Response
     */
    public function update($id) {
        $id_psu = $id;
        $data = \Input::all();
        unset($data['_token']);
        unset($data['image']);

        $rules = array(
            'manufactur' => 'required',
            'model_number' => 'required',
            'price' => 'required|integer',
        );

        $validator = \Validator::make(\Input::all(), $rules);
        if ($validator->fails()) {
            
        } else {
            \DB::table($this->table)->where('id_psu', '=', $id)->update([
                'manufactur' => \Input::get('manufactur'),
                'model_number' => \Input::get('model_number'),
                'wattage' => \Input::get('wattage'),
                'rating' => \Input::get('rating'),
                'price' => \Input::get('price')
            ]);

            foreach (\Input::all() as $input) {
                if (is_array($input)) {
                    $i = 0;
                    foreach ($input as $insideInput) {
                        $dataSubcriteria[$i]['id_psu'] = $id_psu;
                        $dataSubcriteria[$i]['id_criteria'] = array_keys($input)[$i];
                        $dataSubcriteria[$i]['id_subcriteria'] = $insideInput;
                        $i++;
                    }
                }
            }

            if (null !== \Input::file('imagechange')) {
                $idImage = array_keys($data['imagechange']);
                $count_image_save = \DB::table('product_image')->where('id_product', '=', $id)->count();
                $i = 1;
                for ($a = 0; $a < count(\Input::file('imagechange')); $a++) {
                    if (null !== \Input::file('imagechange')[$idImage[$a]]) {
                        $destination = "Image\psu\\" . $id_psu;
                        $extention = \Input::file('imagechange')[$idImage[$a]]->getClientOriginalExtension();
                        if ($extention === 'jpg') {
                            $fileName = \DB::table('product_psu_image')->where('id', '=', $idImage[$a])->first()->image;
                            \Input::file('imagechange')[$idImage[$a]]->move($destination, $fileName);
                        }
                    }
                    $i++;
                }
            }
            if (null !== \Input::file('image')) {
                $count_image_save = \DB::table('product_psu_image')->where('id_product', '=', $id)->orderBy('id', 'asc')->count();
                $i = 1;
                for ($a = 0; $a < count(\Input::file('image')); $a++) {
                    if (null !== \Input::file('image')[$a]) {
                        $destination = "Image\PSU\\" . $id_psu;
                        $extention = \Input::file('image')[$a]->getClientOriginalExtension();
                        if ($extention === 'jpg') {
                            $last = \DB::table('product_psu_image')->where('id_product', '=', $id)->orderBy('id', 'desc')->first();
                            if ($last == null) {
                                $fileName = 'psu_' . $id_psu . '_1.' . $extention;
                                \Input::file('image')[$a]->move($destination, $fileName);
                                \DB::table('product_psu_image')->insert(['id_product' => $id, 'image' => $fileName]);
                            } else {
                                $last = str_replace('psu_' . $id_psu . '_', "", $last->image);
                                $last = str_replace('.' . $extention, '', $last);
                                $last = $last + 1;
                                $fileName = 'psu_' . $id_psu . '_' . $last . '.' . $extention;
                                \Input::file('image')[$a]->move($destination, $fileName);
                                \DB::table('product_psu_image')->insert(['id_product' => $id, 'image' => $fileName]);
                            }
                        }
                    }
                    $i++;
                }
            }
            if (isset($dataSubcriteria)) {
                foreach ($dataSubcriteria as $subcriteria) {
                    //\DB::table($this->tableDetail)->insert($subcriteria);
                }
            }
        }

        return \Redirect::to('admin/powersupply');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @papsu  int  $id
     * @return Response
     */
    public function destroy($id) {
        \DB::table($this->table)->where('id_psu', '=', $id)->delete();
        return \Redirect::to('admin/powersupply');
    }

}
