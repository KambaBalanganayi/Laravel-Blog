@extends('layouts.layout')
@section('title', 'Login')
@section('content')
            <!-- Section-->
            <section class="py-5">
                <h1 class="text-center"></h1>
                <div class=" d-flex justify-content-center">
                    <div class="text-center px-5 w-50">
                        <h1 class="text-center">Connectez-Vous!</h1>
                        <div class="card">
                            <h3 class="card-header text-center">
                            Login
                            </h3>
                            <div class="card-body">
                            @if(session('success'))
                            <div class=
                            "alert alert-success alert-dismissible fade show" role="alert">
                            {{session('success')}}
                            <button type="button" class="btn-close"
                            data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                            @endif
                            @if($errors)
                            <ul>
                            @foreach($errors->all() as $error)
                            <li class='text-danger'>{{ $error }}</li>
                            @endforeach
                            </ul>
                            @endif
                        <form action="{{route('login.authentication')}}" method ="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted"></small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                            </div>
                            <button type="submit" class="btn btn-primary mt-4">Submit</button>
                        </form>
                    </div>
                </div>

            </section>


@endsection