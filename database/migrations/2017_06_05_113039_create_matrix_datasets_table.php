<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMatrixDatasetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('matrix_datasets', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('dataset_id')->unsigned();
            $table->integer('data_class_id')->unsigned()->nullable();
            $table->integer('attribute_id')->unsigned();
            $table->text('value')->nullable();
            $table->text('free')->nullable();
            $table->timestamps();
        });

        Schema::table('matrix_datasets', function($table){
            $table->foreign('dataset_id')->references('id')->on('datasets')->onDelete('cascade');
            $table->foreign('attribute_id')->references('id')->on('attributes')->onDelete('cascade');
            $table->foreign('data_class_id')->references('id')->on('data_classes')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('matrix_datasets');
    }
}
