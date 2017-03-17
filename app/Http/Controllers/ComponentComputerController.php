<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Input;
use Illuminate\Http\Request;

class ComponentComputerController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    public function index() {
        return view('admin/componentcomputer/index')->with('comcoms', \App\ahp_component_computerModel::all());
    }

    public function create() {        
        return view('admin/componentcomputer/create');
    }

    public function store() {
        \DB::transaction(function() {
            $no = \DB::select('select component() as cm');
            $comcom = new \App\ahp_component_computerModel;
            $comcom->id = $no[0]->cm;
            $comcom->name = Input::get('name_component');
            $comcom->save();
            
            $bayes = \App\HipotesisModel::all();
            
            foreach ($bayes as $baye){
                $bayes_schema = new \App\ahp_bayes_schemaModel();
                $bayes_schema->id_hipotensis = $baye->id;
                $bayes_schema->id_component = $no[0]->cm;
                $bayes_schema->save();
            }

        });
        return \Redirect::to('admin/ahp/comcom/');
    }

    public function show($id) {
        //
    }

    public function edit($id) {
        $data = \App\ahp_component_computerModel::find($id);
        
        return view('admin/componentcomputer/edit')->with('data',$data);
    }

    public function update($id) {
        $data = \App\ahp_component_computerModel::find($id);
        
        $data->name = \Input::get('name');
        $data->save();
        
        return \Redirect::to('admin/ahp/comcom/');
    }

    public function destroy($id) {
        \App\ahp_component_computerModel::find($id)->delete();
        
        return \Redirect::to('admin/ahp/comcom/');
    }

}
