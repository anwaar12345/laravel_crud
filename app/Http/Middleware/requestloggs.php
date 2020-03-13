<?php

namespace App\Http\Middleware;

use Closure;
use App\requests;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Route;
//use Illuminate\Routing\Route;

//use requests;
use App\requestlogg;
class requestloggs
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
//        // $req = $request->curre();
//         //dd($request);
//        // $url = $request->url()->current();
// // $data = $request->all();
// // dd($data);
//         // $data = [

//         //     'request' => $req, 
//         //     'response' => $request->uid, 
//         //     'uid' => $request->createdby,
//         //     //'api' => $url
      
//         // ];
    
//     //   echo "<pre>";
//     //   print_r($data);exit;
            
//     // requestlogg::create($data);
      return $next($request);
//     // 

}

public function terminate($request, $response)
{
    # code...
 //  dd($request);

    $method = $request->getMethod();
    $requests = $request->all();
    // dd($requests);
    $responsee = $response->getData();
    $status = $response->status(); 
    $api = $request->fullUrl();
   // $data3 = $request->getContent();
   //  dd($data1,$data,$data3);
     $data = [
         'method' => Json_encode($method),
        'request' => Json_encode($requests), 
        'response' => Json_encode($responsee), 
         'status' => $status, 
         'api' => $api
     ];

    //  $dummy = [
    //     'request' => 'dummy', 
    //     'response' => 'dummy', 
    //      'uid' => 'dummy', 
    //      'api' => 'dummy'
    //  ];

//  dd($data);
      requestlogg::create($data);
}

}
