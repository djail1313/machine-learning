<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Attribute extends Model
{

	public function system() {
		return $this->belongsTo('App\System');
	}

    public function nb_conditional_probabilities() {
    	return $this->hasMany('App\NbConditionalProbability');
    }	

    public function categorical_detail_datasets() {
    	return $this->hasMany('App\CategoricalDetailDataset');
    }

	public function classes() {
    	return $this->belongsToMany('App\Class', 'categorical_detail_datasets', 'attribute_id', 'class_id');
    }

    public function categorical_datasets() {
    	return $this->belongsToMany('App\CategoricalDataset', 'categorical_detail_datasets', 'attribute_id', 'categorical_dataset_id');
    }

}
