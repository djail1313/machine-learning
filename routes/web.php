<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'SystemsController@index');

Route::resource('systems', 'SystemsController');
Route::resource('attributes', 'AttributesController');
Route::resource('datasets', 'DatasetsController');
Route::resource('matrix-datasets', 'MatrixDatasetsController');
Route::resource('data-classes', 'DataClassesController');

Route::get('/change-system/{id}', function($id){
	$system = \App\System::find($id);
	if($system){
		Session::put('SYSTEM_ID', $system->id);
		Session::put('SYSTEM_NAME', $system->name);
	} else {
		Session::forget('SYSTEM_ID');
		Session::forget('SYSTEM_NAME');
	}
	return Redirect::back();
});

Route::get('/naive-bayes', 'NaiveBayesController@index');
Route::get('/naive-bayes/train', 'NaiveBayesController@conditionalProbability');
Route::post('/naive-bayes/train', 'NaiveBayesController@train');
Route::post('/naive-bayes', 'NaiveBayesController@calculate');