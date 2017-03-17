<?php

/*
  |--------------------------------------------------------------------------
  | Application Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register all of the routes for an application.
  | It's a breeze. Simply tell Laravel the URIs it should respond to
  | and give it the controller to call when that URI is requested.
  |
 */


/*
 * client
 */

Route::get('/', 'WelcomeController@index');

Route::get('build/', function () {
    return view('client/builder/build');
});

Route::get('assembly/',function (){
   return view('client/assembly/assembly'); 
});

Route::get('about/',function (){
   return view('client/about/about'); 
});


Route::get('/showProduct/{comp}/{id}','BuildController@showProduct');
Route::get('/showPsu/{id}','BuildController@showPsu');
Route::controllers(['login' => 'LoginController']);

Route::get('/question', 'BuildController@build');
Route::post('/bayes', 'BuildController@teoremaBayes');
Route::get('/result', 'BuildController@result');


//Reoute admin
//Route::resource('admin/evidance','EvidenceController');

/*
 * route untuk evidence
 */
$admin = 'admin';

$uri = $admin . '/evid/';
$action = 'EvidenceController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'create', $action . 'create');
Route::post($uri . 'create', $action . 'store');
Route::get($uri . 'destroy/{id}', $action . 'destroy');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');

/*
 * route untuk pengaturan hipotensis
 */
$uri = $admin . '/hipo/';
$action = 'HipotesisController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'create', $action . 'create');
Route::post($uri . 'create', $action . 'store');
Route::get($uri . 'destroy/{id}', $action . 'destroy');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');

/*
 * ROUTE UNTUK PENGATURAN RULE BAYES
 */
$uri = $admin . '/rule/';
$action = 'RuleBayesController@';

Route::get($uri, $action . 'index');
Route::post($uri . "create", $action . "create");
Route::get($uri . "create", $action . "create");
Route::get($uri . "destroy/{id}", $action . "destroy");
Route::get($uri . "edit/{id}", $action . "edit");
Route::post($uri . "update/{id}", $action . "update");

/*
 * ROUTE ALOCATION
 */

$uri = $admin . '/allocation/';
$action = 'AllocationController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::get($uri . 'add/{id}', $action . 'create');
Route::post($uri . 'store', $action . 'store');
Route::post($uri . 'edit/{id}', $action . 'update');
Route::post($uri . 'edit/{id}', $action . 'update');
Route::post($uri . 'ajaxUpdate', $action . 'ajaxUpdate');
/*
 * route componet computer
 */

$uri = $admin . '/ahp/comcom/';
$action = 'ComponentComputerController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'create', $action . 'create');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');
Route::get($uri . 'destroy/{id}', $action . 'destroy');

/*
 * route ahp bayes schema
 */
$uri = $admin . '/ahp/';
$action = 'SchemaBayesAhpController@';

Route::get($uri . 'schema', $action . 'index');
Route::get($uri . 'schema/create', $action . 'create');
Route::get($uri . 'schema/show/{id}', $action . 'show');
Route::get($uri . 'schema/showCat/{id}', $action . 'showCat');
Route::post($uri . 'schema/parStore/', $action . 'parStore');

/*
 * route ahp criteria schema
 */
$uri = $admin . '/ahp/criteria/';
$action = 'CriteriaController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'create', $action . 'create');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'show/{id}', $action . 'show');
Route::get($uri . 'showCrt/{id}', $action . 'showCrt');
Route::get($uri . 'showCom/{id}', $action . 'showCom');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');
Route::get($uri . 'destroy/{id}', $action . 'destroy');

/*
 * route ahp criteria schema
 */
$uri = $admin . '/ahp/criteriaWeight/';
$action = 'CriteriaWeightController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'create', $action . 'create');
Route::post($uri . 'create', $action . 'store');
Route::get($uri . 'showPair/{idB}/{id}', $action . 'showPair');
Route::get($uri . 'getCrit/{id}', $action . 'getCrit');
Route::get($uri . 'showCom/{id}', $action . 'showCom');
Route::post($uri . 'parStore/', $action . 'parStore');

/*
 * route subcriteria
 */

$uri = $admin . '/ahp/subcriteria/';
$action = 'SubCriteriaController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'create', $action . 'create');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'parStore', $action . 'parStore');
Route::get($uri . 'showCom/{id}', $action . 'showCom');
Route::get($uri . 'showSubcriteria/{id}', $action . 'showSubcriteria');
Route::get($uri . 'showCrit/{id}', $action . 'showCrt');
Route::get($uri . 'getTable/{id}', $action . 'getTable');
Route::get($uri . 'autoRule/{id}', $action . 'autoRule');

/*
 * route ahp subcriteria schema
 */
$uri = $admin . '/ahp/subcriteriaWeight/';
$action = 'SubCriteriaWeightController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'create', $action . 'create');
Route::post($uri . 'create', $action . 'store');
Route::get($uri . 'showPair/{idB}/{id}', $action . 'showPair');
Route::get($uri . 'getCrit/{id}', $action . 'getCrit');
Route::get($uri . 'getSubCrit/{id}', $action . 'getSubCrit');
Route::get($uri . 'showCom/{id}', $action . 'showCom');
Route::post($uri . 'parStore/', $action . 'parStore');

/*
 * route auto
 */

$uri = $admin . '/ahp/auto/';
$action = 'UtilController@';

Route::get($uri . 'autoSchema', $action . 'autoSchema');
Route::get($uri . 'autoCriteria', $action . 'autoCriteriaWeight');
Route::get($uri . 'autoSubCriteria', $action . 'autoSubCriteriaWeight');

$uri = $admin . '/';
$action = 'AdminController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'autoCriteria', $action . 'autoCriteriaWeight');
Route::get($uri . 'autoSubCriteria', $action . 'autoSubCriteriaWeight');
Route::get($uri . 'getComponent', $action . 'getComponent');
Route::get($uri . 'logout', $action . 'getLogout');
Route::get($uri . 'showtable', $action . 'showTable');
Route::get($uri . 'management', $action . 'adminmanagement');
Route::get($uri . 'adminadd', $action . 'adminadd');
Route::post($uri . 'adminstore', $action . 'adminstore');
Route::get($uri . 'adminedit/{id}', $action . 'adminedit');
Route::post($uri . 'adminupdate/{id}', $action . 'adminUpdate');
Route::get($uri . 'admindestroy/{id}', $action . 'adminDestroy');

$uri = $admin . '/description/';
$action = 'DescriptionController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'add/{id}', $action . 'create');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'destroy/{id}', $action . 'destroy');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');
Route::get($uri . 'show/{id}', $action . 'show');

$uri = $admin . '/product/';
$action = 'produkController@';

Route::get($uri . '{id}', $action . 'index');
Route::get($uri . '{id}/add', $action . 'create');
Route::post($uri . 'store/{id}', $action . 'store');
Route::get($uri . 'destroy/{id}', $action . 'destroy');
Route::get($uri . '{comp}/{id}/edit', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');
Route::get($uri . '{comp}/{id}/show', $action . 'show');

$uri = $admin . '/buildController/';
$action = 'BuildControllerController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'add', $action . 'create');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'showTable', $action . 'showTable');
Route::post($uri . 'changeNo', $action . 'changeNo');
Route::get($uri . 'destroy/{id}', $action . 'destroy');

$uri = $admin . '/buildDepend/';
$action = 'BuildDependController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'add', $action . 'create');
Route::get($uri . 'getcriteria/{component}', $action . 'getcriteria');
Route::get($uri . 'rule', $action . 'rule');
Route::get($uri . 'component', $action . 'component');
Route::get($uri . 'criteriacomponent', $action . 'criteriacomponent');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'showTable', $action . 'showTable');
Route::post($uri . 'changeNo', $action . 'changeNo');
Route::get($uri . 'destroy/{id}', $action . 'destroy');

$uri = $admin . '/depend/';
$action = 'DependController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'add', $action . 'create');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');
Route::get($uri . 'rule', $action . 'rule');
Route::get($uri . 'component', $action . 'component');
Route::get($uri . 'criteriacomponent', $action . 'criteriacomponent');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'showTable', $action . 'showTable');
Route::post($uri . 'changeNo', $action . 'changeNo');
Route::get($uri . 'destroy/{id}', $action . 'destroy');

$uri = $admin . '/valuedepend/';
$action = 'DependValueController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'add', $action . 'create');
Route::get($uri . 'getcriteria/{component}', $action . 'getcriteria');
Route::get($uri . 'rule', $action . 'rule');
Route::get($uri . 'component', $action . 'component');
Route::get($uri . 'criteriacomponent', $action . 'criteriacomponent');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'showTable/{id}', $action . 'showTable');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');
Route::post($uri . 'changeNo', $action . 'changeNo');
Route::get($uri . 'destroy/{id}', $action . 'destroy');


/*

  product management url

 */
$uri = $admin . '/motherboard/';
$action = 'MotherboardController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'add', $action . 'create');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'destroy/{id}', $action . 'destroy');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');
Route::get($uri . 'show/{id}', $action . 'show');

$uri = $admin . '/ram/';
$action = 'RamController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'add', $action . 'create');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'destroy/{id}', $action . 'destroy');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');
Route::get($uri . 'show/{id}', $action . 'show');

$uri = $admin . '/harddisk/';
$action = 'HarddiskController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'add', $action . 'create');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'destroy/{id}', $action . 'destroy');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');
Route::get($uri . 'show/{id}', $action . 'show');

$uri = $admin . '/vga/';
$action = 'VgaController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'add', $action . 'create');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'destroy/{id}', $action . 'destroy');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');
Route::get($uri . 'show/{id}', $action . 'show');

$uri = $admin . '/powersupply/';
$action = 'PowerSupplyController@';

Route::get($uri, $action . 'index');
Route::get($uri . 'add', $action . 'create');
Route::post($uri . 'store', $action . 'store');
Route::get($uri . 'destroy/{id}', $action . 'destroy');
Route::get($uri . 'edit/{id}', $action . 'edit');
Route::post($uri . 'update/{id}', $action . 'update');
Route::get($uri . 'show/{id}', $action . 'show');
