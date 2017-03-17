<?php

namespace App\Http\Controllers;

class bayesCompute {

    private $idHipotesis;
    private $true;
    private $trueProbabilitas;
    private $rule;
    private $hipotensis;
    private $universal;
    private $elementProbabilitas;

    function __construct($true, $rule, $hipotensis) {
        if ($true == null){
            $this->elementProbabilitas = $hipotensis;
            return;
        }
        $this->true = $true;
        $this->rule = $rule;
        $this->hipotensis = $hipotensis;
        $i = 0;
        foreach ($rule as $x => $x_value) {
            $this->idHipotesis[$i++] = $x;
        }
        $this->compute($true, $rule, $hipotensis);
    }

    private function compute($true, $rule, $hipotensis) {
        $this->true = $this->getCountTrue($true, $rule);
        $this->trueProbabilitas = $this->trueProba($this->true, $rule);
        $this->universal = $this->universalCompute($this->trueProbabilitas, $hipotensis);
        $this->elementProbabilitas = $this->elementProba($this->trueProbabilitas, $hipotensis, $this->universal);
        $this->getIDMax();
    }
    
    private function elementProba($trueProba, $hipotensis, $universal){
        $result;
        foreach ($trueProba as $x => $x_values){
            $result[$x] = ($hipotensis[$x] * $x_values) / $universal;
        }
        return $result;
    }
    
    private function universalCompute($trueProba, $hipotensis){
        $result = 0;
        foreach ($trueProba as $x => $x_values){
            $result = ($hipotensis[$x] * $x_values) + $result;
        }
        return $result;
    }
    
    private function trueProba($true, $rule){
        $result;
        foreach ($rule as $x => $x_values){
            if(count($x_values) != 0){
                $result[$x] = $true[$x] / count($x_values);
            } else {
                $result[$x] = 0;
            }
        }
        return $result;
    }

    private function getCountTrue($true, $rule) {
        $result;
        foreach ($rule as $x => $x_values) {
            $count = 0;
            foreach ($true as $t) {
                /* @var $x_value type */
                foreach ($x_values as $x_value) {
                    if ($t == $x_value){
                        $count++;
                    }
                }
            }
            $result[$x] = $count;
        }
        
        return $result;
    }
    
    /*
     * function getter
     */
    
    function getMaxProba(){
        return max($this->elementProbabilitas);
    }
    
    function getIdHipotesis() {
        return $this->idHipotesis;
    }

    function getTrue() {
        return $this->true;
    }

    function getTrueProbabilitas() {
        return $this->trueProbabilitas;
    }

    function getRule() {
        return $this->rule;
    }

    function getHipotensis() {
        return $this->hipotensis;
    }

    function getUniversal() {
        return $this->universal;
    }

    function getElementProbabilitas() {
        return $this->elementProbabilitas;
    }

    function getIDMax(){
        return array_search($this->getMaxProba(), $this->elementProbabilitas);
    }
}
