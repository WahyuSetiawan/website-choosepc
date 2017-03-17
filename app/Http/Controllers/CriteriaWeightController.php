<?php namespace App\Http\Controllers;

use App\HipotesisModel;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class CriteriaWeightController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
        $hipo = HipotesisModel::all();

        return view('admin/criteriaWeight/index')->with('hipo',$hipo);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}
    public function parStore() {
        $var1 = \Input::get('var1');
        $var2 = \Input::get('var2');
        $id_component = \Input::get('id_component');
        $id_criteria1 = \Input::get('id_criteria1');
        $id_criteria2 = \Input::get('id_criteria2');
        $id_hipotesis = \Input::get('id_hipotesis');

        if ($var2 == 1) {
            \DB::table('ahp_criteria_weight')
                ->where('id_hipotesis', $id_hipotesis)
                ->where('id_component', $id_component)
                ->where('id_criteria_1', $id_criteria1)
                ->where('id_criteria_2', $id_criteria2)
                ->update(['weight' => $var1, 'point' => '0']);
            $res = $id_hipotesis.' '.$id_component.' '.$id_criteria1.' '.$id_criteria2;
            return $res;
        } else {
            \DB::table('ahp_criteria_weight')
                ->where('id_hipotesis', $id_hipotesis)
                ->where('id_component', $id_component)
                ->where('id_criteria_1', $id_criteria1)
                ->where('id_criteria_2', $id_criteria2)
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
//    public function getTable($idB,$id) {
//        $sub = $this->arraySubCrit($idB,$id);
//        $table = $this->table($sub);
//        $this->showtab($table);
//    }
    public function showPair($idB, $id){
        $pair = new UtilController();
        $pair->getTableCrit($idB, $id);
    }
	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}
