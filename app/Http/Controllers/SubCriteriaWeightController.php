<?php namespace App\Http\Controllers;

use App\ahp_criteriaModel;
use App\HipotesisModel;
use App\Http\Controllers\Controller;

class SubCriteriaWeightController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    public function index()
    {
        //
        $hipo = HipotesisModel::all();

        return view('admin/subcriteriaWeight/index')->with('hipo',$hipo);
    }
    
    public function parStore() {
        $var1 = \Input::get('var1');
        $var2 = \Input::get('var2');
        $id_component = \Input::get('id_component');
        $id_criteria1 = \Input::get('id_criteria1');
        $id_criteria2 = \Input::get('id_criteria2');
        $id_hipotesis = \Input::get('id_hipotesis');

        if ($var2 == 1) {
            \DB::table('ahp_subcriteria_weight')
                ->where('id_hipotesis', $id_hipotesis)
                ->where('id_criteria', $id_component)
                ->where('ahp_subcriteria_1', $id_criteria1)
                ->where('ahp_subcriteria_2', $id_criteria2)
                ->update(['weight' => $var1, 'point' => '0']);
            $res = $id_hipotesis.' '.$id_component.' '.$id_criteria1.' '.$id_criteria2;
            return $res;
        } else {
            \DB::table('ahp_subcriteria_weight')
                ->where('id_hipotesis', $id_hipotesis)
                ->where('id_criteria', $id_component)
                ->where('ahp_subcriteria_1', $id_criteria1)
                ->where('ahp_subcriteria_2', $id_criteria2)
                ->update(['weight' => $var2, 'point' => '1']);
            $res = $id_hipotesis.' '.$id_component.' '.$id_criteria1.' '.$id_criteria2;
            return $res;
        }
        return false;
    }

    public function getCrit($id){
        $component = \DB::table('ahp_bayes_schema')
            ->join('ahp_component_computer', 'ahp_bayes_schema.id_component', '=', 'ahp_component_computer.id')
            ->where('id_hipotensis', $id)->get();


        return response()->json($component);
    }

    public function getSubCrit($id){
        $component = ahp_criteriaModel::where('id_component','=',$id)->get();

        return response()->json($component);
    }

    public function showPair($idB, $id){
        $pair = new UtilController();
        $pair->getTableSubCrit($idB, $id);
    }

}
