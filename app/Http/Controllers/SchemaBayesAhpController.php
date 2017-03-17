<?php

namespace App\Http\Controllers;

use App\ahp_bayes_schemaModel;
use App\ahp_component_computerModel;
use App\aphCriteriaWeightModel;
use App\ahp_componentModel;
use App\HipotesisModel;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class SchemaBayesAhpController extends Controller {

    public function index() {
        $data = \DB::table('ahp_criteria_weight')->leftJoin('ahp_component', function($join) {
                    $join->on('ahp_component.id_criteria', '=', 'ahp_criteria_weight.id_criteria_1')
                            ->on('ahp_component.id_criteria', '=', 'ahp_criteria_weight.id_criteria_2');
                })->get();

        $ahp = ahp_componentModel::where('id_component', '=', 'CM001')->get();

        for ($i = 0; $i < count($ahp); $i++) {
            for ($j = 0; $j < count(aphCriteriaWeightModel::where('id_component', '=', 'CM001')->where('id_criteria_1', '=', $ahp[$i]->id_criteria)->get()); $j++) {
                $k = count($ahp) - count(aphCriteriaWeightModel::where('id_component', '=', 'CM001')->where('id_criteria_1', '=', $ahp[$i]->id_criteria)->get());
                $criteria[$i][$j] = aphCriteriaWeightModel::where('id_component', '=', 'CM001')->where('id_criteria_1', '=', $ahp[$i]->id_criteria)->where('id_criteria_2', '=', $ahp[$j + $k]->id_criteria)->first();
            }
        }

//        echo '<pre>';
//        $criteria = $this->table($criteria);
//        print_r($criteria);
//        $this->tableE($this->table($criteria));
//        $this->showtab($this->tableE($criteria));
//        echo '<br />';
//        $this->showOri($this->tableE($criteria));
        // var_dump($data);
        return view('admin/ahpbayesschema/index')->with(["hipo" => HipotesisModel::all(), "data" => $data, "table" => $this->table($criteria)]);
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

    static public function showOri($matrix) {
        echo '<table border=1>';
        $keys = array_keys($matrix);
        echo '<tr><td></td>';

        for ($i = 0; $i < count($matrix); $i++) {
            echo '<td>' . $i . '</td>';
        }
        echo '</tr>';

        for ($i = 0; $i < count($matrix); $i++) {
            echo '<tr>';
            echo '<td>' . $i . '</td>';
//            for($x = 0; $x<  count($matrix);$x++){
            for ($z = 0; $z <= $i; $z++) {
                echo '<td>kosong</td>';
            }
//            }
            for ($j = $i + 1; $j < 4; $j++) {
                echo '<td>' . $matrix[$i][$j]->point . ' , ' . $matrix[$i][$j]->weight . '</td>';
            }
            echo '</tr>';
        }
        echo '</table>';
    }

    static public function showtab($matrix) {
        echo '<table border=1>';
        $keys = array_keys($matrix);
        echo '<tr><td></td>';

        for ($i = 0; $i < count($matrix); $i++) {
            echo '<td>' . self::getNameCat($matrix[$i][$i]->id_criteria_1) . '</td>';
        }
        echo '</tr>';
        $l = 0;
        for ($i = 0; $i < count($matrix); $i++) {
            echo '<tr>';
            echo '<td>' . self::getNameCat($matrix[$i][$i]->id_criteria_1) . '</td>';

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
                    echo '<select id="a' . $l . '" a="' . $matrix[$i][$j]->id_criteria_1 . '" name="a">';
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
                    echo '<select id="b' . $l++ . '" a="' . $matrix[$i][$j]->id_criteria_2 . '" name="b">';
                    for ($k = 1; $k < 10; $k++) {
                        echo '<option value="' . $k . '">';
                        echo $k . '</option>';
                    }
                    echo '</select>';
                } else {
                    echo '<select id="a' . $l . '" a="' . $matrix[$i][$j]->id_criteria_1 . '" name="a">';
                    for ($k = 1; $k < 10; $k++) {
                        echo '<option value="' . $k . '">';
                        echo $k . '</option>';
                    }
                    echo '</select> / ';
                    echo '<select id="b' . $l++ . '" a="' . $matrix[$i][$j]->id_criteria_2 . '" name="b">';
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

    static public function getNameCat($id) {
        $name = \DB::table('ahp_criteria')->where('id_criteria', $id)->first();
//        var_dump($name->nama_criteria);
        return $name->nama_criteria;
    }

    public function create() {
        return view('admin/ahpbayesschema/create')
                        ->with('hipos', \App\HipotesisModel::all())
                        ->with('comcoms', \App\ahp_component_computerModel::all());
    }

    public function store() {
        
    }

    public function parStore() {
        $var1 = \Input::get('var1');
        $var2 = \Input::get('var2');

        if ($var2 == 1 && $var1 != 1) {
            \DB::table('ahp_criteria_weight')->where('id_criteria_1', \Input::get('id_1'))
                    ->where('id_criteria_2', \Input::get('id_2'))->update(['weight' => $var1, 'point' => '0']);
            return $var1;
        } else {
            \DB::table('ahp_criteria_weight')->where('id_criteria_1', \Input::get('id_1'))
                    ->where('id_criteria_2', \Input::get('id_2'))->update(['weight' => $var2, 'point' => '1']);
            return $var2;
        }
        return false;
    }

    public function show($id) {
        $component = \DB::table('ahp_bayes_schema')->join('ahp_component_computer', 'ahp_bayes_schema.id_component', '=', 'ahp_component_computer.id')->where('id_hipotensis', $id)->get();

        return response()->json($component);
    }

    public function showCat($id) {
        $component = \DB::table('ahp_component')->join('ahp_criteria', 'ahp_component.id_criteria', '=', 'ahp_criteria.id_criteria')->where('id_component', $id)->get();

        return response()->json($component);
    }

    public function edit($id) {
        
    }

    public function update($id) {
        
    }

    public function destroy($id) {
        
    }

    public function getID($name) {
        return \App\HipotesisModel::where('name', '=', name)->first()->id;
    }

}
