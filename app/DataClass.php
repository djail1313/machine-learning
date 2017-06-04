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

    public function categorical_datasets() {
    	return $this->hasMany('App\CategoricalDataset');
    }

    public function categorical_detail_datasets() {
    	return $this->hasMany('App\CategoricalDetailDataset');
    }

	public function attributes() {
    	return $this->belongsToMany('App\Attribute', 'categorical_detail_datasets', 'data_class_id', 'attribute_id');
    }
}
