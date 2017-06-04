<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class System extends Model
{

    public function classes() {
    	return $this->hasMany('App\Class');
    }

    public function attributes() {
    	return $this->hasMany('App\Attribute');
    }

    public function nb_conditional_probabilities() {
    	return $this->hasMany('App\NbConditionalProbability');
    }

    public function categorical_datasets() {
    	return $this->hasMany('App\CategoricalDataset');
    }
    
}
