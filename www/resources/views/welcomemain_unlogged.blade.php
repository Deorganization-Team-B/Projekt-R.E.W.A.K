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
<!-- start of a navbar for unlogged user/guest-->
<nav class="navbar navbar-expand-dark navbar-dark bg-dark sticky-top">
    <span class="float-start">
    <img class="navbar-brand" style="height:70px;" src="{{asset('img/Error.png')}}" alt="dr inż. Zbigniew Fryźlewicz patrzy się na ciebie z pogardą i nazywa cię 'Pathetic'">
    <a class="navbar-text navbar-brand" href="/">Bieddit</a>
</span>









<span class="float-end">
    <a class="navbar-text navbar-brand" href="/login">{{ __('Login') }}</a>
    <a class="navbar-text navbar-brand" href="/register">{{ __('Register') }}</a>

</span>
</nav>
<!-- end of a navbar for unlogged user/guest-->

<!-- main "body" of the page -->
<div class="container-fluid">
    <div class="row justify-content-center ">
        <div class="card border border-white bg-dark">
        <div class="col-md-8 offset-md-2 card-body bg-dark text-white">{{ __('Welcome to Bieddit motherfuckers. To see anything you need to create an account or sign in to an existing one.') }}</div>
        </div>
    </div>
</div>
<!--end-->

<!-- stuff for bootstrap -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
