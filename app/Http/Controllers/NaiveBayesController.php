<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NaiveBayesController extends Controller
{
    public function conditionalProbability(){
    	$nb_conditional_probabilities = \App\NbConditionalProbability::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('data_class_id', 'asc')->get();
    	
    	return view('naive-bayes.index', compact('nb_conditional_probabilities'));
    }

    public function train(Request $request){
    	// DB::table('users')->truncate();
    	\App\NbConditionalProbability::truncate();

    	// Using Bernouli
    	$data_classes = \App\DataClass::where('system_id', \Session::get('SYSTEM_ID'))->get();
    	$attributes = \App\Attribute::where('system_id', \Session::get('SYSTEM_ID'))->get();
    	$datasets = \App\Dataset::where('system_id', \Session::get('SYSTEM_ID'))->get();

    	// NC = Jumlah class
    	$NC = $data_classes->count();
    	$p = 1/$NC;

    	// N = Jumlah keseluruhan Dataset
    	$N = $datasets->count();

    	// M = Jumlah keseluruhan atribut
    	$M = $attributes->count();
    	$Mp = $M * $p;

    	foreach ($data_classes as $data_class) {
    		// ni = Jumlah class i pada datasets
    		$n = $data_class->datasets->count();

    		// P(Hi) = ni/N = peluang setiap class i pada dataset
    		$PH = $n/$N;

    		$Mn = $M+$n;

    		foreach ($attributes as $attribute) {
    			$nb_conditional_probability = new \App\NbConditionalProbability;
    			$nb_conditional_probability->system_id = \Session::get('SYSTEM_ID');
    			$nb_conditional_probability->data_class_id = $data_class->id;
    			$nb_conditional_probability->attribute_id = $attribute->id;

    			// data atribut j yang muncul pada class i dalam dataset
    			$matrix_datasetsNc = \App\MatrixDataset::where('data_class_id', $data_class->id)
    													->where('attribute_id', $attribute->id)
    													->get();

    			// ncji = jumlah atribut j yang muncul pada class i dalam dataset
    			$nc = $matrix_datasetsNc->count();
    			
    			// P(Ej|Hi) = CONDITIONAL PROBABILITY
    			
    			// tanpa Smoothing = P(Ej|Hi) = ncji/n
    			// $PEH = $nc/$n;

    			// menggunakan m-estimate smoothing = P(Ej|Hi) = (ncji + (M*PriorEstimate)) / (ni + M) 
    			$PEH = ($nc+$Mp)/$Mn;

    			// menggunakan laplacian smoothing = P(Ej|Hi) = (ncji + 1) / (ni + NC)
    			// $PEH = ($nc+1)/($n+$NC);

    			$nb_conditional_probability->value = $PEH;
    			$nb_conditional_probability->save();
    		}

    	}

    	return redirect('naive-bayes')->with('status', 'Train data berhasil');

    }

    public function index(){
        $attributes = \App\Attribute::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('description', 'asc')->get();

        return view('naive-bayes.index', compact('attributes'));
    }

    public function calculate(Request $request){

    }
}
