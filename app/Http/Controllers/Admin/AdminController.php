<?php

namespace App\Http\Controllers\Admin;
use App\Models\Admin;
use App\Models\Services\AdminService;
use Illuminate\Http\Request;

class AdminController extends BaseController
{
    //列表显示
    public function index(Request $request){
       //$data = Admin::orderBy('id', 'desc')->paginate($this->pagesize);
       $data = (new AdminService())->getList($request, $this->pagesize);
        return view('admin.admin.index', compact('data'));
    }
    //添加界面显示
    public function create(){
        return view('admin.admin.create');
    }
//    添加处理
    public function store(Request $request){
//        表单验证
        $this->validate($request,[
            'username' => 'required|unique:admins,username',
            'truename' => 'required',
            'email' => 'nullable|email',
            'password' => 'required|confirmed'
        ]);
        $data = $request->except(['_token', 'password_confirmation']);
        $model = Admin::create($data);
        return redirect(route('admin.user.index'));
    }
    //修改界面显示
    public function edit($id){
        $data = Admin::find($id);
        return view('admin.admin.edit', compact('data'));
    }
    // 修改处理
    public function update(Request $request, int $id) {
        // 表单验证
        $data = $this->validate($request, [
            // unique唯一不重复
            'username' => 'required|unique:admins,username,' . $id,
            'truename' => 'required',
            'email' => 'nullable|email',
            'password' => 'nullable|confirmed',
            'phone' => 'nullable|min:6',
            'sex' => 'in:先生,女士'
        ]);
        if (!$data['password']) {
            unset($data['password']);
        }
        // 修改
        Admin::where('id', $id)->update($data);
        return redirect(route('admin.user.index'))->with('success', '修改用户【' . $data['truename'] . '】成功');
    }
}
