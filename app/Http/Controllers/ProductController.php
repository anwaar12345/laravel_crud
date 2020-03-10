<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use App\Post;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    /**
     * Display a listing of the resource.
     *
     *   @return \Illuminate\Http\Response
     */
    public function index()
    {
        //dd(Auth::id());
        if(Auth::user()->isadmin === 2){
            $products = Post::latest()->where('uid',Auth::id())->paginate(5);

        }elseif(Auth::user()->isadmin == 1){
            $products = Post::latest()->paginate(5);

        }
        
        return view('products.index', compact('products'));
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('products.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {
        $request->validate([
            'post' => 'required',
            'createdby' => 'required',
            'images' => 'required'
        ]);
        
    
        $i = 0;
        if($request->hasfile('images'))
        {

            foreach($request->file('images') as $image)
            {
                
                $img_name = str_replace(' ','_',$request->post).$i++.".".$image->getClientOriginalExtension();
                
                $image->move(public_path().'/images/', $img_name);  
                $data[] = $img_name;  
                
                
                //   print_r($img_name);exit;

            }
        }
        $img = json_encode($data);
        //print_r($img);exit;  

  $data = [

        'post' => $request->post, 
        'uid' => $request->uid, 
        'createdby' => $request->createdby,
        'images' => $img
  
    ];

//   echo "<pre>";
//   print_r($data);exit;
        
Post::create($data);

    //   Post::create(
    //     'post' => $request->post, 
    //     'uid' => $request->uid, 
    //     'createdby' => $request->createdby,
    //     'images' => $request->images
    //   );
        
        return redirect()->route('products.index')
                           ->with('success', 'Post Created Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $product)
    {
        return view('products.show', compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Post  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $product)
    {
        return view('products.edit', compact('product'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Post  $product
     * @return \Illuminate\Http\Response
     */
    public function update($id, Request $request)
    {
     //dd($request);   
        $request->validate([

            'post' => 'required',
            'createdby' => 'required',
            'images' => 'required'
        ]);

         $i = 0;


         if($request->file('images'))
         {
 
             foreach($request->file('images') as $image)
             {
                    //print_r($image);               
                $img_name =   $img_name = str_replace(' ','_',$request->post).$i++.".".$image->getClientOriginalExtension();
                $image->move(public_path().'/images/', $img_name);
                   
                  $data[] = $img_name;  
                
//print_r($data);;                    // print_r($img_name);exit;
               
             }
             $img = json_encode($data);  
             $data = [

                'post' => $request->post, 
                'uid' => $request->uid, 
                'createdby' => $request->createdby,
                'images' => $img
          
            ];
 
                   $post = Post::find($id);
        //dd($post);
       $post->update($data);

    }
         
     //    Print_r($img);

     return redirect()->route('products.index')
     ->with('success', 'Post Updated Successfully!');


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $product)
    {
        //dd($product);   
        $product->delete();

        return redirect()->route('products.index')
                            ->with('success', 'post Deleted Successfully!');
    }
}
