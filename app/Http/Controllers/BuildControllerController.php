<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BuildControllerController extends Controller {

    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        return view('admin/buildcontroller/index');
    }

    public function create() {
        $components = array();

        $database = \DB::select('select * from ahp_component_computer where id not in (select component from build_component_queue)');
        foreach ($database as $database) {
            $components[$database->id] = $database->name;
        }

        return \View::make('admin/buildcontroller/add')->with('components', $components);
    }

    public function store() {
        $rules = array(
            'component' => 'required'
        );

        $validation = \Validator::make(\Input::all(), $rules);

        if ($validation->fails()) {
            echo $validation->messages();
        } else {
            $data = \Input::all();
            unset($data["_token"]);
            $data['id'] = \DB::select('select max(id) + 1 as no from build_component_queue')[0]->no;
            \DB::table('build_component_queue')->insert($data);
        }
        return \Redirect::to('admin/buildController');
    }

    public function changeNo() {
        $no = \DB::table('build_component_queue')->where('component', '=', \Input::get('component'))->first()->id;

        if ($no < \Input::get('target_move')) {
            echo 'lebih besar target move';
            $max = \Input::get('target_move');
            $i = $no + 1;
            $temp = \DB::select('select max(id) + 1 as no from build_component_queue')[0]->no;
            \DB::table('build_component_queue')->where('component', '=', \Input::get('component'))->update(['id' => $temp]);
            while ($i <= $max) {
                $idtomove = \DB::table('build_component_queue')->where('id', '=', $i)->first()->id;
                \DB::table('build_component_queue')->where('id', '=', $idtomove)->update(['id' => $idtomove - 1]);
                echo '<br>';
                $i++;
            }
            \DB::table('build_component_queue')->where('component', '=', \Input::get('component'))->update(['id' => \Input::get('target_move')]);
        } else {
            echo 'lebih besar no';
            $max = \Input::get('target_move');
            $i = $no - 1;
            $temp = \DB::select('select max(id) + 1 as no from build_component_queue')[0]->no;
            \DB::table('build_component_queue')->where('component', '=', \Input::get('component'))->update(['id' => $temp]);
            while ($max <= $i) {
                $idtomove = \DB::table('build_component_queue')->where('id', '=', $i)->first()->id;
                echo $idtomove;
                \DB::table('build_component_queue')->where('id', '=', $idtomove)->update(['id' => $idtomove + 1]);
                $i--;
            }
            \DB::table('build_component_queue')->where('component', '=', \Input::get('component'))->update(['id' => \Input::get('target_move')]);
        }
    }

    public function showTable() {
        $data = \DB::table('build_component_queue')
                        ->join('ahp_component_computer', 'ahp_component_computer.id', '=', 'build_component_queue.component')
                        ->orderBy('build_component_queue.id', 'asc')->get();

        $no = array();
        for ($i = 1; $i < count($data) + 1; $i++) {
            $no[$i] = $i;
        }
        ?>
        <div class="panel panel-info">
            <div class="panel-heading">
                <label class="panel-title">Queue Component</label>
            </div>
            <div class="table">
                <table class="table table-striped">
                    <tr>
                        <th>No</th>
                        <th>Component Computer</th>
                        <th>Action</th>
                    </tr>
                    <?php $i = 1 ?>
        <?php foreach ($data as $dat) { ?>
                        <tr>
                            <td>
                                <select name="no" id="<?php echo $dat->id ?>" onchange="getNo(this.id, this.value)">
                                    <?php
                                    foreach ($no as $a) {
                                        if ($a == $i) {
                                            ?>
                                            <option value="<?php echo $a; ?>" selected="true"><?php echo $a ?></option>
                                            <?php
                                        } else {
                                            ?>
                                            <option value="<?php echo $a; ?>"><?php echo $a ?></option>
                                            <?php
                                        }
                                    }
                                    ?>
                                </select>
                            <td><?php echo $dat->name ?></td>
                            <td>
                                <a href="<?php echo \URL::to('admin/buildDepend') ?>" class="btn btn-info">Depend</a>
                                <a href="<?php echo \URL::to('admin/buildController/destroy/' . $i++) ?>" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
        <?php } ?>
                </table>
            </div>
        </div>

        <?php
    }

    public function show($id) {
        
    }

    public function edit($id) {
        //
    }

    public function update($id) {
        //
    }

    public function destroy($id) {
        \DB::table('build_component_queue')->where('id', '=', $id)->delete();

        $data = \DB::table('build_component_queue')->where('id', '>', $id)->get();

        foreach ($data as $data) {
            \DB::table('build_component_queue')->where('id', '=', $data->id)->update(['id' => (($data->id) - 1)]);
        }

        return redirect()->to('admin/buildController');
    }

}
