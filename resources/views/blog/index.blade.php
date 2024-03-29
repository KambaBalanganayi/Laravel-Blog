@extends('layouts.layout')
@section('title', 'Blog List')
@section('content')
<div class="container">
        <div class="row">
            <div class="col-12 text-center pt-5">
                <h1 class="display-one">
                    @lang('lang.my_blog')
                </h1>
                <hr>
                <div class="row">
                    <div class="col-md-8">
                        <p>
                            @lang('lang.reading_title')
                        </p>
                    </div>
                    <div class="col-md-4">
                        <a href="{{ route('blog.create')}}" class="btn btn-outline-primary">
                            @lang('lang.add_post')
                        </a>
                    </div>
                </div>
                <hr>
            </div>
            <div class="row blog-posts" >
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            List of blog posts
                        </div>
                        <div class="card-body">
                            <ul>
                                @forelse($blogs as $blog)
                                        <li><a href="{{ route('blog.show', $blog->id)}}">{{ $blog->title }}</a> 
                                        <br><strong>Category:</strong> @isset($blog->blogHasCategory->category) {{ $blog->blogHasCategory->category }} @endisset</p></li>
                                        <br>
                                        @empty
                                        <li class="text-danger">No blog articles available</li>
                                @endforelse
                                {{$blogs}}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection