<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DependController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        return view('admin/depend/index');
    }

    public function showTable() {
        $rules = \DB::table('build_component_rule')->get();
        $components = \DB::table('build_component_queue')
                ->join('ahp_component_computer', 'ahp_component_computer.id', '=', 'build_component_queue.component')
                ->get();
        $dependFiles = \DB::select('select * from build_depend');
        ?>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <label class="panel-title">Data Depend <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addmodal">ADD</button></label>
            </div>
            <div class="table">
                <table class="table table-striped">
                    <tr>
                        <th>Component 1</th>
                        <th>Rule</th>
                        <th>Component 2 </th>
                        <th>Name</th>
                        <th>Action</th>
                    </tr>
                    <?php foreach ($dependFiles as $dependFile) { ?>
                        <tr>
                            <td><?php echo \DB::table('ahp_component_computer')->where('id', '=', $dependFile->component_1)->first()->name ?></td>
                            <td><?php echo \DB::table('build_component_rule')->where('id', '=', $dependFile->rule)->first()->rule ?></td>
                            <td><?php echo \DB::table('ahp_component_computer')->where('id', '=', $dependFile->component_2)->first()->name ?></td>
                            <td><?php echo $dependFile->name ?></td>
                            <td>
                                <?php if ($dependFile->rule == 1) { ?>
                                    <button class="btn btn-info" onclick="window.location.href = '<?php echo \URL::to('admin/valuedepend?id=' . $dependFile->id) ?>'">Depend Value</button>
                                <?php } ?>
                                <button class="btn btn-warning" onclick="editdata('<?php echo $dependFile->id ?>')">Edit</button>
                                <button class="btn btn-danger" onclick="window.location.href = '<?php echo \URL::to('admin/depend/destroy/' . $dependFile->id) ?>'">Delete</button>
                            </td>
                        </tr>
                    <?php } ?>
                </table>
            </div>
        </div>

        <!-- form add modal-->
        <div class="modal fade" id="addmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4>Add Depend</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" value="<?php echo csrf_token() ?>" name="_token" id="_token">
                        <div class="form-group">
                            <label>Component 1</label>
                            <select id="component_1" name="component_1" class="form-control">
                                <?php foreach ($components as $component) { ?>
                                    <option value="<?php echo $component->component ?>"><?php echo $component->name ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Rule</label>
                            <select id="rule" name="rule" class="form-control">
                                <?php foreach ($rules as $rule) { ?>
                                    <option value="<?php echo $rule->id ?>"><?php echo $rule->rule ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Component 2</label>
                            <select id="component_2" name="component_2" class="form-control">
                                <?php foreach ($components as $component) { ?>
                                    <option value="<?php echo $component->component ?>"><?php echo $component->name ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <input id="name" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" onclick="save()">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

        <?php
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create() {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store() {
        $data = \Input::all();
        unset($data['_token']);
        \DB::table('build_depend')->insert($data);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id) {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id) {
        $rules = \DB::table('build_component_rule')->get();
        $components = \DB::table('build_component_queue')
                ->join('ahp_component_computer', 'ahp_component_computer.id', '=', 'build_component_queue.component')
                ->get();
        $dependFiles = \DB::select("select * from build_depend where id = '" . $id . "'");
        ?>
        <!-- form add modal-->
        <div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4>Add Depend</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" value="<?php echo csrf_token() ?>" name="_token" id="_token">
                        <div class="form-group">
                            <label>Component 1</label>
                            <select id="editmodalcomponent_1" name="component_1" class="form-control">
                                <?php
                                foreach ($components as $component) {
                                    if ($dependFiles[0]->component_1 == $component->component) {
                                        ?>
                                        <option value="<?php echo $component->component ?>"  selected="true"><?php echo $component->name ?></option>
                                        <?php
                                    } else {
                                        ?>
                                         <option value="<?php echo $component->component ?>"><?php echo $component->name ?></option>
                                        <?php
                                    }
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Rule</label>
                            <select id="editmodalrule" name="rule" class="form-control">
                                <?php foreach ($rules as $rule) { ?>
                                    <option value="<?php echo $rule->id ?>"><?php echo $rule->rule ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Component 2</label>
                            <select id="editmodalcomponent_2" name="component_2" class="form-control">
                                <?php
                                foreach ($components as $component) {
                                    if ($dependFiles[0]->component_2 == $component->component) {
                                        ?>
                                        <option value="<?php echo $component->component ?>"  selected="true"><?php echo $component->name ?></option>
                                        <?php
                                    } else {
                                        ?>
                                         <option value="<?php echo $component->component ?>"><?php echo $component->name ?></option>
                                        <?php
                                    }
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <input id="editmodalname" type="text" value="<?php echo $dependFiles[0]->name ?>" class="form-control">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" onclick="edit('<?php echo $id ?>')">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <?php
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id) {
        $data = \Input::all();
        unset($data['_token']);
        \DB::table('build_depend')->where('id','=',$id)->update($data);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id) {
        \DB::table('build_depend')->where('id', '=', $id)->delete();

        return redirect()->to('admin/depend');
    }

}
