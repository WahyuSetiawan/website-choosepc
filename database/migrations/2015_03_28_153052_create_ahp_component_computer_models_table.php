<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAhpComponentComputerModelsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('ahp_component_computer', function(Blueprint $table)
		{
			$table->increments('id');
                        $table->string('id_component', 5);
                        $table->string('name_component', 50);
                        $table->primary('id_component');
			//$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('ahp_component_computer_models');
	}

}
