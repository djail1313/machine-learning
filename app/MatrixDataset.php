<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MatrixDataset extends Model
{
    
    public function dataset() {
		return $this->belongsTo('App\Dataset');
	}

	public function data_class() {
		return $this->belongsTo('App\DataClass');
	}

	public function attribute() {
		return $this->belongsTo('App\Attribute');
	}

}
