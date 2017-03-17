<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHipotesisModelsTable extends Migration {

	public function up()
	{
		Schema::create('hipotesis_models', function(Blueprint $table)
		{
			$table->increments('id');
                        $table->string('id_component',5);
                        $table->string('name_component',50);
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('hipotesis_models');
	}

}
