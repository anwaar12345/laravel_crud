<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
     use SoftDeletes;

     protected $fillable = ['post', 'uid', 'createdby', 'images'];


     const isadmin = [
         'isadmin'
     ];

     protected $dates = ['deleted_at'];


    /**
     * @var string
     */
    protected $table = 'posts';

    /**
     * @var array
     */
    protected $guarded = [];

}


