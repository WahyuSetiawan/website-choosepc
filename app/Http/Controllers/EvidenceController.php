<?php

namespace App\Http\Controllers;

use App\EvidenceModel;
use Input;
use Validator;

class EvidenceController extends Controller {

    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        $data = EvidenceModel::all();
        return view('admin/evidence/index')->with('data', $data); //ganti
    }

    public function create() {
        return view('admin/evidence/create');
    }

    public function store() {
        $rules = array(
            'name' => 'required',
            'question' => 'required',
            'group' => ''
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return $validator->messages();
        } else {
            $evidence = new EvidenceModel();
            $evidence->name = Input::get('name');
            $evidence->question = Input::get('question');
            $evidence->group = Input::get('group');
            $evidence->save();

            // return \Redirect::to('admin/evid');
        }
        return \Redirect::to('admin/evid');
    }

    public function show($id) {
        $data = EvidenceModel::find($id);
    }

    public function edit($id) {
        //
        $data = EvidenceModel::find($id);
        return view('admin/evidence/edit')->with('data', $data);
    }

    public function update($id) {

        $rules = array(
            'name' => 'required',
            'question' => 'required'
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return 'masih salah';
        } else {
            $evidence = EvidenceModel::find($id);
            $evidence->name = Input::get('name');
            $evidence->question = Input::get('question');
            $evidence->save();

            return \Redirect::to('admin/evid');
        }
    }

    public function destroy($id) {
        $data = EvidenceModel::find($id);
        $data->delete();

        return \Redirect::to('admin/evid');
    }

}
