<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DataClassesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data_classes = \App\DataClass::where('system_id', \Session::get('SYSTEM_ID'))->orderBy('id', 'asc')->get();

        return view('data-classes.index', compact('data_classes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data_class = new \App\DataClass;
        return view('data-classes.form', compact('data_class'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data_class = new \App\DataClass();
        $data_class->system_id = \Session::get('SYSTEM_ID');
        $data_class->name = $request->input('name');
        $data_class->description = $request->input('description');
        $data_class->save();

        return redirect('data-classes')->with('status', 'Atribut berhasil ditambah');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data_class = \App\DataClass::find($id);
        if(!$data_class)
            Redirect::back();

        return view('data-classes.show', compact('data_class'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data_class = \App\DataClass::find($id);
        if(!$data_class)
            return back();
        if($data_class->system_id != \Session::get('SYSTEM_ID'))
            return redirect('/');

        return view('data-classes.form', compact('data_class'));
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
        $data_class = \App\DataClass::find($id);
        if(!$data_class)
            return back()->withInput();

        $data_class->name = $request->input('name');
        $data_class->description = $request->input('description');
        $data_class->system_id = \Session::get('SYSTEM_ID');
        $data_class->save();

        return redirect('data-classes')->with('status', 'Atribut berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data_class = \App\DataClass::find($id);
        if(!$data_class)
            return redirect('data-classes')->with('status', 'Atribut gagal dihapus');
    
        $data_class->delete();

        return redirect('data-classes')->with('status', 'Atribut berhasil dihapus');
    }
}
