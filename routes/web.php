<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('trangchu', function () {
    return view('pages.trangchu');
});

Route::get('trangchu', 'PagesController@trangchu');
Route::get('lienhe', 'PagesController@lienhe');
Route::get('loaitin/{id}/{TenKhongDau}.html', 'PagesController@loaitin');
Route::get('tintuc/{id}/{TieuDeKhongDau}.html', 'PagesController@tintuc');

Route::get('dangnhap', 'PagesController@getDangnhap');
Route::post('dangnhap', 'PagesController@postDangnhap');
Route::get('dangxuat', 'PagesController@dangxuat');

Route::post('comment/{id}', 'CommentController@postComment');

Route::get('nguoidung', 'PagesController@getNguoidung');
Route::post('nguoidung', 'PagesController@postNguoidung');

Route::get('dangky', 'PagesController@getDangky');
Route::post('dangky', 'PagesController@postDangky');

Route::post('timkiem', 'PagesController@postTimkiem');

Route::get('gioithieu', 'PagesController@gioithieu');

		/*- - - - - - - - - - - - - - - - - - - - - -  */

Route::get('admin/dangnhap', 'Admin\UserController@getDangnhapAdmin');
Route::post('admin/dangnhap', 'Admin\UserController@postDangnhapAdmin');

Route::get('admin/dangxuat', 'Admin\UserController@getDangxuatAdmin');


Route::group(['middleware'  => ['adminLogin']], function (){

	Route::group(['prefix'=>'admin'], function () {

	    Route::group(['prefix'=>'theloai'], function () {
	    	Route::get('danhsach', 'Admin\TheLoaiController@getDanhSach');

	    	Route::get('them', 'Admin\TheLoaiController@getThem');
	    	Route::post('them', 'Admin\TheLoaiController@postThem');

	    	Route::get('sua/{id}', 'Admin\TheLoaiController@getSua');
	    	Route::post('sua/{id}', 'Admin\TheLoaiController@postSua');

	    	Route::get('xoa/{id}', 'Admin\TheLoaiController@getXoa');
		});

		Route::group(['prefix'=>'loaitin'], function () {
	    	Route::get('danhsach', 'Admin\LoaiTinController@getDanhSach');

	    	Route::get('them', 'Admin\LoaiTinController@getThem');
	    	Route::post('them', 'Admin\LoaiTinController@postThem');

	    	Route::get('sua/{id}', 'Admin\LoaiTinController@getSua');
	    	Route::post('sua/{id}', 'Admin\LoaiTinController@postSua');

	    	Route::get('xoa/{id}', 'Admin\LoaiTinController@getXoa');
		});

		Route::group(['prefix'=>'tintuc'], function () {
	    	Route::get('danhsach', 'Admin\TinTucController@getDanhSach');

	    	Route::get('them', 'Admin\TinTucController@getThem');
	    	Route::post('them', 'Admin\TinTucController@postThem');

	    	Route::get('sua/{id}', 'Admin\TinTucController@getSua');
	    	Route::post('sua/{id}', 'Admin\TinTucController@postSua');

	    	Route::get('xoa/{id}', 'Admin\TinTucController@getXoa');

	    	Route::get('loaitin/{idTheLoai}', 'Admin\AjaxController@getLoaiTin');
	    	Route::get('sua/loaitin/{idTheLoai}', 'Admin\AjaxController@getLoaiTin');
		});

		Route::group(['prefix'=>'comment'], function () {
	    	Route::get('xoa/{id}/{idTinTuc}', 'Admin\CommentController@getXoa');
		});

		Route::group(['prefix'=>'slide'], function () {
	    	Route::get('danhsach', 'Admin\SlideController@getDanhSach');

	    	Route::get('them', 'Admin\SlideController@getThem');
	    	Route::post('them', 'Admin\SlideController@postThem');

	    	Route::get('sua/{id}', 'Admin\SlideController@getSua');
	    	Route::post('sua/{id}', 'Admin\SlideController@postSua');

	    	Route::get('xoa/{id}', 'Admin\SlideController@getXoa');
		});

		Route::group(['prefix'=>'user'], function () {
	    	Route::get('danhsach', 'Admin\UserController@getDanhSach');

	    	Route::get('them', 'Admin\UserController@getThem');
	    	Route::post('them', 'Admin\UserController@postThem');

	    	Route::get('sua/{id}', 'Admin\UserController@getSua');
	    	Route::post('sua/{id}', 'Admin\UserController@postSua');

	    	Route::get('xoa/{id}', 'Admin\UserController@getXoa');
		});
	});

});


