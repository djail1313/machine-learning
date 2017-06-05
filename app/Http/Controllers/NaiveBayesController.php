<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NaiveBayesController extends Controller
{
    public function conditionalProbability(){
    	$nb_conditional_probabilities = \App\NbConditionalProbability::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('id', 'asc')->get();
    	$attributes = \App\Attribute::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('id', 'asc')->get();
        $data_classes = \App\DataClass::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('id', 'asc')->get();

    	return view('naive-bayes.index', compact('nb_conditional_probabilities', 'attributes', 'data_classes'));
    }

    public function train(Request $request){
    	// DB::table('users')->truncate();
    	\App\NbConditionalProbability::truncate();

    	// Using Bernouli
    	$data_classes = \App\DataClass::where('system_id', \Session::get('SYSTEM_ID'))->get();
    	$matrix_datasets = \App\MatrixDataset::where('system_id', \Session::get('SYSTEM_ID'))->get();
    	foreach ($data_classes as $data_class) {
    		// Peluang class tertentu pada dataset
    		$Pj = 
    	}

    }

    public function calculate(Request $request){

    }
}
