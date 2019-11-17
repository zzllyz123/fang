<?php
// 后台路由
Route::group(['namespace' => 'Admin', 'prefix' => 'admin', 'as' => 'admin.'], function () {
    // 后台登录显示
    Route::get('login', 'LoginController@index')->name('login');
    // 后台登录处理
    Route::post('login', 'LoginController@login')->name('login');



    // 中间件中以 中间件名称：传过去的参数
    Route::group(['middleware' => ['checkadmin:id=1&name=aaa']], function () {

        //----------------------------
        // 后台首页
        Route::get('index', 'IndexController@index')->name('index');
        // 后台欢迎页
        //Route::get('welcome','IndexController@welcome')->name('welcome')->middleware('checkadmin');
        Route::get('welcome', 'IndexController@welcome')->name('welcome');
        // 退出登录
        Route::get('logout', 'IndexController@logout')->name('logout');

        //----------------------------
        // 用户管理
        // 用户列表
        Route::get('user/index','AdminController@index')->name('user.index');

        // 添加用户显示
        Route::get('user/create','AdminController@create')->name('user.create');
        // 添加用户处理
        Route::post('user/create','AdminController@store')->name('user.store');

        // 修改用户显示  修改一定要有参数，才能针对指定用户来修改
        Route::get('user/edit/{id}','AdminController@edit')->name('user.edit');
        // 修改用户处理
        Route::put('user/edit/{id}','AdminController@update')->name('user.update');



    });
});

