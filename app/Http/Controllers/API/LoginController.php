<?php

namespace App\Http\Controllers\API;

use JWTAuth;
use App\User;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Exceptions\JWTException;
use App\Http\Requests\RegistrationFormRequest;
use App\Http\Controllers\Controller;
use Auth;


class LoginController extends Controller
{
    

//login api response function

    // public function login(Request $request)
    // {
        
    //     if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){ 
    //         $user = Auth::user(); 
    //         $success['token'] =  $user->createToken('MyApp')->accessToken; 
    //         $success['name'] =  $user->name;
    //         $success['password'] = $user->password;
            
    //         return $this->sendResponse($success, 'User login successfully.');
    //     } 
    //     else{ 
    //         return $this->sendError('Unauthorised.', ['error'=>'Unauthorised']);
    // //     } 
    // }

//Create Post With JWT TOKEN API Response Function
public function login(Request $request)
{
   
    $token = null;

    if (!$token = JWTAuth::attempt(['email' => $request->email, 'password' => $request->password])) {
        return response()->json([
            'success' => false,
            'message' => 'Invalid Email or Password',
        ], 401);
    }

    return response()->json([
        'success' => true,
        'token' => $token,
    ]);
}

// public function ceateposts()
// {

// echo "Create Post";


// }
    


}
