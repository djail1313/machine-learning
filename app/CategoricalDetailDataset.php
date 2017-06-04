<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoricalDetailDataset extends Model
{

	public function categorical_dataset() {
		return $this->belongsTo('App\CategoricalDataset');
	}

	public function class() {
		return $this->belongsTo('App\Class');
	}

	public function attribute() {
		return $this->belongsTo('App\Attribute');
	}
}
