<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;


class CryptoSuckAPIController extends Controller
{

    public function suck(){
        $cryptoview = ['1'];
        $crypto = Http::get('https://api.binance.com/api/v3/avgPrice', [
            'symbol' => 'BTCUSDT'
        ]);
        return view('home', compact('crypto'), compact('cryptoview'));
}}
