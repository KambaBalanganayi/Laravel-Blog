@extends('layouts.layout')
@section('title', 'Home')
@section('content')

@php $locale = session()->get('locale'); @endphp


<div class="container-fluid hero-section-container">

  <div class="row align-items-center">

    <div class="col-md-6 p-0">
      <div class="hero-image">
        <img src="{{ asset('images/retro-gaming-hero1.png') }}" alt="Hero Image" class="w-100">
      </div>
    </div>

    <div class="col-md-6 p-0">
      <div class="hero-text p-5">
        <h1 class="text-light mb-5">Relive the Golden Age of PC Gaming</h1>
        <p class="text-muted mt-5">At Pixel Heads, you can create your own blog posts, share your thoughts on the latest games and hardware, and upload your setup pictures or get inspired by other like-minded gamers.</p>
      </div>
    </div>

  </div>
</div>




  <div class="pt-5 home-welcome-container">
    <div class="d-flex justify-content-center align-items-center">
      <div class="col-md-8">
        <div class="card home-welcome-card">
          <div class="card-header text-center fs-5">Welcome home Pixel Heads!</div>

            <div class="card-body">
            <p>Welcome to Pixel Heads, your ultimate destination for all things retro gaming. Our community is dedicated to bringing you the latest news, reviews, and insights on classic games, vintage hardware, and everything in between.</p>

            <p>If you're a retro gaming enthusiast, you'll love our <a href="{{ route('blog.index') }}"><strong>blog page</strong></a> where you can read and write about your favorite games and hardware. We also have a <a href="{{ route('blog.index') }}"><strong>PC setups</strong></a> page where you can upload pictures of your PC setup and view other setups from like-minded individuals.</p>

            <p>Join us today and become a part of our thriving community of Pixel Heads. Let's relive the golden age of PC gaming together!</p>


            <a href="{{route('login')}}" class="row ps-5 pe-5 pt-2 pb-2 mt-4 bg-primary text-light fs-4 rounded-3 justify-content-center" >Login</a>

          </div>
        </div>
      </div>
    </div>
  </div>
@endsection