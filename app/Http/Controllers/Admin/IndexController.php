<?php
// 后台首页
namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends Controller {

    public function __construct() {
        // 绑定路由中间件
//        $this->middleware('checkadmin');
    }

    // 首页
    public function index() {
        // 获取闪存后，在存到闪存
        session()->flash('success',session('success'));

        return view('admin.index.index');
    }

    // 后台欢迎页
    public function welcome() {
        return view('admin.index.welcome');
    }

    // 退出用户登录
    public function logout() {
        // 退出
        //auth()->guard('web')->logout();
        // guard中的web是默认，所以可以简写
        auth()->logout();

        // 跳转到登录首页
        // with【不会】把消息添加到$errors中
        // with会写入到闪存中  闪存也是session
        // 闪存 在创建后，第1个http请求中才能得到，后就没有了
        // 闪存获取和session一样  session('success');
        return redirect(route('admin.login'))->with('success','退出成功');
    }

}
