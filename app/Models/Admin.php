<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Admin extends Authenticatable
{
    // 黑名单
    protected $guarded = [];

    // 修改器
    // set字段名(首字母大写)Attribute
    // 如果字段有下或线，则下划线不要，下划线后的首字母大写  例 created_at => CreatedAt
    public function setPasswordAttribute($value) {
        // 给密码字段加密
        $this->attributes['password'] = bcrypt($value);
    }

}
