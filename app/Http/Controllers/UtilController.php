<?php

namespace App\Http\Controllers;

use App\ahp_component_computerModel;
use App\ahp_criteriaModel;
use App\ahp_subcriteriaModel;
use App\aphCriteriaWeightModel;
use App\ahp_subcriteria_weightModel;
use App\HipotesisModel;
use App\Http\Controllers\Controller;

class UtilController extends Controller {

    static private $min;
    static private $max;
    static private $skala;
    static private $distance;

    function __construct() {
        
    }

    static function setSkala($min, $max) {
        self::$min = $min;
        self::$max = $max;
        self::$skala = ($max - $min) / 9;
    }

    static function getSkala($current, $target) {

        if ($current > $target) {
            return 1 / ceil((($current - $target) / self::$skala));
        } else if ($current < $target) {
            return ceil((($target - $current) / self::$skala));
        } else {
            return 1;
        }
    }

    public function max($b) {
        $max_value = 0;
        $a = array_keys($b);
        for ($i = 0; $i < count($b) - 1; $i++) {
            if ($b[$a[$i]] > $b[$a[$i + 1]]) {
                $max_value = $b[$a[$i]];
            } else {
                $max_value = $b[$a[$i + 1]];
            }
        }
        return $max_value;
    }

    public function min($b) {
        $min;
        $a = array_keys($b);
        for ($i = 0; $i < count($b) - 1; $i++) {
            if ($b[$a[$i]] < $b[$a[$i + 1]]) {
                $min = $b[$a[$i]];
            } else {
                $min = $b[$a[$i + 1]];
            }
        }
        return $min;
    }

    function setMin($min) {
        $this->min = $min;
    }

    function setMax($max) {
        $this->max = $max;
    }

    public function convertPairwiseSkala($data) {
        $result;
        $a = array_keys($data);
        $distance = $this->max($data) - $this->min($data);
        $this->setSkala($this->min($data), $this->max($data));

        for ($i = 0; $i < count($a); $i++) {
            $keys = $a[$i];
            $current = $data[$keys];
            //$result[$keys][0] = 1;
            $ab = $this->max($data);
            for ($j = 0; $j < count($data); $j++) {
                $key = array_keys($data)[$j];
                $result[$keys][$j] = self::getSkala($data[$keys], $data[$key]);
            }
            unset($data[$keys]);
        }
        return $result;
    }

    public static function arrayCriteria($idB, $id) {
        $categori = array();
        $ahp = ahp_criteriaModel::where('id_component', '=', $id)->get();

        for ($i = 0; $i < count($ahp); $i++) {
            $subCriteria = aphCriteriaWeightModel::where('id_hipotesis', '=', $idB)
                    ->where('id_component', '=', $ahp[$i]->id_component)
                    ->where('id_criteria_1', '=', $ahp[$i]->id_criteria)
                    ->get();
            for ($j = 0; $j < count($subCriteria); $j++) {
                $k = count($ahp) - count(aphCriteriaWeightModel::where('id_hipotesis', '=', $idB)
                                        ->where('id_component', '=', $ahp[$i]->id_component)
                                        ->where('id_component', '=', $ahp[$i]->id_component)
                                        ->where('id_criteria_1', '=', $ahp[$i]->id_criteria)
                                        ->get());
                $categori[$ahp[$i]->id_criteria][$ahp[$j + $i]->id_criteria][0] = (int) aphCriteriaWeightModel::where('id_hipotesis', '=', $idB)
                                ->where('id_component', '=', $ahp[$i]->id_component)
                                ->where('id_criteria_1', '=', $ahp[$i]->id_criteria)
                                ->where('id_criteria_2', '=', $ahp[$j + $k]->id_criteria)
                                ->first()
                        ->point;
                $categori[$ahp[$i]->id_criteria][$ahp[$j + $i]->id_criteria][1] = aphCriteriaWeightModel::where('id_hipotesis', '=', $idB)
                                ->where('id_component', '=', $ahp[$i]->id_component)
                                ->where('id_criteria_1', '=', $ahp[$i]->id_criteria)
                                ->where('id_criteria_2', '=', $ahp[$j + $k]->id_criteria)
                                ->first()
                        ->weight;
            }
        }
        return $categori;
    }

    public static function arraySubCriteria($idB, $id) {
        $sub = array();
        $ahp = ahp_subcriteriaModel::where('id_criteria', '=', $id)->get();

        for ($i = 0; $i < count($ahp); $i++) {
            for ($j = 0; $j < count(\App\ahp_subcriteria_weightModel::where('id_hipotesis', '=', $idB)
                                    ->where('id_criteria', '=', $ahp[$i]->id_criteria)
                                    ->where('ahp_subcriteria_1', '=', $ahp[$i]->id_sub)
                                    ->get()); $j++) {
                $k = count($ahp) - count(\App\ahp_subcriteria_weightModel::where('id_hipotesis', '=', $idB)
                                        ->where('id_criteria', '=', $ahp[$i]->id_criteria)
                                        ->where('ahp_subcriteria_1', '=', $ahp[$i]->id_sub)
                                        ->get());
                $sub[$ahp[$i]->id_sub][$ahp[$j + $i]->id_sub][0] = (int) \App\ahp_subcriteria_weightModel::where('id_hipotesis', '=', $idB)
                                ->where('id_criteria', '=', $ahp[$i]->id_criteria)
                                ->where('ahp_subcriteria_1', '=', $ahp[$i]->id_sub)
                                ->where('ahp_subcriteria_2', '=', $ahp[$j + $k]->id_sub)->first()->point;
                $sub[$ahp[$i]->id_sub][$ahp[$j + $i]->id_sub][1] = \App\ahp_subcriteria_weightModel::where('id_hipotesis', '=', $idB)
                                ->where('id_criteria', '=', $ahp[$i]->id_criteria)
                                ->where('ahp_subcriteria_1', '=', $ahp[$i]->id_sub)
                                ->where('ahp_subcriteria_2', '=', $ahp[$j + $k]->id_sub)->first()->weight;
            }
        }
        //print_r($sub);
        return $sub;
    }

    /*
     * auto Rule Schema
     */

    public function autoSchema() {
        $hipo = HipotesisModel::all();
        $component = ahp_component_computerModel::all();
        foreach ($hipo as $h) {
            foreach ($component as $co) {
                try {
                    \DB::table('ahp_bayes_schema')->insert(['id_hipotensis' => $h->id, 'id_component' => $co->id]);
                } catch (\Exception $e) {
                    echo $h->id . ' ' . $co->id . '<br />';
                }
            }
        }
    }

    /*
     * auto Rule Criteria Weight
     */

    public function autoCriteriaWeight() {
        $hipo = HipotesisModel::all();
        $component = ahp_component_computerModel::all();
        foreach ($hipo as $h) {
            foreach ($component as $c) {
                $i = 0;
                $criteria = \DB::table('ahp_criteria')->where('id_component', '=', $c->id)->get();
                foreach ($criteria as $c1) {
                    foreach (array_slice($criteria, $i) as $c2) {
                        try {
                            \DB::table('ahp_criteria_weight')
                                    ->insert(['id_hipotesis' => $h->id, 'id_component' => $c->id,
                                        'id_criteria_1' => $c1->id_criteria, 'id_criteria_2' => $c2->id_criteria]);
                        } catch (\Exception $e) {
                            echo $h->id . ' ' . $c->id . ' ' . $c1->id_criteria . ' ' . $c2->id_criteria . '<br />';
                        }
                    }
                    $i++;
                }
            }
        }
    }

    /*
     * auto Rule Sub Criteria Weight
     */

    public function autoSubCriteriaWeight() {
        $hipotesis = HipotesisModel::all();
        $criteria = ahp_criteriaModel::all();

        foreach ($hipotesis as $h) {

            foreach ($criteria as $c) {
                $i = 0;
                $subcriteria = \DB::table('ahp_subcriteria')->where('id_criteria', $c->id_criteria)->get();
                foreach ($subcriteria as $s1) {
                    foreach (array_slice($subcriteria, $i) as $s2) {

                        try {
                            \DB::table('ahp_subcriteria_weight')->insert(['id_hipotesis' => $h->id, 'id_criteria' => $c->id_criteria,
                                'ahp_subcriteria_1' => $s1->id_sub, 'ahp_subcriteria_2' => $s2->id_sub]);
                        } catch (\Exception $e) {
                            echo $h->id . ' ' . $c->id_criteria . ' ' . $s1->id_sub . ' ' . $s2->id_sub . '<br />';
                        }
                    }
                    $i++;
                }
            }
        }
    }

    /*
     * auto get Table Criteria
     */

    public function getTableCrit($idB, $id) {
        $sub = $this->arrayCrit($idB, $id);
        $table = $this->table($sub);
        $this->showtabCrit($idB, $table);
    }

    public function getTableSubCrit($idB, $id) {
        $sub = $this->arraySubCrit($idB, $id);
        $table = $this->table($sub);
        $this->showtabSubCrit($idB, $table);
    }

    static public function getNameCrit($id) {
        $name = \DB::table('ahp_criteria')->where('id_criteria', $id)->first();
//        var_dump($name);
        return $name->nama_criteria;
    }

    static public function getNameSubCrit($id) {
        $name = \DB::table('ahp_subcriteria')->where('id_sub', $id)->first();
        return $name->sub;
    }

    /*
     * create array pairwise criteria
     */

    public function arrayCrit($idB, $id) {
        $categori = array();
        $ahp = \DB::table('ahp_criteria')->join('ahp_component_computer', 'ahp_criteria.id_component', '=', 'ahp_component_computer.id')->where('id_component', '=', $id)->get();
        for ($i = 0; $i < count($ahp); $i++) {
            for ($j = 0; $j < count(aphCriteriaWeightModel::where('id_hipotesis', '=', $idB)->where('id_component', '=', $ahp[$i]->id_component)->where('id_criteria_1', '=', $ahp[$i]->id_criteria)->get()); $j++) {
                $k = count($ahp) - count(aphCriteriaWeightModel::where('id_hipotesis', '=', $idB)->where('id_component', '=', $ahp[$i]->id_component)->where('id_criteria_1', '=', $ahp[$i]->id_criteria)->get());
                $categori[$i][$j] = aphCriteriaWeightModel::where('id_hipotesis', '=', $idB)->where('id_component', '=', $ahp[$i]->id_component)->where('id_criteria_1', '=', $ahp[$i]->id_criteria)->where('id_criteria_2', '=', $ahp[$j + $k]->id_criteria)->first();
            }
        }
        return $categori;
    }

    /*
     * create array pairwise Subcriteria
     */

    public function arraySubCrit($idB, $id) {
        $categori = array();
        $ahp = \DB::table('ahp_subcriteria')->join('ahp_criteria', 'ahp_criteria.id_criteria', '=', 'ahp_subcriteria.id_criteria')->where('ahp_subcriteria.id_criteria', '=', $id)->get();
        for ($i = 0; $i < count($ahp); $i++) {
            for ($j = 0; $j < count(ahp_subcriteria_weightModel::where('id_hipotesis', '=', $idB)->where('id_criteria', '=', $ahp[$i]->id_criteria)->where('ahp_subcriteria_1', '=', $ahp[$i]->id_sub)->get()); $j++) {
                $k = count($ahp) - count(ahp_subcriteria_weightModel::where('id_hipotesis', '=', $idB)->where('id_criteria', '=', $ahp[$i]->id_criteria)->where('ahp_subcriteria_1', '=', $ahp[$i]->id_sub)->get());
                $categori[$i][$j] = ahp_subcriteria_weightModel::where('id_hipotesis', '=', $idB)->where('id_criteria', '=', $ahp[$i]->id_criteria)->where('ahp_subcriteria_1', '=', $ahp[$i]->id_sub)->where('ahp_subcriteria_2', '=', $ahp[$j + $k]->id_sub)->first();
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
            }
            for ($j = 0; $j < count($criteria[$keys[$i]]); $j++) {
                $result[$keys[$i]][$iweight++] = $criteria[$keys[$i]][$j];
            }
        }
        return $result;
    }

    static public function showtabCrit($idB, $matrix) {
        ?>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <label class="panel-title">Criteria Pairwise</label>
            </div>
            <div class="table">

                <table id = "tableABS" class="table table-striped">
                    <?php $keys = array_keys($matrix); ?>
                    <tr>
                        <td></td>
                        <?php for ($i = 0; $i < count($matrix); $i++) { ?>
                            <td> <?php echo self::getNameCrit($matrix[$i][$i]->id_criteria_1) ?></td>
                        <?php } ?>
                    </tr>

                    <?php
                    $l = 0;
                    for ($i = 0; $i < count($matrix); $i++) {
                        ?>
                        <tr>
                            <td> 
                                <?php echo self::getNameCrit($matrix[$i][$i]->id_criteria_1) ?>
                            </td>

                            <?php
                            for ($z = 0; $z <= $i; $z++) {
                                ?>
                                <td>
                                    <?php
                                    if ($matrix[$i][$z]->point == 1) {
                                        echo $matrix[$i][$z]->weight;
                                    } else {
                                        echo round((1 / $matrix[$i][$z]->weight), 2);
                                    }
                                    ?>
                                </td>
                                <?php
                            }
                            for ($j = $i + 1; $j < count($matrix[$keys[$i]]); $j++) {
                                ?>
                                <td>
                                    <?php
                                    if ($matrix[$i][$j]->point == 0) {
                                        echo '<select id="a' . $l . '" '
                                        . 'a="' . $matrix[$i][$j]->id_criteria_1 . '" '
                                        . 'name="a" '
                                        . 'onchange="changeValueB'
                                        . "('" . $idB . "','" . $matrix[$i][$j]->id_component . "',document.getElementById('a" . $l++ . "').value,1,'" . $matrix[$i][$j]->id_criteria_1 . "','" . $matrix[$i][$j]->id_criteria_2 . "')" . '">';
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
                                        echo '<select '
                                        . 'id="b' . $l . '" '
                                        . 'a="' . $matrix[$i][$j]->id_criteria_2 . '" '
                                        . 'name="b" '
                                        . 'onchange="changeValueB'
                                        . "('" . $idB . "','" . $matrix[$i][$j]->id_component . "',1,document.getElementById('b" . $l++ . "').value,'" . $matrix[$i][$j]->id_criteria_1 . "','" . $matrix[$i][$j]->id_criteria_2 . "')" . '">';
                                        for ($k = 1; $k < 10; $k++) {
                                            echo '<option value="' . $k . '">';
                                            echo $k . '</option>';
                                        }
                                        echo '</select>';
                                    } else {
                                        echo '<select id="a' . $l . '" '
                                        . 'a="' . $matrix[$i][$j]->id_criteria_1 . '" '
                                        . 'name="a" '
                                        . 'onchange="changeValueB'
                                        . "('" . $idB . "','" . $matrix[$i][$j]->id_component . "',document.getElementById('a" . $l++ . "').value,1,'" . $matrix[$i][$j]->id_criteria_1 . "','" . $matrix[$i][$j]->id_criteria_2 . "')" . '">';
                                        for ($k = 1; $k < 10; $k++) {
                                            echo '<option value="' . $k . '">';
                                            echo $k . '</option>';
                                        }
                                        echo '</select> / ';
                                        echo '<select id="b' . $l . '" '
                                        . 'a="' . $matrix[$i][$j]->id_criteria_2 . '" '
                                        . 'name="b" '
                                        . 'onchange="changeValueB'
                                        . "('" . $idB . "','" . $matrix[$i][$j]->id_component . "',1,document.getElementById('b" . $l++ . "').value,'" . $matrix[$i][$j]->id_criteria_1 . "','" . $matrix[$i][$j]->id_criteria_2 . "')" . '">';

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
                                ?>
                            </td>
                        </tr>
                    <?php } ?>
                </table>
            </div>
            <div class="panel-body">
                <?php
                $meta = self::arrayCriteria($idB, $matrix[0][0]->id_component);
                $ci = new AhpCompute($meta, null);


                if ($ci->getCI() < 0.1) {
                    $alert = 'alert alert-success';
                    $message = 'Pairwise diterima';
                } else {
                    $alert = 'alert alert-danger';
                    $message = 'Pairwise belum diterima';
                }
                ?>
                <div class="<?php echo $alert ?>" role="alert">
                    <strong><?php echo 'CR : ' . $ci->getCI(); ?></strong> <?php echo $message ?>
                </div>
            </div>
        </div>
        <?php
    }

    /*
     * display pairwise table for criteria
     */

    static public function showtabSubCrit($idB, $matrix) {
        $title = \DB::table('ahp_criteria')->where('id_criteria', '=', $matrix[0][0]->id_criteria)->first()->nama_criteria;
        ?>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <label class="panel-title"><?php echo $title ?></label>
            </div>
            <div class="table">
                <table id = "tableABS" class="table table-striped">
                    <?php $keys = array_keys($matrix); ?>
                    <tr>
                        <td>
                            SC
                        </td>
                        <?php
                        for ($i = 0; $i < count($matrix); $i++) {
                            echo '<td>' . self::getNameSubCrit($matrix[$i][$i]->ahp_subcriteria_1) . '</td>';
                        }
                        ?>      
                    </tr>
                    <?php
                    $l = 0;
                    for ($i = 0; $i < count($matrix); $i++) {
                        ?>
                        <tr>
                            <?php
                            echo '<td>' . self::getNameSubCrit($matrix[$i][$i]->ahp_subcriteria_1) . '</td>';

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
                                    echo '<select id="a' . $l . '" a="' . $matrix[$i][$j]->ahp_subcriteria_1 . '" name="a" onchange="changeValueB'
                                    . "('" . $idB . "','" . $matrix[$i][$j]->id_criteria . "',document.getElementById('a" . $l++ . "').value,1,'" . $matrix[$i][$j]->ahp_subcriteria_1 . "','" . $matrix[$i][$j]->ahp_subcriteria_2 . "')" . '">';
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
                                    . "('" . $idB . "','" . $matrix[$i][$j]->id_criteria . "',1,document.getElementById('b" . $l++ . "').value,'" . $matrix[$i][$j]->ahp_subcriteria_1 . "','" . $matrix[$i][$j]->ahp_subcriteria_2 . "')" . '">';
                                    for ($k = 1; $k < 10; $k++) {
                                        echo '<option value="' . $k . '">';
                                        echo $k . '</option>';
                                    }
                                    echo '</select>';
                                } else {
                                    echo '<select id="a' . $l . '" a="' . $matrix[$i][$j]->ahp_subcriteria_1 . '" name="a" onchange="changeValueB'
                                    . "('" . $idB . "','" . $matrix[$i][$j]->id_criteria . "',document.getElementById('a" . $l++ . "').value,1,'" . $matrix[$i][$j]->ahp_subcriteria_1 . "','" . $matrix[$i][$j]->ahp_subcriteria_2 . "')" . '">';
                                    for ($k = 1; $k < 10; $k++) {
                                        echo '<option value="' . $k . '">';
                                        echo $k . '</option>';
                                    }
                                    echo '</select> / ';
                                    echo '<select id="b' . $l . '" a="' . $matrix[$i][$j]->ahp_subcriteria_2 . '" name="b" onchange="changeValueB'
                                    . "('" . $idB . "','" . $matrix[$i][$j]->id_criteria . "',1,document.getElementById('b" . $l++ . "').value,'" . $matrix[$i][$j]->ahp_subcriteria_1 . "','" . $matrix[$i][$j]->ahp_subcriteria_2 . "')" . '">';

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
                            ?>
                        </tr>
                        <?php
                    }
                    ?>
                </table>
            </div>
            <div class="panel-body">
                <?php
                $meta = self::arraySubCriteria($idB, $matrix[0][0]->id_criteria);
                $ci = new AhpCompute($meta, null);


                if ($ci->getCI() < 0.1) {
                    $alert = 'alert alert-success';
                    $message = 'Pairwise diterima';
                } else {
                    $alert = 'alert alert-danger';
                    $message = 'Pairwise belum diterima';
                }
                ?>
                <div class="<?php echo $alert ?>" role="alert">
                    <strong><?php echo 'CR : ' . $ci->getCI() ?></strong> <?php echo $message ?>
                </div>
            </div>
        </div>

        <?php
    }

    static public function GenerateGlobal($bayes) {
        $bay = \App\ahp_bayes_schemaModel::where('id_hipotensis', '=', $bayes->getIDMax())->get();

        $i_component = 0;
        foreach ($bay as $b) {
            $component = UtilController::arrayCriteria($bayes->getIDMax(), $b->id_component);
            $ahpcom = new AhpCompute($component);
            $egC = $ahpcom->getIterasi();
            $comp = \DB::table('ahp_criteria')->where('id_component', '=', $bay[$i_component++]->id_component)->get();
            $j = 0;
            foreach ($comp as $com) {
                $sub = \App\ahp_subcriteriaModel::where('id_criteria', $com->id_criteria)->get();
                $criteria = UtilController::arraySubCriteria($bayes->getIDMax(), $com->id_criteria);
                $ahpcrit = new AhpCompute($criteria);
                $egS = $ahpcrit->getIterasi();
                $i = 0;
                foreach ($sub as $s) {
                    $global_variable[$s->id_sub] = (($egC[$j]) * ($egS[$i++])) * 100;
                }
                $j++;
            }
        }

        return $global_variable;
    }

    static public function getMax($b) {
        return array_search(max($b), $b);
    }

    static public function convertHeader($before) {
        $names = array_keys($before);
        $i = 0;
        foreach ($before as $do) {
            $name = \DB::table('hipotesis')->where('id', '=', $names[$i])->first()->name;
            $after[$name] = $do;
            $i++;
        }
        return $after;
    }

}
