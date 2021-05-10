<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Projekt R.E.W.A.K - Bieda Reddit/Wykop</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
    <!-- css -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet" type="text/css">
    <!-- bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body class="bg-secondary ">
<!-- start of simplified navbar for login/register menu -->

<nav class="navbar navbar-expand-dark navbar-dark bg-dark sticky-top">
    <div class="d-flex justify-content-start">
        <img class="navbar-brand" style="height:70px;" src="{{asset('img/logo-normal.png')}}" alt="mgr inż. Krzysztof Rewak patrzący się na ciebie z wyrazem zażenowania">
        <a class="navbar-text navbar-brand align-middle" href="/">Bieddit</a>
    </div>
    <div class="d-flex justify-content-end">
        <a class="navbar-text navbar-brand" href="/login">{{ __('Login') }}</a>
        <a class="navbar-text navbar-brand" href="/register">{{ __('Register') }}</a>
    </div>

</nav>

<!-- end of simplified navbar for login/register menu -->
<div class="container">

        <main class="py-4">
            @yield('content')
        </main>
</div>

<!-- stuff for bootstrap -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
