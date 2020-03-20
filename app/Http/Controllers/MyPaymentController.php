<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;
use Stripe;

class MyPaymentController extends Controller
{
    //
public function view()
{
    return view('products.stripeview');
}


public function stripepay(Request $request)
{
    Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

    // $customer = \Stripe\Customer::create([
    //     "email" => "syed@gmail.com",
    //   ]);
   
    Stripe\Charge::create ([
            "amount" => 10 * 100,
            "currency" => "usd",
            'source' => $request->stripeToken,
            "description" => "Payment For BlogApp" 
    ]);

    Session::flash('success', 'Payment successful! '.$request->stripeToken);
      
    // return back();
    // return redirect()->back();


    return redirect()->route('products.index');

}



public function refund()
{
    

    \Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

    \Stripe\Refund::create([
      'charge' => $request->stripeToken,
    ]);

}



}
