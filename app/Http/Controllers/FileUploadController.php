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
            'file' => 'required|mimes:pdf,zip,docx|max:3200'
        ]);

        $path = $request->file('file')->store('public');

        $fileUpload = FileUpload::create([
            'title'=>$request->title,
            'path'=>$path
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
    public function destroy(FileUpload $fileUpload)
    {
        //
        $fileUpload->delete();

        return redirect(route('file.index'));
    }


    public function download($fileUpload)
    {
        $path = storage_path('app/storage/app/public' . $fileUpload);

        if (!file_exists($path)) {
            abort(404);
        }

        return response()->download($path);
    }

}
