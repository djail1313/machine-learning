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

    public function matrix_datasets() {
    	return $this->hasMany('App\MatrixDataset');
    }

	public function data_classes() {
    	return $this->belongsToMany('App\DataClass', 'matrix_datasets', 'attribute_id', 'data_class_id');
    }

    public function datasets() {
    	return $this->belongsToMany('App\Dataset', 'matrix_datasets', 'attribute_id', 'dataset_id');
    }

}
