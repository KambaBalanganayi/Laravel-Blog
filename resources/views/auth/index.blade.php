@extends('layouts.layout')
@section('title', 'Login')
@section('content')
            <!-- Section-->
            <section class="py-5">
                <h1 class="text-center"></h1>
                <div class=" d-flex justify-content-center">
                    <div class="text-center px-5 w-50">
                        <h1 class="text-center mb-3">Get Logged!</h1>
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
                        <form action="{{route('login')}}" method ="post">
                            @csrf
                            <div class="form-group mb-3">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" placeholder="Email" class="form-control" name="email" value="{{ old('email')}}">
                                @if($errors->has('email'))
                                    <div class="text-danger mt-2">
                                        {{ $errors->first('email')}}
                                    </div>
                                @endif
                                <small id="emailHelp" class="form-text text-muted"></small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" placeholder="Password" class="form-control" name="password">
                                @if($errors->has('password'))
                                    <div class="text-danger mt-2">
                                        {{ $errors->first('password')}}
                                    </div>
                                @endif
                            </div>
                            <button type="submit" class="btn btn-primary mt-4 mb-4">Submit</button>
                        </form>
                        <a href="{{route('forgot.pass')}}">Mot de passe oublié</a>
                    </div>
                </div>

            </section>


@endsection