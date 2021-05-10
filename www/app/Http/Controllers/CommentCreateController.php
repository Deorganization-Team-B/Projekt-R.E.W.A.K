<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\DB;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;

class CommentCreateController extends Controller
{

    public function ccomm($wall)
    {
        $createcomment = DB::table('walls')
            ->select('walls.id_wall')
            ->where('walls.id_wall', '=', $wall)
            ->get();




        return view('home', compact('createcomment'));
    }
    public function ccomma($wall)
    {
        $createcomment = DB::table('walls')
            ->select('walls.id_wall')
            ->where('walls.id_wall', '=', $wall)
            ->get();




        return view('home', compact('createcomment'));
    }
    public function createComment($wall,$post, Request $request)
    {
        $post_id=$post;
        $commentDate = Carbon::now();
        DB::table('comment_'.$wall)->insert([
            'comment'=>$request->comment,
            'user_id'=>$request->user_id,
            'post_id'=>$post_id,
            'comment_date'=>$commentDate
        ]);
        return back()->with('comment_add', 'Comment added succesfully');

    }
}
