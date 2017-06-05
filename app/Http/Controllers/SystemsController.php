<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SystemsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $systems = \App\System::all();

        return view('systems.index', compact('systems'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $system = new \App\System;
        return view('systems.form', compact('system'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $system = new \App\System;
        $system->name = $request->input('name');
        $system->description = $request->input('description');
        $system->save();

        return redirect('systems')->with('status', 'Sistem berhasil ditambah');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $system = \App\System::find($id);
        if(!$system)
            Redirect::back();

        return view('systems.show', compact('system'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $system = \App\System::find($id);
        if(!$system)
            Redirect::back();

        return view('systems.form', compact('system'));
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
        $system = \App\System::find($id);
        if(!$system)
            return back()->withInput();

        $system->name = $request->input('name');
        $system->description = $request->input('description');
        $system->save();

        return redirect('systems')->with('status', 'Sistem berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $system = \App\System::find($id);
        if(!$system)
            return redirect('systems')->with('status', 'Sistem gagal dihapus');
    
        $system->delete();
        if(\Session::get('SYSTEM_ID') == $id){
            \Session::forget('SYSTEM_ID');
            \Session::forget('SYSTEM_NAME');
        }

        return redirect('systems')->with('status', 'Sistem berhasil dihapus');
    }
}
