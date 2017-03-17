<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DependValueController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        $datas = \DB::table('build_depend')->where('rule', '=', 1)->lists('name', 'id');
        return view('admin.depend_value.index')->with('datas', $datas);
    }

    public function showTable($id) {
        $rules = \DB::table('build_component_rule')->get();
        $components = \DB::table('build_component_queue')
                ->join('ahp_component_computer', 'ahp_component_computer.id', '=', 'build_component_queue.component')
                ->get();
        $dependFiles = \DB::table('build_depend_value')->where('depend', '=', $id)->get();
        ?>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <label class="panel-title">Data Depend <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addmodal">ADD</button></label>
            </div>
            <div class="table">
                <table class="table table-striped">
                    <tr>
                        <th>No</th>
                        <th>Value</th>
                        <th>Action</th>
                    </tr>
                    <?php $i = 1 ?>
                    <?php foreach ($dependFiles as $dependFile) { ?>
                        <tr>
                            <td><?php echo $i++ ?></td>
                            <td><?php echo $dependFile->value ?></td>
                            <td>
                                <button class="btn btn-warning" onclick="editModal('<?php echo $dependFile->id ?>')">Edit</button>
                                <button class="btn btn-danger">Delete [belum dibuat]</button>
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
                            <label>Value</label>
                            <input id="value" type="text" class="form-control">
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
        \DB::table('build_depend_value')->insert($data);
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
        $dependvalue = \DB::table('build_depend_value')->where('id', '=', $id)->first();
        ?>
        <!-- form add modal-->
        <div class="modal fade" id="editmodal" tabindex="-1" role="editdialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4>Edit Depend <?php echo $dependvalue->value ?></h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" value="<?php echo csrf_token() ?>" name="edit_token" id="edit_token">
                        <div class="form-group">
                            <label>Value</label>
                            <input id="editvalue" type="text" value="<?php echo $dependvalue->value ?>" class="form-control">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" onclick="edit('<?php echo $dependvalue->id ?>')">Save changes</button>
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
        print_r(\Input::all());
        $data = \Input::all();
        unset($data['_token']);
        print_r($data);
        \DB::table('build_depend_value')->where('id', '=', $id)->update($data);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id) {
        \DB::table('build_depend_value')->where('depend', '=', $id)->get();
        print_r($id);

        redirect()->to('admin/depend');
    }

}
