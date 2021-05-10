<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\DB;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;

class PostCreateController extends Controller
{

    public function cpost($wall)
    {
        $createpost = DB::table('walls')
            ->select('walls.id_wall')
            ->where('walls.id_wall', '=', $wall)
            ->get();




        return view('home', compact('createpost'));
    }
    public function cposta($wall)
    {
        $createpost = DB::table('walls')
            ->select('walls.id_wall')
            ->where('walls.id_wall', '=', $wall)
            ->get();




        return view('home', compact('createpost'));
    }
    public function createPost($wall, Request $request)
    {
        $postDate = Carbon::now();
        DB::table('post_'.$wall)->insert([
            'title'=>$request->title,
            'post'=>$request->post,
            'imgur'=>$request->imgur,
            'user_id'=>$request->user_id,
            'post_date'=>$postDate
        ]);
        return back()->with('post_add', 'Post added succesfully');

    }
}
