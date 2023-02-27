@extends('layouts.layout')
@section('title', 'File Upload Details')
@section('content')
<pre>{{ dd($files) }}</pre>

<div class="container">
    <div class="row">
        <div class="col-12 pt-2">
            <a href="{{ route('file.index') }}" class="btn btn-outline-primary btn-sm">Go Back</a>
            <h4 class="display-one mt-2">
                <strong>Title: </strong>{{ $files->title }}
            </h4>
            <hr>
            <p><strong>Author: </strong> {{ $files->fileHasUser->name}}</p>
            <hr>
        </div>
    </div>
    <div class="row text-center mb-2">
        @if(Auth::check() && Auth::user()->id == $files->user_id)
        <div class="col-4">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
            Delete
            </button>           
        </div>
        @endif
    </div>
</div>
@endsection