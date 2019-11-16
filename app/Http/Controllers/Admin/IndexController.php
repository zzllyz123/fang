<?php

namespace App\Http\Controllers\Admin;
//后台首页
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends BaseController
{
//    构造方法
    public function __construct(){
        // 绑定路由中间件
//        $this->middleware('checkadmin');
    }
    //显示首页
    public function index(){
        return view("admin.index.index");
    }
//    后台欢迎页
    public function welcome() {
        return view('admin.index.welcome');
    }
//    退出
// 退出用户登录
    public function logout() {
        // 退出
        auth()->logout();
        // 跳转到登录首页
        return redirect(route('admin.login'))->with('success','退出成功');
    }
}
