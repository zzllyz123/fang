<?php

namespace App\Models;


use Illuminate\Foundation\Auth\User as Authenticatable;
class Admin extends Authenticatable
{
    //黑名单

    protected $guarded = [];
}
