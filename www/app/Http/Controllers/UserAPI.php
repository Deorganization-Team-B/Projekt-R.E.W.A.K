<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserAPI extends Controller
{
    function getData()
    {
        $userC = DB::table('users')->count('*');
        $walls = DB::table('walls')
            ->select('*')
            ->get();

        return [
            "User Count"=>$userC,
            "Board Information"=>$walls,
        ];
    }
}
