<?php

namespace App\Http\Controllers;

use App\HipotesisModel;
use App\Http\Requests;
use Input;
use Validator;

class HipotesisController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        //
        $data = HipotesisModel::all();
        return view('admin/hipotesis/index')->with('data', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {
        //
        return view('admin/hipotesis/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store() {
        $rules = array(
            'name' => 'required',
            'probabilitas' => 'required|numeric'
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return "<script>window.alert('".$validator->messages()."')</script>";
        } else {
            \DB::transaction(function() {
                
                if(count(\DB::table('hipotesis')->orderBy('id', 'desc')->first()) != 0){
                        $no = \DB::table('hipotesis')->orderBy('id', 'desc')->first()->id + 1;
                } else {
                    $no = 1;
                }
                $hipotesis = new HipotesisModel();
                $hipotesis->id = $no;
                $hipotesis->name = Input::get('name');
                $hipotesis->probabilitas = Input::get('probabilitas');
                $hipotesis->save();

                $compenents = \App\ahp_component_computerModel::all();

                foreach ($compenents as $component) {
                    $bayes_schema = new \App\ahp_bayes_schemaModel();
                    $bayes_schema->id_hipotensis = $no;
                    $bayes_schema->id_component = $component->id;
                    $bayes_schema->save();
                }
                $this->autoCriteriaWeight($no);
                $this->autoSubCriteriaWeight($no);
            });
        }
        return \Redirect::to('admin/hipo');
    }
    public function autoCriteriaWeight($id) {
        
        $component = \App\ahp_component_computerModel::all();
        
            foreach ($component as $c) {
                $i = 0;
                $criteria = \DB::table('ahp_criteria')->where('id_component', '=', $c->id)->get();
                foreach ($criteria as $c1) {
                    foreach (array_slice($criteria, $i) as $c2) {
                        try {
                            \DB::table('ahp_criteria_weight')
                                    ->insert(['id_hipotesis' => $id, 'id_component' => $c->id,
                                        'id_criteria_1' => $c1->id_criteria, 'id_criteria_2' => $c2->id_criteria]);
                        } catch (\Exception $e) {
                            echo 'error';
                        }
                    }
                    $i++;
                }
            }  
    }
        public function autoSubCriteriaWeight($id) {
        $criteria = \App\ahp_criteriaModel::all();

            foreach ($criteria as $c) {
                $i = 0;
                $subcriteria = \DB::table('ahp_subcriteria')->where('id_criteria', $c->id_criteria)->get();
                foreach ($subcriteria as $s1) {
                    foreach (array_slice($subcriteria, $i) as $s2) {

                        try {
                            \DB::table('ahp_subcriteria_weight')->insert(['id_hipotesis' => $id, 'id_criteria' => $c->id_criteria,
                                'ahp_subcriteria_1' => $s1->id_sub, 'ahp_subcriteria_2' => $s2->id_sub]);
                        } catch (\Exception $e) {
                            echo 'error';
                        }
                    }
                    $i++;
                }
            }
       
    }
    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function show($id) {
        //
        $data = HipotesisModel::find($id);
//        return view('admin/evidence/show')->with('data',$data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return Response
     */
    public function edit($id) {
        //
        $data = HipotesisModel::find($id);
        return view('admin/hipotesis/edit')->with('data', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int $id
     * @return Response
     */
    public function update($id) {
        //
        $rules = array(
            'name' => 'required',
            'probabilitas' => 'required|numeric'
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return 'masih salah';
        } else {
            $hipotesis = HipotesisModel::find($id);
            $hipotesis->name = Input::get('name');
            $hipotesis->probabilitas = Input::get('probabilitas');
            $hipotesis->save();

            return \Redirect::to('admin/hipo');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return Response
     */
    public function destroy($id) {
//		//
//        // delete
//        $nerd = Nerd::find($id);
//        $nerd->delete();
        $data = HipotesisModel::find($id);
        $data->delete();

        return \Redirect::to('admin/hipo');
//        // redirect
//        Session::flash('message', 'Successfully deleted the nerd!');
//        return Redirect::to('nerds');
    }

}
