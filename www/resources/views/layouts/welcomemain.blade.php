<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="The poor mans copy of Reddit called Bieddit">
    <meta name="keywords" content="HTML, CSS, Laravel, Reddit-Clone, GTFO, Forum, Board-Forum, Boards, Wykop-clone, Moderated, Fun, Tyranny, No-Mercy">
    <meta name="author" content="Deorganization-Team-B">

    <title>Projekt R.E.W.A.K - Bieda Reddit/Wykop</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <!-- css -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet" type="text/css">
    <!-- bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body class="bg-secondary">
<!-- start of a navbar for logged in user -->
<nav class="navbar navbar-expand-dark navbar-dark bg-dark sticky-top">
    <img class="navbar-brand" style="height:70px;" src="{{asset('img/ChadYes.png')}}" alt="mgr inż. Krzysztof Rewak patrzący się na ciebie z wyrazem zażenowania">
    <a class="navbar-text navbar-brand" href="/">Bieddit</a>



            <div class="dropdown mr-auto">

                    @yield('dropbar')

            </div>



        <form class="form-inline my-2 my-lg-0 mr-auto">
            <input class="form-control mr-sm-2 bg-light" type="search" placeholder="{{ __('Search') }}" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">{{ __('Search') }}</button>
        </form>



    @yield('addpost')
    <a class="navbar-brand" href="/home/cryptoprice">
        <img src="{{asset('img/LetsGo.png')}}" height="55" alt="">
    </a>

        <div class="dropdown" >
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                {{Auth::user()->name}}<br>
                {{--<span style="font-size:10px;">karma: {{Auth::user()->karma}}</span>--}}
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

                <a class="dropdown-item" href="/logout">{{ __('Logout') }}</a>
            </div>

        </div>
    <a class="navbar-brand">
        <img src="{{asset('img/Error.png')}}" height="70" alt="User Profile Picture Placeholder in form of mgr inż. Krzysztof Rewak while in Pepe Form">
    </a>
</nav>
<!-- end of a navbar for logged in user -->

<!-- main "body" of the page -->
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8 offset-md-1"><main class="py-4">
                @yield('content')
            </main></div>
        <div class="col-md-2 offset-md-1"><main class="py-4">
                @yield('rightbar')
            </main></div>
    </div>
</div>
<!--end-->

<!-- Where are you looking at ? You got a problem ? Do you want to get fucked up ? -->

<!-- stuff for bootstrap -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
    tinymce.init({
        selector: 'textarea'
    });
</script>
</body>
</html>
