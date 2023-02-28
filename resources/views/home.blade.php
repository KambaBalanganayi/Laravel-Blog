@extends('layouts.layout')
@section('title', 'Home')
@section('content')
  <div class="container mt-5">
    <div class="d-flex justify-content-center align-items-center">
      <div class="col-md-8">
        <div class="card">
          <div class="card-header">Welcome to the Forum!</div>

          <div class="card-body">
            <p>Welcome to our forum community! Here you can discuss all sorts of topics with other members, share your thoughts and ideas, and learn from each other.</p>

            <p>If you're new here, you can start by checking out the <a href="{{ route('blog.index') }}"><strong>forum page</strong></a> to see what people are talking about, or create a new topic of your own. If you have any questions or concerns, don't hesitate to contact our friendly community moderators.</p>

            <p>Thanks for joining our community, and happy forum-ing!</p>

            <a href="{{route('login')}}" class="row ps-5 pe-5 pt-2 pb-2 mt-4 bg-primary text-light fs-5 rounded-3 justify-content-center" >Login</a>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection