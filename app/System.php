<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class System extends Model
{

    public function data_classes() {
    	return $this->hasMany('App\DataClass');
    }

    public function attributes() {
    	return $this->hasMany('App\Attribute');
    }

    public function nb_conditional_probabilities() {
    	return $this->hasMany('App\NbConditionalProbability');
    }

    public function datasets() {
    	return $this->hasMany('App\Dataset');
    }
    
}
