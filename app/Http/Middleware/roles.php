<?php

namespace App\Http\Middleware;

use Auth;
use Closure;


class roles
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        // switch(Auth::user()->role){
        //     case 2:
        //     $this->redirectTo = '/admin';
        //     return $this->redirectTo;
        //         break;
        //     case 4:
        //             $this->redirectTo = '/team';
        //         return $this->redirectTo;
        //         break;

                // switch(Auth::user()->role){
                //     case 1:
                //     $this->redirectTo = '/dashboard';
                //     return $this->redirectTo;
                //         break;
                //     case 2:
                //             $this->redirectTo = '/home';
                //         return $this->redirectTo;
                //         break;
                //     default:
                //     $this->redirectTo = '/login';
                //     return $this->redirectTo;  
     //proper way   
                if (!Auth::check()) {
                    return redirect()->route('login');
                }
        
                if (Auth::user()->isadmin === 1) {
                    return redirect()->route('admin');
                }
        
                if (Auth::user()->isadmin === 2) {
                    return redirect()->route('home');
                }
                     return $next($request);
    }
}
