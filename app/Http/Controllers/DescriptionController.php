<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

class DescriptionController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        $components = \DB::table('ahp_component_computer')->lists('id', 'name');

        foreach ($components as $component) {
            $datas[$component] = \DB::table('product_comp_description')->where('component', '=', $component)->get();
        }

        $components = \DB::table('ahp_component_computer')->lists('name', 'id');
        return \View::make('admin/description/index')
                        ->with('components', $components)
                        ->with('datas', $datas);
    }

    public function create($comp) {
        return \View::make('admin/description/add')->with('key', $comp);
    }

    public function store() {
        $rules = array(
            'description' => 'required',
            'component' => 'required'
        );

        $validation = \Validator::make(\Input::all(), $rules);

        if ($validation->fails()) {
            echo $validation->messages();
        } else {
            $data = \Input::all();
            unset($data["_token"]);
            \DB::table('product_comp_description')->insert($data);
        }

        return redirect()->to('admin/description');
    }

    public function edit($id) {
        $data = \DB::table('product_comp_description')->where('id', '=', $id)->first();
        return \View::make('admin/description/edit')
                        ->with('data', $data);
    }

    public function update($id) {
        $rules = array(
            'description' => 'required',
            'id' => 'required'
        );

        $validation = \Validator::make(\Input::all(), $rules);

        if ($validation->fails()) {
            echo $validation->messages();
        } else {
            $data = \Input::all();
            unset($data["_token"]);
            \DB::table('product_comp_description')->update($data);
        }

        return redirect()->to('admin/description');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id) {
        \DB::table('product_comp_description')->where('id', '=', $id)->delete();
        return redirect()->to('admin/description');
    }

}
