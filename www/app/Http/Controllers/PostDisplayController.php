<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


    class PostDisplayController extends Controller
{


    public function spost($wall)
    {
        /**That is how we started
         * $select = 'select * from post_'.$wall;
        $posts = DB::select($select);*/

        $walls = DB::table('walls')
            ->select('walls.id_wall')
            ->where('walls.id_wall', '=', $wall)
            ->get();

        $posts = DB::table('post_'.$wall)
            ->join('users', 'post_'.$wall.'.user_id', '=', 'users.id')
            ->select('post_'.$wall.'.*', 'users.name')
            ->get();


        return view('home',compact('posts'),compact('walls'));
    }
    public function sposta($wall)
    {

        $walls = DB::table('walls')
            ->select('walls.id_wall')
            ->where('walls.id_wall', '=', $wall)
            ->get();

        $posts = DB::table('post_'.$wall)
            ->join('users', 'post_'.$wall.'.user_id', '=', 'users.id')
            ->select('post_'.$wall.'.*', 'users.name')
            ->get();


        return view('admin',compact('posts'),compact('walls'));
    }
        public function deletePost($wall, $id)
        {

            DB::table('post_'.$wall)->where('id', $id)->delete();


            return back()->with('post_delete', 'Post removed succesfully');
        }
    public function scomm($wall, $post)
    {

        $posts = DB::table('post_'.$wall)
            ->join('users', 'post_'.$wall.'.user_id', '=', 'users.id')
        ->select('post_'.$wall.'.*', 'users.name')
            ->where('post_'.$wall.'.id', '=', $post)
        ->get();
        $comments = DB::table('comment_'.$wall)
            ->join('users', 'comment_'.$wall.'.user_id', '=', 'users.id')
            ->select('comment_'.$wall.'.*', 'users.name')
            ->where('comment_'.$wall.'.post_id', '=', $post)

            ->get();
        /**$comments2 = DB::table('comment_'.$wall)
            ->join('users', 'comment_'.$wall.'.user_id', '=', 'users.id')
            ->select('comment_'.$wall.'.*', 'users.name')
            ->where('comment_'.$wall.'.comment_id', '=', 'id')
            ->get();*/


        return view('home',compact('posts'),compact('comments'));
    }
    public function scomma($wall, $post)
    {

        $posts = DB::table('post_'.$wall)
            ->join('users', 'post_'.$wall.'.user_id', '=', 'users.id')
            ->select('post_'.$wall.'.*', 'users.name')
            ->where('post_'.$wall.'.id', '=', $post)
            ->get();
        $comments = DB::table('comment_'.$wall)
            ->join('users', 'comment_'.$wall.'.user_id', '=', 'users.id')
            ->select('comment_'.$wall.'.*', 'users.name')
            ->where('comment_'.$wall.'.post_id', '=', $post)
            ->get();
        /**$comments2 = DB::table('comment_'.$wall)
            ->join('users', 'comment_'.$wall.'.user_id', '=', 'users.id')
            ->select('comment_'.$wall.'.*', 'users.name')
            ->where('comment_'.$wall.'.comment_id', '=', 'id')
            ->get();*/

        return view('admin',compact('posts'),compact('comments'));
    }

        public function deleteComment($wall, $post, $id)
        {

            DB::table('comment_'.$wall)->where('id', $id)->delete();


            return back()->with('comment_delete', 'Comment removed succesfully');
        }

}
