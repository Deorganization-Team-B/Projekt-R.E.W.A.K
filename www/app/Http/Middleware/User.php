<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class User
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

        if (auth()->user()) {
            $log=array([auth()->user()->id, now()]);
            logger($log);
            return redirect('/home');
        }


        return $next($request);
    }
}
