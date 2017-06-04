<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NbConditionalProbability extends Model
{

	public function system() {
		return $this->belongsTo('App\System');
	}

	public function data_class() {
		return $this->belongsTo('App\DataClass');
	}

	public function attribute() {
		return $this->belongsTo('App\Attribute');
	}
	
}
