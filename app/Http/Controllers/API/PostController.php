<?php

namespace App\Http\Controllers\API;
use JWTAuth;
use App\Post;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PostController extends Controller
{
    //
/**
     * @var
     */
    protected $user;

    /**
     * TaskController constructor.
     */
    public function __construct()
    {
        $this->user = JWTAuth::parseToken()->authenticate();
    }

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

// //Post List Api Response function

public function index()
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


// /**
//  * @return mixed
//  */
// public function index()
// {
//     print_r(111);
//     $tasks = $this->user->posts();

//     return $tasks;
// }



}
