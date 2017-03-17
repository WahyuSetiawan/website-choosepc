<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ahp_subcriteriaModel extends Model {

	//
    protected $table = 'ahp_subcriteria';
    public $timestamps = false;

    public function categori(){
        $this->hasOne('App\ahp_categoriModel','id_categori','id_categori');
    }
}
