<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if(auth()->guest())
        {
            return redirect('/');
        }
        if(auth()->user()->rights!==3)
        {
            return redirect("/home")->with('status','Nie masz wystarczających uprawnień.');
        }

        return $next($request);
    }
}
