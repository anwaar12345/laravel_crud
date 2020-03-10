<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Post extends Model
{
     protected $fillable = ['post', 'uid', 'createdby', 'images'];


     const isadmin = [
         'isadmin'
     ];
    // get ($paginated)(Auth::id();)
    // insert($data)
    // (edit($id))

    // public static function update1($data)
    // {

        
        
    //      print_r($data);
    //       exit();
    // }



}


