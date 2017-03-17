<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use Input;

class AllocationController extends Controller {

    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        $hipo = \DB::table('hipotesis')->lists('id', 'name');
        $data = array();
        $dataColomn = array();
        foreach ($hipo as $h) {
            $data[$h]['header'] = \DB::table('allocation_product')->where('hipo', '=', $h)->lists('allocation', 'component');
            $data[$h]['colomn'] = \DB::table('allocation_product')->where('hipo', '=', $h)->lists('allocation', 'id');
            $data[$h]['psu'] = \DB::table('allocation_psu')->where('hipo', '=', $h)->lists('value', 'id');
        }
        $hipo = \DB::table('hipotesis')->lists('name', 'id');
        $component = \DB::table('ahp_component_computer')->lists('name', 'id');
//		echo '<pre>';
        //	print_r($data);
        //	return;
        return view('admin.allocation.index')
                        ->with('header', $hipo)
                        ->with('component', $component)
                        ->with('dataColomn', $dataColomn)
                        ->with('datas', $data);
    }

    public function create($key) {
        $component = \DB::table('ahp_component_computer')->lists('name', 'id');
        return view('admin.allocation.add')
                        ->with('component', $component)
                        ->with('key', $key);
    }

    public function store() {
        $rules = array(
            'component' => 'required',
            'hipo' => 'required'
        );

        $validator = \Validator::make(\Input::all(), $rules);

        if ($validator->fails()) {
            
        } else {
            $data = \Input::all();
            unset($data['_token']);
            \DB::table('allocation_product')->insert($data);
        }

        return \Redirect::to('admin/allocation');
    }

    public function show($id) {
        
    }

    public function edit($id) {
        return view('admin/allocation/edit')->with('hipo', \App\HipotesisModel::find($id));
    }

    public function update($id) {
        $rules = array(
            'cpu' => '',
            'motherboard' => '',
            'ram' => '',
            'vga' => '',
            'harddisk' => '',
            'psu' => '',
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return $validator->messages();
        } else {
            $hipotensis = \App\HipotesisModel::find($id);
            $hipotensis->cpu = Input::get('cpu');
            $hipotensis->motherboard = Input::get('motherboard');
            $hipotensis->ram = Input::get('ram');
            $hipotensis->vga = Input::get('vga');
            $hipotensis->harddisk = Input::get('harddisk');
            $hipotensis->psu = Input::get('psu');
            $hipotensis->save();

            // return \Redirect::to('admin/evid');
        }
        return \Redirect::to('admin/allocation');
    }

    public function destroy($id) {
        //
    }

    public function ajaxUpdate() {
        $rules = array(
            'id' => 'required',
            'allocation' => 'required'
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return $validator->messages();
        } else {
            \DB::table('allocation_product')
                    ->where('id', '=', \Input::get('id'))
                    ->update(['allocation' => \Input::get('allocation')]);
        }
    }

    public function ajaxUpdateX() {
        $rules = array(
            'id' => 'required',
            'allocation' => 'required'
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return $validator->messages();
        } else {
            \DB::table('allocation_psu')
                    ->where('hipo', '=', \Input::get('id'))
                    ->update(['value' => \Input::get('allocation')]);
        }
    }

    public function ajaxDelete() {
        \DB::table('allocation_product')
                ->where('id', '=', \Input::get('id'))
                ->delete();
    }

}
