@extends('layouts.layout')
@section('title', 'Add a file')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-12 text-center mt-2">
            <h1 class="display-one ">
                Add a file
            </h1>
        </div>
    </div>
    <hr>
    <div class="row justify-content-center">
        <div class="col-6">
            <div class="card">
                <form method="post" action="{{route('file.store')}}" enctype="multipart/form-data">
                    @csrf
                    <div class="card-header">
                        Form
                    </div>
                    <div class="card-body">
                        <div class="control-group col-12">
                            <label for="title">Title of the file</label>
                            <input type="text" id="title" name="title" class="form-control">
                            <input type="file" name="file">
                        </div>
                    </div>
                    <div class="card-footer">
                        <input type="submit" value="Save" class="btn btn-success">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection