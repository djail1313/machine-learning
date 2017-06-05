<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dataset extends Model
{
    
	public function system() {
		return $this->belongsTo('App\System');
	}

	public function data_class() {
		return $this->belongsTo('App\DataClass');
	}

    public function matrix_datasets() {
    	return $this->hasMany('App\MatrixDataset');
    }

	public function attributes() {
    	return $this->belongsToMany('App\Attribute', 'matrix_datasets', 'dataset_id', 'attribute_id');
    }
    
}
