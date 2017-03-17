<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ahp_componentModel extends Model {

	//
        protected $table = 'ahp_component';
        public $timestamps = false;
    public function criteria(){
        return $this->belongsTo('App\ahp_criteriaModel');
    }
}
