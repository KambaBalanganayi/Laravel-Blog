@extends('layouts.layout')
@section('title', 'File List')
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
                        <a href="{{ route('file.create')}}" class="btn btn-outline-primary">
                            @lang('lang.add_file')
                        </a>
                    </div>
                </div>
                <hr>
            </div>
            <div class="row mb-5">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            List of files uploaded
                        </div>
                        <div class="card-body">
                            <ul>
                                @forelse($files as $file)
                                        <li><a href="{{ route('file.show', $file->id)}}">{{ $file->title }}</a> 
                                        <br></li>
                                        <br>
                                        @empty
                                        <li class="text-danger">No files available</li>
                                @endforelse
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection