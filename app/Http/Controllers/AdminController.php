<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

class AdminController extends Controller {

    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        return \View::make('admin/admin');
    }

    public function getComponent() {
        $component = \DB::table('ahp_component_computer')->lists('name', 'id');
        return response()->json($component);
    }

    public function getLogout() {
        \Auth::logout();
        \Session::forget('username');
        \Session::forget('image');
        return redirect()->to('/');
    }

    public function adminManagement() {
        return view('admin/adminmanagement/index');
    }

    public function showTable() {
        $admins = \App\AppAdminModel::all();
        ?>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <label class="panel-title">Database Admin</label><a href="<?php echo \URL::to('admin/adminadd') ?>" class="btn btn-primary">ADD</a>
            </div>
            <div class="table">
                <table class="table table-striped">
                    <tr>
                        <th>ID</th>
                        <th>Admin</th>
                        <th>Action</th>
                    </tr>
                    <?php foreach ($admins as $admin) { ?>
                        <tr>
                            <td><?php echo $admin->id ?></td>
                            <td><?php echo $admin->username ?></td>
                            <td>
                                <a href="<?php echo \URL::to('admin/adminedit') . '/' . $admin->id ?>" class="btn btn-warning">Edit</a>
                                <a href="<?php echo \URL::to('admin/admindestroy') . '/' . $admin->id ?>" class="btn btn-danger">Delete</a>
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
                        <h4>Add Admin</h4>
                    </div>
                    <form id="add_form" enctype="multipart/form-data" method="post">
                        <div class="modal-body">
                            <input type="hidden" value="<?php echo csrf_token() ?>" name="_token" id="_token">
                            <div class="form-group">
                                <label>Username</label>
                                <input id="add_value" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" id="add_password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input type="file" id="add_image" class="form-control">
                            </div>
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" onclick="save()">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

        <?php
    }

    public function adminadd() {
        return \View::make('admin/adminManagement/add');
    }

    public function adminStore() {
        echo '<pre>';
        //var_dump(\Input::all());

        $destination = "Image\user";
        $extention = \Input::file('image')->getClientOriginalExtension();
        $fileName = \Input::get('username') . '.' . $extention;
        \Input::file('image')->move($destination, $fileName);

        $app_admin = new \App\AppAdminModel();
        $app_admin->username = \Input::get('username');
        $app_admin->password = \Hash::make(\Input::get('password'));
        $app_admin->image = $fileName;
        $app_admin->save();

        return \Redirect::to('admin/management');
    }

    public function adminEdit($id) {
        $data = \DB::table('app_admin')->where('id', '=', $id)->first();

        return \View::make('admin/adminManagement/edit')->with('data', $data);
    }

    public function adminUpdate($id) {
        $adm = \App\AppAdminModel::find($id);
        //print_r(\Input::get());

        if (\Input::get('password') != null) {
            $adm->password = \Hash::make(\Input::get('password'));
        }
        if (\Input::file('image') != null) {
            $destination = "Image\user";
            $extention = \Input::file('image')->getClientOriginalExtension();
            $fileName = \Input::get('username') . '.' . $extention;
            \Input::file('image')->move($destination, $fileName);
            $adm->image = $fileName;
        }
        if (\Input::get('username') != null) {
            $adm->username = \Input::get('username');
        }
        $adm->save();

        return \Redirect::to('admin/management');
    }

    public function adminDestroy($id) {
        \DB::table('app_admin')->where('id', '=', $id)->delete();
        return \Redirect::to('admin/management');
    }

    public function adminDetail() {
        
    }

}
