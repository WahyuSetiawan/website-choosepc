<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class HarddiskController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    private $table = 'product_hdd';
    private $tableDetail = 'product_hdd_detail';
    private $destination = 'Image\hardisk';

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        $datas = \App\product_hddModel::all();
        return \View::make('admin/hdd/index')
                        ->with('datas', $datas);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {
        $hdds = \App\ahp_criteriaModel::where('id_component', '=', 'CM004')->get();

        foreach ($hdds as $hdd) {
            $dataHeader[$hdd->id_criteria] = $hdd->nama_criteria;
            $data[$hdd->id_criteria] = \App\ahp_subcriteriaModel::where('id_criteria', '=', $hdd->id_criteria)->lists('sub', 'id_sub');
        }

        return \View::make('admin/hdd/add')
                        ->with('data', $data)
                        ->with('dataHeader', $dataHeader);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store() {
        $indexInput = 0;

        echo "<pre>";

        $rules = array(
            'id_hdd' => 'required|min:5',
            'name' => 'required',
            'price' => 'required|integer',
        );

        $validator = \Validator::make(\Input::all(), $rules);
        if ($validator->fails()) {
            
        } else {
            foreach (\Input::all() as $input) {
                if (is_string($input)) {
                    $data[array_keys(\Input::all())[$indexInput]] = $input;
                } else if (is_array($input)) {
                    $i = 0;
                    foreach ($input as $insideInput) {
                        $dataSubcriteria[$i]['id_hdd'] = \Input::get('id_hdd');
                        $dataSubcriteria[$i]['id_criteria'] = array_keys($input)[$i];
                        $dataSubcriteria[$i]['id_subcriteria'] = $insideInput;
                        $i++;
                    }
                } else if (is_object($input)) {
                    $extention = \Input::file('image')->getClientOriginalExtension();
                    $fileName = \Input::get('name') . '.' . $extention;
                    \Input::file('image')->move($this->destination, $fileName);
                    $data[array_keys(\Input::all())[$indexInput]] = $fileName;
                }
                $indexInput++;
            }

            unset($data["_token"]);

            print_r($data);
            print_r($dataSubcriteria);

            \DB::table($this->table)->insert($data);

            foreach ($dataSubcriteria as $subcriteria) {
                \DB::table($this->tableDetail)->insert($subcriteria);
            }
        }


        return \Redirect::to('admin/hdd');
    }

    /**
     * Display the specified resource.
     *
     * @pahdd  int  $id
     * @return Response
     */
    public function show($id) {
        $dataShow = \DB::table($this->table)
                ->where('id_hdd', '=', $id)
                ->select(\DB::raw("id_hdd as 'ID RAM', name as 'Name'"
                                . ",consumption as 'Consumption',timing as 'Timing',"
                                . "Price as 'price', image as 'Image'"))
                ->first();
        $dataShowDetail = \DB::table($this->tableDetail)
                ->join('ahp_criteria', 'ahp_criteria.id_criteria', '=', $this->tableDetail . '.id_criteria')
                ->join('ahp_subcriteria', 'ahp_subcriteria.id_sub', '=', $this->tableDetail . '.id_subcriteria')
                ->get();

        return \View::make('admin/hdd/show')
                        ->with('dataShow', $dataShow)
                        ->with('dataShowDetail', $dataShowDetail);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @pahdd  int  $id
     * @return Response
     */
    public function edit($id) {
        $dataEdit = \DB::table($this->table)->where('id_hdd', '=', $id)->first();
        $dataEditDetail = \DB::table($this->tableDetail)
                ->where('id_hdd', '=', $dataEdit->id_hdd)
                ->lists('id_subcriteria', 'id_criteria');
        $hdds = \App\ahp_criteriaModel::where('id_component', '=', 'CM004')->get();

        foreach ($hdds as $hdd) {
            $dataHeader[$hdd->id_criteria] = $hdd->nama_criteria;
            $data[$hdd->id_criteria] = \App\ahp_subcriteriaModel::where('id_criteria', '=', $hdd->id_criteria)->lists('sub', 'id_sub');
        }

        return \View::make('admin/hdd/edit')
                        ->with('data', $data)
                        ->with('dataEdit', $dataEdit)
                        ->with('dataEditDetail', $dataEditDetail)
                        ->with('dataHeader', $dataHeader);
    }

    /**
     * Update the specified resource in storage.
     *
     * @pahdd  int  $id
     * @return Response
     */
    public function update($id) {
        $indexInput = 0;

        echo '<pre>';

        $rules = array(
            'id_hdd' => 'required|min:5',
            'name' => 'required',
            'price' => 'required|integer',
        );

        $validator = \Validator::make(\Input::all(), $rules);
        if ($validator->fails()) {
            var_dump(\Input::all());
            echo 'aoeuo';
        } else {
            if (isset(\Input::all()['image'])) {
                foreach (\Input::all() as $input) {
                    if (is_string($input)) {
                        $data[array_keys(\Input::all())[$indexInput]] = $input;
                    } else if (is_array($input)) {
                        $i = 0;
                        foreach ($input as $insideInput) {
                            $dataSubcriteria[$i]['id_hdd'] = \Input::get('id_hdd');
                            $dataSubcriteria[$i]['id_criteria'] = array_keys($input)[$i];
                            $dataSubcriteria[$i]['id_subcriteria'] = $insideInput;
                            $i++;
                        }
                    } else if (is_object($input)) {
                        $extention = \Input::file('image')->getClientOriginalExtension();
                        $fileName = \Input::get('name') . '.' . $extention;
                        \Input::file('image')->move($this->destination, $fileName);
                        $data[array_keys(\Input::all())[$indexInput]] = $fileName;
                    }
                    $indexInput++;
                }
                unset($data["_token"]);

                print_r($data);
                print_r($dataSubcriteria);
                \DB::table($this->table)->where('id_hdd', $id)->update($data);

                foreach ($dataSubcriteria as $subcriteria) {
                    $database = \DB::table($this->tableDetail)
                            ->where('id_hdd', $subcriteria['id_hdd'])
                            ->where('id_criteria', $subcriteria['id_criteria'])
                            ->count();

                    if ($database == 0) {
                        \DB::table($this->tableDetail)->insert($subcriteria);
                    } else {
                        \DB::table($this->tableDetail)
                                ->where('id_hdd', $subcriteria['id_hdd'])
                                ->where('id_criteria', $subcriteria['id_criteria'])
                                ->update($subcriteria);
                    }
                }
            } else {
                foreach (\Input::all() as $input) {
                    if (is_string($input)) {
                        $data[array_keys(\Input::all())[$indexInput]] = $input;
                    } else if (is_array($input)) {
                        $i = 0;
                        foreach ($input as $insideInput) {
                            $dataSubcriteria[$i]['id_hdd'] = \Input::get('id_hdd');
                            $dataSubcriteria[$i]['id_criteria'] = array_keys($input)[$i];
                            $dataSubcriteria[$i]['id_subcriteria'] = $insideInput;
                            $i++;
                        }
                    }
                    $indexInput++;
                }

                unset($data["_token"]);

                print_r($data);
                print_r($dataSubcriteria);

                \DB::table($this->table)->where('id_hdd', $id)->update($data);

                foreach ($dataSubcriteria as $subcriteria) {
                    $database = \DB::table($this->tableDetail)
                            ->where('id_hdd', $subcriteria['id_hdd'])
                            ->where('id_criteria', $subcriteria['id_criteria'])
                            ->count();

                    if ($database == 0) {
                        \DB::table($this->tableDetail)->insert($subcriteria);
                    } else {
                        \DB::table($this->tableDetail)
                                ->where('id_hdd', $subcriteria['id_hdd'])
                                ->where('id_criteria', $subcriteria['id_criteria'])
                                ->update($subcriteria);
                    }
                }
            }
        }

        //return \Redirect::to('admin/hdd');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @pahdd  int  $id
     * @return Response
     */
    public function destroy($id) {
        \DB::table($this->table)->where('id_hdd', '=', $id)->delete();
        return \Redirect::to('admin/harddisk');
    }

}
