<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNbConditionalProbabilitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nb_conditional_probabilities', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('system_id')->unsigned();
            $table->integer('data_class_id')->unsigned();
            $table->integer('attribute_id')->unsigned();
            $table->decimal('value');
            $table->text('free')->nullable();
            $table->timestamps();
        });

        Schema::table('nb_conditional_probabilities', function($table){
            $table->foreign('system_id')->references('id')->on('systems')->onDelete('cascade');
            $table->foreign('data_class_id')->references('id')->on('data_classes')->onDelete('cascade');
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
        Schema::dropIfExists('nb_conditional_probabilities');
    }
}
