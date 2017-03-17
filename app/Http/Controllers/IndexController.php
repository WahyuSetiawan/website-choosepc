<?php

namespace App\Http\Controllers;

use App\EvidenceModel;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class IndexController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        //
        $data = EvidenceModel::all();
        return view('index')->with('data', $data);
    }

    public function calculate() {
        $data = \Input::all();
        print_r($data['in']);
        echo count($data['in']);
    }

    public function findE($id) {
        $data = EvidenceModel::find($id);
        return $data->name;
    }

}
