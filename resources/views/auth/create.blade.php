@extends('layouts.layout')
@section('title', 'Create')
@section('content')
<!-- Section-->
<section class="py-5 mb-5">
                <h1 class="text-center"></h1>
                <div class=" d-flex justify-content-center">
                    <div class="text-center px-5 w-50">
                        <h1 class="text-center mb-3">@lang('lang.register_user')</h1>
                        <div class="card mb-5">
                            <h3 class="card-header text-center">
                            @lang('lang.create_greeting')
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
                        <form action="{{route('user.store')}}" method ="post">
                            @csrf
                            
                            <!-- Input for Name -->
                            <div class="form-group mb-3">
                                <label for="exampleInputEmail1">@lang('lang.name')</label>
                                <input type="text" placeholder="Name" class="form-control" name="name" value="{{ old('name')}}">
                                @if($errors->has('name'))
                                    <div class="text-danger mt-2">
                                        {{ $errors->first('name')}}
                                    </div>
                                @endif
                            </div>

                            <!-- Input for Address -->
                            <div class="form-group mb-3">
                                <label for="exampleInputEmail1">@lang('lang.adress')</label>
                                <input type="text" placeholder="Address" class="form-control" name="adresse" value="{{ old('adresse')}}">
                                @if($errors->has('adresse'))
                                    <div class="text-danger mt-2">
                                        {{ $errors->first('adresse')}}
                                    </div>
                                @endif
                            </div>

                            <!-- Input for Phone -->
                            <div class="form-group mb-3">
                                <label for="exampleInputEmail1">@lang('lang.phone')</label>
                                <input type="text" placeholder="Phone Number" class="form-control" name="phone" value="{{ old('phone')}}">
                                @if($errors->has('phone'))
                                    <div class="text-danger mt-2">
                                        {{ $errors->first('phone')}}
                                    </div>
                                @endif
                            </div>

                            <!-- Input for Date of Birth -->
                            <div class="form-group mb-3">
                                <label for="exampleInputEmail1">@lang('lang.birthday')</label>
                                <input type="text" placeholder="Date of Birth" class="form-control" name="dateNaissance" value="{{ old('dateNaissance')}}">
                                @if($errors->has('dateNaissance'))
                                    <div class="text-danger mt-2">
                                        {{ $errors->first('dateNaissance')}}
                                    </div>
                                @endif
                            </div>

                            <!-- Input for City -->
                            <div class="form-group mb-3">
                                <label for="id_ville">@lang('lang.city')</label>
                                <br>
                                    <select name="id_ville" id="id_ville" class="w-100">
                                        @foreach($villes as $ville)
                                        <option value="{{$ville->id}}" name="id_ville">{{$ville->nom}}</option>
                                        @endforeach
                                    </select>
                                @if($errors->has('email'))
                                    <div class="text-danger mt-2">
                                        {{ $errors->first('email')}}
                                    </div>
                                @endif
                            </div>

                            <!-- Input for Email Address -->
                            <div class="form-group mb-3">
                                <label for="exampleInputEmail1">@lang('lang.email')</label>
                                <input type="email" placeholder="Email" class="form-control" name="email" value="{{ old('email')}}">
                                @if($errors->has('email'))
                                    <div class="text-danger mt-2">
                                        {{ $errors->first('email')}}
                                    </div>
                                @endif
                                <small id="emailHelp" class="form-text text-muted"></small>
                            </div>

                            <!-- Input for Password -->
                            <div class="form-group">
                                <label for="exampleInputPassword1">@lang('lang.password')</label>
                                <input type="password" placeholder="Password" class="form-control" name="password">
                                @if($errors->has('password'))
                                    <div class="text-danger mt-2">
                                        {{ $errors->first('password')}}
                                    </div>
                                @endif
                            </div>

                            <button type="submit" class="btn btn-primary mt-4 mb-4">@lang('lang.submit')</button>
                        </form>
                        <a href="{{route('forgot.pass')}}">@lang('lang.forgot_password')</a>
                    </div>
                </div>

            </section>


@endsection