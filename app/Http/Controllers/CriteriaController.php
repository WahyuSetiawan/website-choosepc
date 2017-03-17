<?php

namespace App\Http\Controllers;

use App\ahp_component_computerModel;
use App\ahp_criteriaModel;
use App\HipotesisModel;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Input;

class CriteriaController extends Controller {

    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        $component = ahp_component_computerModel::all();

        return view('admin.criteria.index')->with('comp', $component);
    }

    public function showCom($id) {
        $component = \DB::table('ahp_bayes_schema')
                        ->join('ahp_component_computer', 'ahp_bayes_schema.id_component', '=', 'ahp_component_computer.id')
                        ->where('id_hipotensis', $id)->get();


        return response()->json($component);
    }

    public function showCrt($id) {
        $subcriteria = \DB::table('ahp_component_computer')
                        ->join('ahp_criteria', 'ahp_criteria.id_component', '=', 'ahp_component_computer.id')
                        ->where('id_component', '=', $id)->get();
        ?>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <label class="panel-title">Database Criteria</label>
                <a href="<?php echo \URL::to('admin/ahp/criteria/create/') . '?p=' . $id ?>" class="btn btn-primary">Add</a>
            </div>
            <div class="table">
                <table class="table table-striped">
                    <tr>
                        <th>ID Criteria</th>
                        <th>Name</th>
                        <th>Action</th>
                    </tr>

                    <?php
                    foreach ($subcriteria as $sub) {
                        ?>
                        <tr>
                            <td><?php echo $sub->id_criteria ?></td>
                            <td><?php echo $sub->nama_criteria ?></td>
                            <td>
                                <a href="<?php echo \URL::to('admin/ahp/criteria/edit') . '/' . $sub->id_criteria ?>" class="btn btn-warning">Edit</a>
                                <a href="<?php echo\URL::to('admin/ahp/criteria/destroy') . '/' . $sub->id_criteria ?>" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                        <?php
                    }
                    ?>
                </table>
            </div>
        </div>


        <?php
    }

    public function create() {
        return view('admin.criteria.create');
    }

    public function store() {
        try {
            $criteria = new ahp_criteriaModel();
            $criteria->id_criteria = \DB::select('select criteria() as criteria')[0]->criteria;
            $criteria->nama_criteria = \Input::get('name');
            $criteria->id_component = Input::get('id_comp');
            $criteria->save();
            echo 'suc';
            return redirect()->to('admin/ahp/criteria');
        } catch (\Exception $e) {
            echo 'aoeu';
            return redirect()->to('admin/ahp/criteria');
        }
    }

    public function edit($id) {
        $data = ahp_criteriaModel::where('id_criteria', '=', $id)->first();
        return \View::make('admin\criteria\edit')->with('data', $data);
    }

    public function update($id) {
        print_r(\Input::all());

        $rules = array(
            'name' => 'required',
            'id_comp' => 'required'
        );

        $valid = \Validator::make(\Input::all(), $rules);

        if ($valid->fails()) {
            echo $valid->messages();
        } else {
            \DB::table('ahp_criteria')->where('id_criteria', $id)->update([
                'nama_criteria' => \Input::get('name'),
                'id_component' => \input::get('id_comp')
            ]);

            return \Redirect::to('admin/ahp/criteria');
        }
    }

    public function destroy($id) {
        \DB::table('ahp_criteria')->where('id_criteria', '=', $id)->delete();

        return \Redirect::to('admin/ahp/criteria');
    }

}
