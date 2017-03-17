<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BuildDependController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        return view('admin/builddepend/index');
    }

    public function showTable() {
        $components = \DB::table('build_component_queue')
                        ->join('ahp_component_computer', 'ahp_component_computer.id', '=', 'build_component_queue.component')
                        ->orderBy('build_component_queue.id', 'asc')->get();

        /* $no = array();
          for ($i = 1; $i < count($data) + 1; $i++) {
          $no[$i] = $i;
          } */

        unset($components[0]);

        foreach ($components as $component) {
            /*
             * tampilan yang akan ditampilkan dalam website melalui jquery
             */
            ?>

            <div class="panel panel-info">
                <div class="panel-heading">
                    <label class="panel-title"><?php echo $component->name ?></label>
                    <a class="btn btn-primary btn-sm" onclick="addDepend('<?php echo $component->id ?>')">Add</a>
                </div>
                <div class="table">
                    <table class="table table-striped" id="<?php echo $component->id ?>">
                        <tr>
                            <th style="width: 30%">Criteria <?php echo $component->name ?></th>
                            <th style="width: 20%">Rule</th>
                            <th style="width: 30%">Criteria</th>
                            <th style="width: 20%">Action</th>
                        </tr>
                        <tr>
                            <?php
                            $depends = \DB::table('build_component_depend_criteria')->where('component_queue', '=', $component->id)->get();

                            foreach ($depends as $depend) {
                                ?>
                                <td><?php echo \DB::table('ahp_criteria')->where('id_criteria', '=', $depend->criteria_1)->first()->nama_criteria ?></td>
                                <td><?php echo \DB::table('build_component_rule')->where('id', '=', $depend->rule)->first()->rule ?></td>
                                <td>
                                    <?php
                                    $criteria = \DB::table('ahp_criteria')->where('id_criteria', '=', $depend->criteria_2)->first();
                                    echo \DB::table('ahp_component_computer')->where('id', '=', $criteria->id_component)->first()->name;
                                    echo " - " . $criteria->nama_criteria
                                    ?>
                                </td>
                                <td><a href="<?php echo \URL::to('admin/buildDepend/destroy/' . $depend->id) ?>" class="btn btn-danger">Delete</a></td>
                            <?php } ?>
                        </tr>
                    </table>
                </div>

            </div>


            <?php
        }
    }

    public function getcriteria($component) {
        $components = array();
        $components[0] = \DB::table('ahp_criteria')->where('id_component', '=', $component)->lists('id_criteria');
        $components[1] = \DB::table('ahp_criteria')->where('id_component', '=', $component)->lists('nama_criteria');
        return response()->json($components);
    }

    public function rule() {
        $components[0] = \DB::table('build_component_rule')->lists('id');
        $components[1] = \DB::table('build_component_rule')->lists('rule');
        return response()->json($components);
    }

    public function component() {
        $components[0] = \DB::table('ahp_component_computer')->lists('id');
        $components[1] = \DB::table('ahp_component_computer')->lists('name');
        return response()->json($components);
    }

    public function criteriacomponent() {
        $components[0] = \DB::table('build_component_rule')->lists('id');
        $components[1] = \DB::table('build_component_rule')->lists('rule');
        return response()->json($components);
    }

    public function create() {
        return view('admin/builddepend/add');
    }

    public function store() {
        print_r(\Input::all());
        $data = \Input::all();
        unset($data['_token']);

        \DB::table('build_component_depend_criteria')->insert($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id) {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id) {
        \DB::table('build_component_depend')->where('id', '=', $id)->delete();

        return redirect()->to('admin/buildDepend');
    }

}
