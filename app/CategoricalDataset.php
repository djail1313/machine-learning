<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoricalDataset extends Model
{

	public function system() {
		return $this->belongsTo('App\System');
	}

	public function class() {
		return $this->belongsTo('App\Class');
	}

    public function categorical_detail_datasets() {
    	return $this->hasMany('App\CategoricalDetailDataset');
    }

	public function attributes() {
    	return $this->belongsToMany('App\Attribute', 'categorical_detail_datasets', 'categorical_dataset_id', 'attribute_id');
    }
	
}
