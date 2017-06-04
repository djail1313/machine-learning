<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoricalDetailDatasetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categorical_detail_datasets', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('categorical_dataset_id')->unsigned();
            $table->integer('attribute_id')->unsigned();
            $table->text('free')->nullable();
            $table->timestamps();
        });

        Schema::table('categorical_detail_datasets', function($table){
            $table->foreign('categorical_dataset_id')->references('id')->on('categorical_datasets')->onDelete('cascade');
            $table->foreign('attribute_id')->references('id')->on('attributes')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categorical_detail_datasets');
    }
}
