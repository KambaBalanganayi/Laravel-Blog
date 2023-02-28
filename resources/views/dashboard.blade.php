@extends('layouts.layout')
@section('title', 'Dashboard')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-12 text-center mt-2">
            <h1 class="display-one ">
                Hello {{ $name }}
            </h1>
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
        data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        Show Options</button>
    </div>
    
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav d-grid gap-2 col-6 mx-auto">
        @guest
        <a class="nav-link" href="{{route('user.registration')}}">Registration
        </a>
        <a class="nav-link" href="{{route('login')}}">Login</a>
        @else
        <a class="nav-link text-center  ps-5 pe-5 pt-2 pb-2 mt-4 bg-primary text-light fs-5 rounded-3" href="{{route('blog.index')}}">View All The Blogs</a>
        <a class="nav-link text-center ps-5 pe-5 pt-2 pb-2 mt-4 bg-primary text-light fs-5 rounded-3" href="{{route('file.index')}}">View All The Files</a>
        <a class="nav-link text-center  ps-5 pe-5 pt-2 pb-2 mt-4 bg-success text-light fs-5 rounded-3" href="{{route('blog.index')}}">Make Your Own BlogPost</a>
        <a class="nav-link text-center ps-5 pe-5 pt-2 pb-2 mt-4 bg-success text-light fs-5 rounded-3" href="{{route('file.index')}}">Upload Your Files</a>
        @endguest
        </div>
    </div>

</div>
@endsection