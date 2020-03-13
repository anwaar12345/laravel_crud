<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class requestlogg extends Model
{
    //
    protected $fillable = ['method','request', 'response', 'status', 'api'];
}
