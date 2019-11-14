<?php
// 后台路由
Route::group(['namespace' => 'Admin', 'prefix' => 'admin', 'as' => 'admin.'], function () {
    // 后台登录显示
    Route::get('login', 'LoginController@index')->name('login');
    // 后台登录处理
    Route::post('login', 'LoginController@login')->name('login');



    // 中间件中以 中间件名称：传过去的参数
    Route::group(['middleware' => ['checkadmin']], function () {

        //----------------------------
        // 后台首页
        Route::get('index', 'IndexController@index')->name('index');
        // 后台欢迎页
        //Route::get('welcome','IndexController@welcome')->name('welcome')->middleware('checkadmin');
        Route::get('welcome', 'IndexController@welcome')->name('welcome');
        // 退出登录
        Route::get('logout', 'IndexController@logout')->name('logout');
    });
});
