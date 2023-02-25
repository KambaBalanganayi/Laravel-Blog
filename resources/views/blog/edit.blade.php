@extends('layouts.layout')
@section('title', 'Update Post')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-12 text-center mt-2">
            <h1 class="display-one ">
                Update your post
            </h1>
        </div>
    </div>
    <hr>
    <div class="row justify-content-center">
        <div class="col-6">
            <div class="card">
                <form method="post">
                    @csrf
                    @method('put')
                    <div class="card-header">
                        Form
                    </div>
                    <div class="card-body">
                        <div class="control-group col-12">
                            <label for="title">Tile of the post</label>
                            <input type="text" id="title" name="title" class="form-control" value="{{ $blogPost->title}}">
                        </div>
                        <div class="control-group col-12">
                            <label for="body">Message</label>
                            <textarea name="body" id="body" class="form-control">{{ $blogPost->body }}</textarea>
                        </div>
                        
                        <div class="control-group col-12">
                            <label for="category">Category</label>
                            <select name="categorys_id" id="category" class="form-control">
                                <option value="">Select category</option>
                                @foreach($categories as $category)
                                    <option value="{{ $category->id }}" {{$category->id == $blogPost->categorys_id ? 'selected' : ''}}>{{ $category->category }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="card-footer">
                        <input type="submit" value="Update" class="btn btn-success">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection