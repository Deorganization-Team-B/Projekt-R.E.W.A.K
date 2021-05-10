<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class EditController extends Controller
{

    public function eposta($wall, $id)
    {
        $editpost = DB::table('walls')
            ->select('walls.id_wall')
            ->where('walls.id_wall', '=', $wall)
            ->get();
        $post = DB::table('post_'.$wall)
            ->select('*')
            ->where('post_'.$wall.'.id', '=', $id)
            ->get();



        return view('admin', compact('editpost'), compact('post'));
    }


    public function editPost($wall, Request $request)
    {
        $editDate = Carbon::now();
        DB::table('post_'.$wall)->where('id', $request->id)->update([
            'title'=>$request->title,
            'post'=>"<strong>EDIT:</strong>".$request->post,
            'imgur'=>$request->imgur,
            'editor_id'=>$request->editor_id,
            'edit_date'=>$editDate
        ]);
        return back()->with('post_edit', 'Post edited succesfully');

    }

}
