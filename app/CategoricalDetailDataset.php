<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoricalDetailDataset extends Model
{

	public function categorical_dataset() {
		return $this->belongsTo('App\CategoricalDataset');
	}

	public function data_class() {
		return $this->belongsTo('App\DataClass');
	}

	public function attribute() {
		return $this->belongsTo('App\Attribute');
	}
}
