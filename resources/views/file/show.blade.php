@extends('layouts.layout')
@section('title', 'File Upload Details')
@section('content')


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



<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Delete a file</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Are you sure you want to erase this file?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <form action="{{ route('delete', $files->id)}}" method="post">
                @csrf
                @method('delete')
            <input type="submit" class="btn btn-danger" value="Effacer">
        </form>
      </div>
    </div>
  </div>
</div>


@endsection