<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDatasetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('datasets', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('system_id')->unsigned();
            $table->integer('data_class_id')->unsigned()->nullable();
            $table->text('free')->nullable();
            $table->timestamps();
        });

        Schema::table('datasets', function($table){
            $table->foreign('system_id')->references('id')->on('systems')->onDelete('cascade');
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
        Schema::dropIfExists('datasets');
    }
}
