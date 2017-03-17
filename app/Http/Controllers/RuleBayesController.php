<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\RuleBayesModel;
use App\EvidenceModel;
use Input;
use App\HipotesisModel;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class RuleBayesController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }	
    public function index()
	{
            $rules = RuleBayesModel::all();
            $evids = EvidenceModel::all();
            $hipos = HipotesisModel::all();
            return view('admin/rule/index')
                    ->with('rules', $rules)
                    ->with('hipos',$hipos)
                    ->with('evids', $evids);
	}

	public function create()
	{
		//
	}

	public function store()
	{
		//
	}

	public function show($id)
	{
		//
	}

	public function edit($id)
	{
            $rule = RuleBayesModel::where('id_hipo','=',$id)->get();
            $evidance = EvidenceModel::all();
            
            return view('admin/rule/edit')->with('rules', $rule)->with('evids', $evidance)->with('idHipo',$id);
	}

	public function update($id)
	{
            $check = Input::get('checkboxRule');
            $evidAll = RuleBayesModel::where('id_hipo', '=', $id)->get();
            
            foreach ($evidAll as $evid){
                //echo $evid->id."<br>";
                foreach($check as $valueEvid){
                    if($valueEvid == $evid->id_evid){
                        $status = true;
                        break;
                    } else {$status = FALSE;}
                }
                
                if (!$status){
                    RuleBayesModel::find($evid->id)->delete();
                }
            }
            
            
            foreach ($check as $valueEvid) {
                $base = RuleBayesModel::where('id_evid','=' , $valueEvid)->where('id_hipo', '=', $id)->get();
                if(count($base)==0){
                    $NewRuleBayes = new RuleBayesModel();
                    $NewRuleBayes->id_hipo = $id;
                    $NewRuleBayes->id_evid = $valueEvid;
                    $NewRuleBayes->save();
                }
            }
	}

	public function destroy($id)
	{
            //var_dump($id);
            RuleBayesModel::find($id)->delete();

            return \Redirect::to('admin/rule');
	}
        
        static function getIDRule($idHipo, $idEvid){
            //var_dump($idHipo);var_dump($idEvid);
            $result = RuleBayesModel::where('id_hipo','=',$idHipo)->where('id_evid','=',$idEvid)->first();
            return $result->id;
        }
        
        static function getTrue($idHipo, $idEvid){
            $resultRule = RuleBayesModel::where('id_hipo','=',$idHipo)->where('id_evid','=',$idEvid)->first();
            if ($resultRule == null){
                return FALSE;
            }
            return TRUE;
        }

}
