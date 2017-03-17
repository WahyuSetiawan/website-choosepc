<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductModel extends Model {


    protected $table = 'product';
    protected $primaryKey = 'id';
    public $timestamps = false;

}
