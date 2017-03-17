<?php

namespace App\Http\Controllers;

use App\ahp_subcriteriaModel;
use App\Http\Controllers\Controller;

class SubCriteriaController extends Controller {
    public function __construct() {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index() {
        return view('admin/subcriteria/index')->with('comp', \App\ahp_component_computerModel::all()); //ganti
    }

    public function autoRule($id) {
        $hipos = \App\HipotesisModel::select('id')->get();
        foreach ($hipos as $hipo) {
            $datas = \DB::table('ahp_subcriteria')->where('id_criteria', '=', $id)->get();
            $arraydata = (array) $datas;
            print_r($arraydata);
            for ($index = 0; $index < count($arraydata); $index++) {
                for ($index2 = $index; $index2 < count($arraydata); $index2++) {
                    echo $hipo->id;
                    if (\DB::table('ahp_subcriteria_weight')
                                    ->where('ahp_subcriteria_1', '=', $arraydata[$index]->id_sub)
                                    ->where('ahp_subcriteria_2', '=', $arraydata[$index2]->id_sub)
                                    ->where('id_hipotesis', '=', $hipo->id)
                                    ->count() == 0) {
                        $input = new \App\ahp_subcriteria_weightModel;
                        $input->id_hipotesis = $hipo->id;
                        $input->id_criteria = $arraydata[$index]->id_criteria;
                        $input->ahp_subcriteria_1 = $arraydata[$index]->id_sub;
                        $input->ahp_subcriteria_2 = $arraydata[$index2]->id_sub;
                        $input->point = 0;
                        $input->weight = 1;
                        $input->save();
                    }
                }
            }
        }
    }

    public function parStore() {
        $var1 = \Input::get('var1');
        $var2 = \Input::get('var2');
        $id_criteria = \Input::get('id_cri');
        $id_subcriteria1 = \Input::get('id_sub1');
        $id_subcriteria2 = \Input::get('id_sub2');

        if ($var2 == 1 && $var1 != 1) {
            \DB::table('ahp_subcriteria_weight')
                    ->where('id_criteria', $id_criteria)
                    ->where('ahp_subcriteria_1', $id_subcriteria1)
                    ->where('ahp_subcriteria_2', $id_subcriteria2)
                    ->update(['weight' => $var1, 'point' => $var2]);
            return $var1;
        } else {
            \DB::table('ahp_subcriteria_weight')
                    ->where('id_criteria', $id_criteria)
                    ->where('ahp_subcriteria_1', $id_subcriteria1)
                    ->where('ahp_subcriteria_2', $id_subcriteria2)
                    ->update(['weight' => $var2, 'point' => $var1]);
            return $var2;
        }
        return false;
    }

    public function create() {
        return view('admin/subcriteria/create');
    }

    public function store() {
        print_r(\Input::all());
        $rules = array(
            'name' => 'required',
            'id_crit' => 'required'
        );

        $validator = \Validator::make(\Input::all(), $rules);

        if ($validator->fails()) {
            echo 'aoeuao';
            return $validator->messages();
        } else {
            $evidence = new ahp_subcriteriaModel();
            $evidence->id_sub = \DB::select('select subcriteria() as subcriteria')[0]->subcriteria;
            $evidence->sub = \Input::get('name');
            $evidence->id_criteria = \Input::get('id_crit');
            $evidence->save();
            $this->autoRule(\Input::get('id_crit'));
        }
        return \Redirect::to('admin/ahp/subcriteria');
    }

    public function showCrt($id) {
        $component = \DB::table('ahp_criteria')
                        ->where('id_component', $id)->get();

        return response()->json($component);
    }

    public function showSubcriteria($id) {
        $subcriteria = \DB::table('ahp_subcriteria')
                        ->where('id_criteria', '=', $id)->get();
        ?>
        <p>
            <a href="<?php echo \URL::to('admin/ahp/subcriteria/create/') . '?p=' . $id ?>" class="btn btn-primary">Add</a>
        </p>
        <table class="table table-striped">
            <tr>
                <th>ID Criteria</th>
                <th>Name</th>
                <th>Action</th>
            </tr>
            <?php foreach ($subcriteria as $sub) { ?>
                <tr>
                    <td><?php echo $sub->id_sub ?></td>
                    <td><?php echo $sub->sub ?></td>
                    <td>
                        <a href="<?php echo \URL::to('admin/ahp/subCriteria/edit') . '/' . $sub->id_sub ?>" class="btn btn-warning">Edit[belum dibuat]</a>
                        <a href="<?php echo \URL::to('admin/ahp/subCriteria/destroy') . '/' . $sub->sub ?>" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
            <?php } ?>
        </table>
        <?php
    }

    public function getTable($id) {
        $sub = $this->arraySub($id);
        $table = $this->table($sub);
        $this->showtab($table);
    }

    static public function getNameCat($id) {
        $name = \DB::table('ahp_subcriteria')->where('id_sub', $id)->first();
//        var_dump($name);
        return $name->sub;
    }

    public function arraySub($id) {
        $ahp = \App\ahp_detail_subcriteriaModel::where('id_criteria', '=', $id)->get();
        for ($i = 0; $i < count($ahp); $i++) {
            for ($j = 0; $j < count(\App\ahp_subcriteria_weightModel::where('id_criteria', '=', $ahp[$i]->id_criteria)->where('ahp_subcriteria_1', '=', $ahp[$i]->id_sub)->get()); $j++) {
                $k = count($ahp) - count(\App\ahp_subcriteria_weightModel::where('id_criteria', '=', $ahp[$i]->id_criteria)->where('ahp_subcriteria_1', '=', $ahp[$i]->id_sub)->get());
                $categori[$i][$j] = \App\ahp_subcriteria_weightModel::where('id_criteria', '=', $ahp[$i]->id_criteria)->where('ahp_subcriteria_1', '=', $ahp[$i]->id_sub)->where('ahp_subcriteria_2', '=', $ahp[$j + $k]->id_sub)->first();
            }
        }
        return $categori;
    }

    public function table($criteria) {
        $result = array();
        $keys = array_keys($criteria);
        for ($i = 0; $i < count($criteria); $i++) {
            $iweight = 0;
            for ($k = 0; $k < $i; $k++) {
                $result[$keys[$i]][$iweight++] = $criteria[$keys[$k]][$i - $k];
//                echo $keys[$i] . ',' . ($iweight - 1) . ' / ' . $keys[$k] . ',' . ($i - $k) . ' = ';
//                echo $criteria[$keys[$k]][$i - $k]->point . ' / ' . $criteria[$keys[$k]][$i - $k]->weight . '<br >';
            }
//            echo 'batas <br>';
            for ($j = 0; $j < count($criteria[$keys[$i]]); $j++) {
                $result[$keys[$i]][$iweight++] = $criteria[$keys[$i]][$j];
//                echo $keys[$i] . ',' . ($iweight - 1) . ' / ' . $keys[$i] . ',' . ($j) . ' = ';
//                echo $criteria[$keys[$k]][$i - $k]->point . ' / ' . $criteria[$keys[$i]][$j]->weight . '<br >';
            }
//            echo '-- <br><br>';
        }
        return $result;
    }

    public function tableE($matrix) {
        $result = null;
        $keys = array_keys($matrix);
        foreach ($matrix as $mat => $val) {
            $iweight = 0;
            for ($k = 0; $k < count($val); $k++) {
                $result[$keys[$mat]][$iweight++] = $val[$k];
            }
        }
        $keys = array_keys($matrix);
        return $result;
        print_r($result);
    }

    static public function showtab($matrix) {
        echo '<table id = "tableABS" class="table table-striped">';
        $keys = array_keys($matrix);
        echo '<tr><td></td>';

        for ($i = 0; $i < count($matrix); $i++) {
            echo '<td>' . self::getNameCat($matrix[$i][$i]->ahp_subcriteria_1) . '</td>';
        }
        echo '</tr>';
        $l = 0;
        for ($i = 0; $i < count($matrix); $i++) {
            echo '<tr>';
            echo '<td>' . self::getNameCat($matrix[$i][$i]->ahp_subcriteria_1) . '</td>';

            for ($z = 0; $z <= $i; $z++) {
                echo '<td>';
                if ($matrix[$i][$z]->point == 1) {
                    echo $matrix[$i][$z]->weight;
                } else {
                    echo round((1 / $matrix[$i][$z]->weight), 2);
                }
                echo '</td>';
            }
            for ($j = $i + 1; $j < count($matrix[$keys[$i]]); $j++) {
                echo '<td>';
                if ($matrix[$i][$j]->point == 0) {
                    echo '<select id="a' . $l . '" a="' . $matrix[$i][$j]->ahp_subcriteria_1 . '" name="a">';
                    for ($k = 1; $k < 10; $k++) {
                        echo '<option value="' . $k . '" ';
                        if ($k == $matrix[$i][$j]->weight) {
                            echo "selected ";
                        } else {
                            ' ';
                        }
                        echo '>' . $k . '</option>';
                    }
                    echo '</select> /';
                    echo '<select id="b' . $l . '" a="' . $matrix[$i][$j]->ahp_subcriteria_2 . '" name="b" onchange="changeValueB'
                    . "('" . $matrix[$i][$j]->id_criteria . "',1,document.getElementById('b" . $l++ . "').value,'" . $matrix[$i][$j]->ahp_subcriteria_1 . "','" . $matrix[$i][$j]->ahp_subcriteria_2 . "')" . '">';
                    for ($k = 1; $k < 10; $k++) {
                        echo '<option value="' . $k . '">';
                        echo $k . '</option>';
                    }
                    echo '</select>';
                } else {
                    echo '<select id="a' . $l . '" a="' . $matrix[$i][$j]->ahp_subcriteria_1 . '" name="a">';
                    for ($k = 1; $k < 10; $k++) {
                        echo '<option value="' . $k . '">';
                        echo $k . '</option>';
                    }
                    echo '</select> / ';
                    echo '<select id="b' . $l . '" a="' . $matrix[$i][$j]->ahp_subcriteria_2 . '" name="b" onchange="changeValueB'
                    . "('" . $matrix[$i][$j]->id_criteria . "',1,document.getElementById('b" . $l++ . "').value,'" . $matrix[$i][$j]->ahp_subcriteria_1 . "','" . $matrix[$i][$j]->ahp_subcriteria_2 . "')" . '">';

                    for ($k = 1; $k < 10; $k++) {
                        echo '<option value="' . $k . '" ';
                        if ($k == $matrix[$i][$j]->weight) {
                            echo "selected ";
                        } else {
                            ' ';
                        }
                        echo '>' . $k . '</option>';
                    }
                    echo '</select>';
                }
            }
            echo '</tr>';
        }
        echo '</table>';
    }

    public function edit($id) {
        //
        $data = ahp_subcriteriaModel::find($id);
        return view('admin/ahp/subcriteria/edit')->with('data', $data);
    }

    public function update($id) {
        //
        $rules = array(
            'id_sub' => 'required',
            'sub' => 'required',
            'id_criteria' => 'required'
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return 'masih salah';
        } else {
            $evidence = new ahp_subcriteriaModel();
            $evidence->id_sub = Input::get('id_sub');
            $evidence->sub = Input::get('sub');
            $evidence->id_criteria = Input::get('id_criteria');
            $evidence->save();

            return \Redirect::to('admin/ahp/subcriteria/');
        }
    }

    public function destroy($id) {
        $data = ahp_subcriteriaModel::find($id);
        $data->delete();

        return \Redirect::to('admin/ahp/subcriteria/');
    }

}
