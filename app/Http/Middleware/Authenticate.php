<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string
     */
    protected function redirectTo($request)
    {

        if (Auth::guard($guard)->check() && Auth::user()->role==1) {
            return redirect()->route('admin');
        }elseif(Auth::guard($guard)->check() && Auth::user()->role==2){
            return redirect()->route('home');
        }


        if (! $request->expectsJson()) {
            return route('login');
        }
    }
}
