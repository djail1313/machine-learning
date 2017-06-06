<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AttributesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $attributes = \App\Attribute::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('id', 'asc')->get();

        return view('attributes.index', compact('attributes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $attribute = new \App\Attribute;
        return view('attributes.form', compact('attribute'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $attribute = new \App\Attribute();
        $attribute->system_id = \Session::get('SYSTEM_ID');
        $attribute->name = $request->input('name');
        $attribute->description = $request->input('description');
        $attribute->save();

        return redirect('attributes')->with('status', 'Atribut berhasil ditambah');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $attribute = \App\Attribute::find($id);
        if(!$attribute)
            Redirect::back();

        return view('attributes.show', compact('attribute'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $attribute = \App\Attribute::find($id);
        if(!$attribute)
            return back();
        if($attribute->system_id != \Session::get('SYSTEM_ID'))
            return redirect('/');

        return view('attributes.form', compact('attribute'));
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
        $attribute = \App\Attribute::find($id);
        if(!$attribute)
            return back()->withInput();

        $attribute->name = $request->input('name');
        $attribute->description = $request->input('description');
        $attribute->system_id = \Session::get('SYSTEM_ID');
        $attribute->save();

        return redirect('attributes')->with('status', 'Atribut berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $attribute = \App\Attribute::find($id);
        if(!$attribute)
            return redirect('attributes')->with('status', 'Atribut gagal dihapus');
    
        $attribute->delete();

        return redirect('attributes')->with('status', 'Atribut berhasil dihapus');
    }

    public function import()
    {
        $file = $_FILES['import-file']['tmp_name'];
        $file = fopen($file, 'r');
        $i = 0;
        while(! feof($file)){
            $row = fgetcsv($file);
            if($i++ && $row[0]){
                $attribute = new \App\Attribute;
                $attribute->system_id = \Session::get('SYSTEM_ID');
                $attribute->name = $row[0];
                $attribute->description = $row[1];
                $attribute->save();
            }
        }
        fclose($file);
        return redirect('attributes')->with('status', 'Atribut berhasil diimport');
    }

}
