<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DataClass extends Model
{

	public function system() {
		return $this->belongsTo('App\System');
	}

    public function nb_conditional_probabilities() {
    	return $this->hasMany('App\NbConditionalProbability');
    }	

    public function datasets() {
    	return $this->hasMany('App\Dataset');
    }

    public function matrix_datasets() {
    	return $this->hasMany('App\MatrixDataset');
    }

	public function attributes() {
    	return $this->belongsToMany('App\Attribute', 'matrix_datasets', 'data_class_id', 'attribute_id');
    }
}
