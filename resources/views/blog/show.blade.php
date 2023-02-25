@extends('layouts.layout')
@section('title', 'Blog Post Details')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-12 pt-2">
            <a href="{{ route('blog.index') }}" class="btn btn-outline-primary btn-sm">Go Back</a>
            <h4 class="display-one mt-2">
                {{ $blogPost->title }}
            </h4>
            <hr>
            <p> {!! $blogPost->body !!}</p>
            <p><strong>Category:</strong> @isset($blogPost->blogHasCategory->category) {{ $blogPost->blogHasCategory->category }} @endisset</p>
            <p><strong>Author:</strong> {{ $blogPost->blogHasUser->name}}</p>
            <hr>
        </div>
    </div>
    <div class="row text-center mb-2">

        <div class="col-4">
            <a href="{{route('blog.edit', $blogPost->id)}}" class="btn btn-success">Update</a>
        </div>
        <div class="col-4">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">
            Delete
            </button>           
        </div>
    </div>
</div>



<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Delete an article</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Are you sure you want to erase this blog post?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <form action="{{ route('blog.edit', $blogPost->id)}}" method="post">
                @csrf
                @method('delete')
            <input type="submit" class="btn btn-danger" value="Effacer">
        </form>
      </div>
    </div>
  </div>
</div>

@endsection