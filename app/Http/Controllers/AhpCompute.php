<?php

namespace App\Http\Controllers;

class AhpCompute {

    private $KEY_HEADER;
    private $tableBeforeNormal;
    private $tableAfterNormal;
    private $criteria;
    private $sumRowMatrix;
    private $lamdaMax;
    private $sumColumn;
    private $eigenvektor;
    private $header;
    private $CI;
    private $RI;
    private $tableIterasi;
    private $SumRowIterasi;
    private $normalSumRowIterasi;
    private $distanceRowIterasi;
    private $sumDistanceRowIterasi;
    private $Iterasi;
    private $CR;
    private $ConsistensyRatio = array(0.00, 0.00, 0.58, 1.12, 1.24, 1.32, 1.41, 1.46, 1.49);

    function __construct($criteria) {
        $this->criteria = $criteria;
        $this->header = array_keys($criteria);
        $this->computeCI($criteria);
    }

    function computeCI($criteria) {
        $this->KEY_HEADER = array_keys($criteria);
        $this->tableBeforeNormal = $this->pairwise($criteria);
        $this->tableAfterNormal = $this->normalization($this->tableBeforeNormal);
        $this->sumRowMatrix = $this->sumRow($this->tableAfterNormal);
        $this->eigenvektor = $this->eigenvektor($this->tableAfterNormal);
        $this->sumColumn = $this->sumMatrix($this->tableBeforeNormal);
        $this->lamdaMax = $this->lamdaMax($this->eigenvektor, $this->sumColumn);
        $this->CI = $this->CI($criteria, $this->lamdaMax);
        if ($this->CI < 0.1) {
            $i = 0;
            while (true) {
                if ($i == 0) {
                    $this->tableIterasi[$i] = $this->square($this->tableAfterNormal);
                    $this->SumRowIterasi[$i] = $this->sumRow($this->tableIterasi[$i]);
                    $this->normalSumRowIterasi[$i] = $this->normalizeArray($this->SumRowIterasi[$i]);
                } else if ($i < 2) {
                    $this->tableIterasi[$i] = $this->square($this->tableIterasi[$i - 1]);
                    $this->SumRowIterasi[$i] = $this->sumRow($this->tableIterasi[$i]);
                    $this->normalSumRowIterasi[$i] = $this->normalizeArray($this->SumRowIterasi[$i]);
                } else {
                    $this->tableIterasi[$i] = $this->square($this->tableIterasi[$i - 1]);
                    $this->SumRowIterasi[$i] = $this->sumRow($this->tableIterasi[$i]);
                    $this->normalSumRowIterasi[$i] = $this->normalizeArray($this->SumRowIterasi[$i]);
                    $this->distanceRowIterasi[$i - 2] = $this->minArray($this->normalSumRowIterasi[$i - 2], $this->normalSumRowIterasi[$i]);
                    $this->sumDistanceRowIterasi[$i - 2] = $this->sumArray($this->distanceRowIterasi[$i - 2]);
                    if ($this->sumDistanceRowIterasi[$i - 2] == 0) {
                        $this->Iterasi = $this->normalSumRowIterasi[$i];
                        break;
                    }
                }
                $i++;
            }
        }
    }

    /*
     * function for compute ahp

     */

    function minArray($firstArray, $secondArray) {
        $keysa = array_keys($firstArray);
        $keysb = array_keys($secondArray);
        $result = array();

        for ($i = 0; $i < count($firstArray); $i++) {
            $result[$this->KEY_HEADER[$i]] = $firstArray[$keysa[$i]] - $secondArray[$keysb[$i]];
        }

        return $result;
    }

    function normalizeArray($array) {
        $keys = array_keys($array);
        $result = array();
        $sum = $this->sumArray($array);
        for ($i = 0; $i < count($array); $i++) {
            /*
             * devinded zero
             */

            if ($sum == 0) {
                $result[$i] = 0;
            } else {
                $result[$i] = round($array[$keys[$i]] / $sum, 3);
            }
        }
        return $result;
    }

    function CI($matrix, $lamdamax) {
        return round(($lamdamax - count($matrix)) / (count($matrix) - 1), 3);
    }

    function lamdaMax($eigenvektor, $summatrix) {
        $sum = 0;
        for ($i = 0; $i < count($eigenvektor); $i++) {
            $sum = ($eigenvektor[$this->KEY_HEADER[$i]] * $summatrix[$this->KEY_HEADER[$i]]) + $sum;
        }
        return round($sum, 3);
    }

    function sumMatrix($matrix) {
        $result = array();

        for ($i = 0; $i < count($matrix); $i++) {
            $sum = 0;
            for ($j = 0; $j < count($matrix[$this->KEY_HEADER[$i]]); $j++) {
                $sum = $matrix[$this->KEY_HEADER[$j]][$this->KEY_HEADER[$i]] + $sum;
            }
            $result[$this->KEY_HEADER[$i]] = $sum;
        }

        return $result;
    }

    function sumArray($array) {
        $sum = 0;
        for ($i = 0; $i < count($array); $i++) {
            $sum = $sum + $array[$this->KEY_HEADER[$i]];
        }
        return $sum;
    }

    function eigenvektor($matrix) {
        $result = array();
        $sumMatrix = count($matrix);

        for ($i = 0; $i < count($matrix); $i++) {
            $sum = 0;
            for ($j = 0; $j < count($matrix[$this->KEY_HEADER[$i]]); $j++) {
                $sum = $matrix[$this->KEY_HEADER[$i]][$this->KEY_HEADER[$j]] + $sum;
            }
            $result[$this->KEY_HEADER[$i]] = round($sum / $sumMatrix, 3);
        }
        return $result;
    }

    function pairwise($criteria) {
        $result = array();
        $keys = array_keys($criteria);
        for ($i = 0; $i < count($criteria); $i++) {
            $iweight = 0;
            $keys_column = array_keys($criteria[$keys[$i]]);
            for ($k = 0; $k < $i; $k++) {
                if ($criteria[$keys[$k]][$keys[$i]][0] == 0) {
                    $result[$keys[$i]][$keys[$iweight++]] = round(1 / $criteria[$keys[$k]][$keys[$i]][1], 3);
                } else {
                    $result[$keys[$i]][$keys[$iweight++]] = ($criteria[$keys[$k]][$keys[$i]][1]);
                }
            }
            for ($j = 0; $j < count($criteria[$keys[$i]]); $j++) {
                if ($criteria[$keys[$i]][$keys_column[$j]][0] == 0) {
                    $result[$keys[$i]][$keys[$iweight++]] = $criteria[$keys[$i]][$keys_column[$j]][1];
                } else {
                    $result[$keys[$i]][$keys[$iweight++]] = round(1 / $criteria[$keys[$i]][$keys_column[$j]][1], 3);
                }
            }
        }
        return $result;
    }

    function sumRow($matrix) {
        $result = array();
        for ($i = 0; $i < count($matrix); $i++) {
            $sum = 0;
            for ($j = 0; $j < count($matrix); $j++) {
                $sum = $sum + $matrix[$this->KEY_HEADER[$i]][$this->KEY_HEADER[$j]];
            }
            $result[$this->KEY_HEADER[$i]] = round($sum, 3);
        }
        return $result;
    }

    function CRcompute($CI, $RI) {
        return $CI / $RI;
    }

    function normalization($matrix) {
        $result = array();
        $sumCriteria = array();
        $keys = array_keys($matrix);

        for ($i = 0; $i < count($matrix); $i++) {
            $sum = 0;
            for ($k = 0; $k < count($matrix[$keys[$i]]); $k++) {
                $sum = $sum + $matrix[$keys[$k]][$keys[$i]];
            }
            $sumCriteria[$i] = $sum;
        }

        for ($i = 0; $i < count($matrix); $i++) {
            for ($k = 0; $k < count($matrix[$keys[$i]]); $k++) {
                $result[$keys[$k]][$keys[$i]] = round($matrix[$keys[$k]][$keys[$i]] / $sumCriteria[$i], 3);
            }
        }
        return $result;
    }

    function square($matrix) {
        $keys = array_keys($matrix);
        $result = array();
        for ($i = 0; $i < count($matrix); $i++) {
            for ($k = 0; $k < count($matrix[$keys[$i]]); $k++) {
                $sum = 0;
                for ($j = 0; $j < count($matrix[$keys[$i]]); $j++) {
                    $sum = $sum + ($matrix[$keys[$i]][$keys[$j]] * $matrix[$keys[$j]][$keys[$k]]);
                }
                $result [$this->KEY_HEADER[$i]][$this->KEY_HEADER[$k]] = round($sum, 3);
            }
        }
        return $result;
    }

    /*
     * 
     * util
     * 
     */

    function showtable($matrix) {
        echo '<table border=1>';
        $keys = array_keys($matrix);
        echo '<tr><td></td>';

        for ($i = 0; $i < count($matrix); $i++) {
            echo '<td>' . $keys[$i] . '</td>';
        }
        echo '</tr>';

        for ($i = 0; $i < count($matrix); $i++) {
            echo '<tr>';
            echo '<td>' . $keys[$i] . '</td>';
            for ($j = 0; $j < count($matrix[$keys[$i]]); $j++) {
                echo '<td>' . $matrix[$keys[$i]][$keys[$j]] . '</td>';
            }
            echo '</tr>';
        }
        echo '</table>';
    }

    function show($a) {
        echo '<pre>';
        var_dump($a);
        echo '<pre>';
    }

    /*
     * getter and setter variable
     * 
     */

    public function getTableBeforeNormal() {
        return $this->tableBeforeNormal;
    }

    public function getTableAfterNormal() {
        return $this->tableAfterNormal;
    }

    public function getCriteria() {
        return $this->criteria;
    }

    public function getSumRowMatrix() {
        return $this->sumRowMatrix;
    }

    public function getLamdaMax() {
        return $this->lamdaMax;
    }

    public function getSumColumn() {
        return $this->sumColumn;
    }

    public function getEigenvektor() {
        return $this->eigenvektor;
    }

    public function getHeader() {
        return $this->header;
    }

    public function getCI() {
        return $this->CI;
    }

    public function getRI() {
        return $this->RI;
    }

    public function getTableIterasi() {
        return $this->tableIterasi;
    }

    public function getSumRowIterasi() {
        return $this->SumRowIterasi;
    }

    public function getNormalSumRowIterasi() {
        return $this->normalSumRowIterasi;
    }

    public function getDistanceRowIterasi() {
        return $this->distanceRowIterasi;
    }

    public function getSumDistanceRowIterasi() {
        return $this->sumDistanceRowIterasi;
    }

    public function getIterasi() {
        return $this->Iterasi;
    }

    public function getCR() {
        return $this->CR;
    }

    public function getConsistensyRatio() {
        return $this->ConsistensyRatio;
    }

}
