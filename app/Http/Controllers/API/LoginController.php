<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
//use Illuminate\Support\Facades\Hash;
//use App\Http\Controllers\API\BaseController as BaseController;
use App\Post;
use Auth;
use DB;

class LoginController extends Controller
{
    public function sendResponse($result, $message)
    {
    	$response = [
            'success' => true,
            'data'    => $result,
            'message' => $message,
        ];


        return response()->json($response, 200);
    }


    /**
     * return error response.
     *
     * @return \Illuminate\Http\Response
     */
    public function sendError($error, $errorMessages = [], $code = 404)
    {
    	$response = [
            'success' => false,
            'message' => $error,
        ];


        if(!empty($errorMessages)){
            $response['data'] = $errorMessages;
        }


        return response()->json($response, $code);
    }

//login api response function

    public function login(Request $request)
    {
        
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){ 
            $user = Auth::user(); 
            $success['token'] =  $user->createToken('MyApp')->accessToken; 
            $success['name'] =  $user->name;
            $success['password'] = $user->password;
            
            return $this->sendResponse($success, 'User login successfully.');
        } 
        else{ 
            return $this->sendError('Unauthorised.', ['error'=>'Unauthorised']);
        } 
    }

//Post List Api Response function

    public function posts()
    {
        // die("hwew");
        # code...
        // $records = DB::table('posts')->get();
        // dd($records);
        $posts = Post::all();
        // die("hewww");
        // $posts = Post::all();
        // dd($posts);
        return $this->sendResponse($posts, 'Posts retrieved successfully.');
    }

//Create Post With JWT TOKEN API Response Function

public function ceateposts()
{

echo "Create Post";


}
    


}
