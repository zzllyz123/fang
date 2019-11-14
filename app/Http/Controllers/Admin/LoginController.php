<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LoginController extends Controller
{
    //后台登录显示
    public function index(){
        return view('admin.login.index');
    }
//    登录处理
//
    public function login(Request $request){

        //接收数据
//        表单验证
        $data=$this ->validate($request,[
            'username' => 'required',
            'password' => 'required',
        ]);
//        auth登录
        $bool=auth()->attempt($data);
        dump($bool);
        dump(auth()->user());
    }
}
