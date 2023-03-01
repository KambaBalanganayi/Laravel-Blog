<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>TP2 - Laravel - Login</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.0/mdb.min.css" rel="stylesheet">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="{{ asset('css/styles.css')}}" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        @php $locale = session()->get('locale'); @endphp
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">

                <a class="navbar-brand" href="/">@lang('lang.hello') @if(Auth::check()) {{Auth::user()->name }} @else @lang('lang.guest') @endif</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        @guest
                        <li class="nav-item btn-btn-warning"><a class="nav-link active" aria-current="page" href="{{ route('login') }}">@lang('lang.login_nav')</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ route('auth.create')}}">@lang('lang.registration_nav')</a></li>
                        @else
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="{{route('logout')}}">@lang('lang.logout_nav')</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ route('blog.index')}}">@lang('lang.Forum_nav')</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ route('file.index')}}">@lang('lang.Files_nav')</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{ route('dashboard')}}">@lang('lang.dashboard_nav')</a></li>
                        @endguest
                        <a class="nav-link @if( $locale=='en') bg-secondary @endif" href="{{route('lang', 'en')}}">En<i class="flag flag-united-states"></i></a>
                        <a class="nav-link {{ $locale =='fr' ? 'bg-secondary' : '' }}" href="{{route('lang', 'fr')}}">Fr<i class="flag flag-france"></i></a>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Kamba Balanganayi</h1>
                    <p class="lead fw-normal text-white-50 mb-0">TP2 - Laravel - Login</p>
                </div>
            </div>
        </header>
    @yield('content')

    <!-- Footer-->
    <footer class="py-5 bg-dark fixed-bottom">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; <a href="https://github.com/KambaBalanganayi">Kamba Balanganayi</a><span> 2023</span></p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script rel="text/javascript" src="{{ URL::asset('js/scripts.js')}}"></script>
        <script src="{{ asset('js/bootstrap.min.js')}}"></script>
        @yield('js')
    </body>
</html>