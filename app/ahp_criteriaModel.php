<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ahp_criteriaModel extends Model {

	//
        protected $table = "ahp_criteria";
        public $timestamps = false;

    public function component(){
       return $this->belongsTo('App\ahp_componentModel');
    }

}
