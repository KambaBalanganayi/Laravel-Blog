<?php

namespace App\Http\Controllers;

use App\Models\FileUpload;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class FileUploadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $files = FileUpload::select()
                ->paginate(15);
        return view('file.index', ['files'=>$files]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('file.create');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'title' => 'required|min:6',
            'file' => 'required|mimes:pdf,zip,docx,jpeg,jpg,gif,png|max:3200'
        ]);

        $path = $request->file('file')->store('local');
        $name = $request->file('file')->getClientOriginalName();

        $fileUpload = FileUpload::create([
            'title'=>$request->title,
            'path'=>$path,
            'name' =>$name,
            'user_id'=> Auth::user()->id
        ]);


        return redirect(route('file.show', $fileUpload->id));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\FileUpload  $files
     * @return \Illuminate\Http\Response
     */
    public function show(FileUpload $files)
    {
        //
        return view('file.show', ['files' => $files]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\FileUpload  $fileUpload
     * @return \Illuminate\Http\Response
     */
    public function edit(FileUpload $fileUpload)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\FileUpload  $fileUpload
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, FileUpload $fileUpload)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\FileUpload  $fileUpload
     * @return \Illuminate\Http\Response
     */
    public function destroy(FileUpload $files)
    {
        //
        $files->delete();

        return redirect(route('file.index'));
    }


    public function download($id)
    {
        $file = FileUpload::findOrFail($id);
        $path = storage_path('app/' .$file->path);

        if (!file_exists($path)) {
            abort(404);
        }

        return response()->download($path);
    }

    public function preview($id)
    {
    $file = FileUpload::findOrFail($id);
    $path = storage_path($file->path);

    return response()->file($path);
    }

}
