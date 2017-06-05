<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DatasetsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datasets = \App\Dataset::where('system_id', \Session::get('SYSTEM_ID'))->get();
        $attributes = \App\Attribute::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('id', 'asc')->get();

        return view('datasets.index', compact('datasets','attributes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $dataset = new \App\Dataset;
        $attributes = \App\Attribute::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('id', 'asc')->get();
        $data_classes = \App\DataClass::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('id', 'asc')->get();
        
        return view('datasets.form', compact('dataset','attributes','data_classes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $dataset = new \App\Dataset;
        $dataset->system_id = \Session::get('SYSTEM_ID');
        $dataset->data_class_id = $request->input('data_class_id');
        $dataset->save();

        $matrix_dataset_id = $request->input('matrix_dataset_id');
        $matrix_dataset_attribute_id = $request->input('matrix_dataset_attribute_id');
        $matrix_dataset_value = $request->input('matrix_dataset_value');

        for ($i=0; $i < count($matrix_dataset_id); $i++) { 
            $matrix_dataset = new \App\MatrixDataset;
            $matrix_dataset->dataset_id = $dataset->id;
            $matrix_dataset->data_class_id = $request->input('data_class_id');
            $matrix_dataset->attribute_id = $matrix_dataset_attribute_id[$i];
            $matrix_dataset->value = $matrix_dataset_value[$i];
            $matrix_dataset->save();
        }
        return redirect('datasets')->with('status', 'Dataset berhasil ditambah');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $dataset = \App\Dataset::find($id);
        if(!$dataset)
            return back();
        if($dataset->system_id != \Session::get('SYSTEM_ID'))
            return redirect('/');

        $attributes = \App\Attribute::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('id', 'asc')->get();
        $data_classes = \App\DataClass::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('id', 'asc')->get();

        return view('datasets.form', compact('dataset','attributes','data_classes'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $dataset = \App\Dataset::find($id);
        if(!$dataset)
            return back()->withInput();

        $dataset->data_class_id = $request->input('data_class_id');
        $dataset->save();

        $matrix_datasets = $dataset->matrix_datasets->all();
        $matrix_dataset_id = $request->input('matrix_dataset_id');
        $matrix_dataset_attribute_id = $request->input('matrix_dataset_attribute_id');
        $matrix_dataset_value = $request->input('matrix_dataset_value');

        for ($i=0; $i < count($matrix_dataset_id); $i++) { 
            if($matrix_dataset_id[$i]){
                $matrix_dataset = \App\MatrixDataset::find($matrix_dataset_id[$i]);
            } else {
                $matrix_dataset = new \App\MatrixDataset;
            }
            $matrix_dataset->dataset_id = $dataset->id;
            $matrix_dataset->data_class_id = $request->input('data_class_id');
            $matrix_dataset->attribute_id = $matrix_dataset_attribute_id[$i];
            $matrix_dataset->value = $matrix_dataset_value[$i];
            $matrix_dataset->save();
        }

        foreach ($matrix_datasets as $key => $value) {
            if(!in_array($value->id, $matrix_dataset_id)){
                $value->delete();
            }
        }


        return redirect('datasets')->with('status', 'Dataset berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $dataset = \App\Dataset::find($id);
        if(!$dataset)
            return redirect('datasets')->with('status', 'Dataset gagal dihapus');
    
        $dataset->delete();

        return redirect('datasets')->with('status', 'Dataset berhasil dihapus');
    }
}
