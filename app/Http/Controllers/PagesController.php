<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Theloai;
use App\Slide;
use App\Loaitin;
use App\Tintuc;

use App\User;
use Auth;

use View;

class PagesController extends Controller
{
	function __construct(){
		$theloai = Theloai::all();
		$slide = Slide::all();

    	View::share('theloai', $theloai);
    	View::share('slide', $slide);

        /*Kiểm tra đăng nhập*/
        View::composer('*', function ($view) {
            $view->with('nguoidung', Auth::user());
        });

	} // Cần khai báo use View để dùng được View share;

    function trangchu(){
    	return view('pages.trangchu');
    }

    /*Ta có trang lienhe va trangchu đều có menu nên mỗi khi tạo một trang mới mà có menu
    	thì ta phải khai báo TheLoai va có biến $theloai để lấy được dữ liệu
	=> Cần sử dụng View::share
    	*/
    function lienhe(){
    	/*$theloai = Theloai::all();
    	return view('pages.lienhe', compact('theloai'));*/

    	return view('pages.lienhe');
    }

    function loaitin($id){
    	$loaitin = Loaitin::find($id);
    	$tintuc = Tintuc::where('idLoaiTin', $id)->paginate(5);
    	return view('pages.loaitin', compact('loaitin', 'tintuc'));
    }

    function tintuc($id){
    	$tintuc = Tintuc::find($id);
    	$tinnoibat = Tintuc::where('NoiBat', 1)->take(4)->get();
    	$tinlienquan = Tintuc::where('idLoaiTin', $tintuc->idLoaiTin)->take(4)->get();

    	return view('pages.tintuc', compact('tintuc', 'tinnoibat', 'tinlienquan'));
    }

    /*   --------------------- ĐĂNG NHẬP - ĐĂNG XUẤT  --------------   */
    function getDangnhap(){
        return view('pages.dangnhap');
    }
    function postDangnhap(Request $request){
        $validatedData = $request->validate([
            'email' => 'required',
            'password' => 'required|min:6'
        ], 
            [
                'email.required'=>'Bạn chưa nhập email !!!',
                'password.required'=>'Bạn chưa nhập mật khẩu !!!',
                'password.min'=>'Mật khẩu ít nhất 6 ký tự !!!'
            ]
        );

        if (Auth::attempt(['email'=>$request->email, 'password'=>$request->password])) {
            return redirect('trangchu');
        }else{
            return redirect('dangnhap')->with('thongbao', 'Đăng nhập không thành công!');
        }
    }
    function dangxuat(){
        Auth::logout();
        return redirect('trangchu');
    }

    /*   --------------------- NGƯỜI DÙNG  --------------   */
    function getNguoidung(){
        /*Cách 1: Khai báo đối tượng Người dùng đang đăng nhập
        $user = Auth::user();
        return view('pages.nguoidung', compact('user'));*/

        /*Cách 2: Không cần khai báo . Vì trên construct mình đã khai báo view share biến 
        nguoidung đang đăng nhập rồi nên sang bên trang nguoidung mình chỉ cần lấy cái view share đó thôi*/
        return view('pages.nguoidung');
    }
    function postNguoidung(Request $request){

        $user = Auth::user();

        $validatedData = $request->validate([
            'name' => 'required|min:2',
        ], 
            [
                'name.required'=>'Tên bắt buộc phải nhập !!!',
                'name.min'=>'Tên từ 2 trở lên ký tự nhé !!!'
            ]
        );

        $user->name = $request->name;

        if($request->checkpassword == "on"){
            $validatedData = $request->validate([
            'password' => 'required|min:6',
            'passwordAgain' => 'required|same:password'

            ], 
                [
                    'password.required'=>'Mật khẩu bắt buộc phải nhập !!!',
                    'password.min'=>'Mật khẩu phải từ 6 ký tự trở lên nhé !!!',

                    'passwordAgain.required'=>'Mật khẩu xác nhận bắt buộc phải nhập !!!',
                    'passwordAgain.same'=>'Mật khẩu xác nhận chưa đúng !!!'
                ]
            ); 
            $user->password = bcrypt($request->password);
        }

        $user->save();
        return redirect('nguoidung')->with('thongbao', 'Bạn đã chỉnh sửa tài khoản thành công!');
    }

    /*   --------------------- DANG KY --------------   */
    function getDangky(){
        return view('pages.dangky');
    }

    function postDangky(Request $request){
        $validatedData = $request->validate([
            'name' => 'required|min:2',
            'email' => 'required|unique:users',
            'password' => 'required|min:6',
            'passwordAgain' => 'required|same:password'
            ], 
                [
                    'name.required'=>'Tên bắt buộc phải nhập !!!',
                    'name.min'=>'Tên từ 2 trở lên ký tự nhé !!!',
                    'email.required'=>'Email bắt buộc phải nhập !!!',
                    'email.unique'=>'Email này đã tồn tại ...',
                    'password.required'=>'Mật khẩu bắt buộc phải nhập !!!',
                    'password.min'=>'Mật khẩu phải từ 6 ký tự trở lên nhé !!!',

                    'passwordAgain.required'=>'Mật khẩu xác nhận bắt buộc phải nhập !!!',
                    'passwordAgain.same'=>'Mật khẩu xác nhận chưa đúng !!!'
                ]
            ); 

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->quyen = 0;

        $user->save();

        return redirect('dangky')->with('thongbao','Chúc mừng bạn đã đăng ký thành công!');
    }

    /*   --------------------- TIM KIEM --------------   */
    function postTimkiem(Request $request){
        $tukhoa = $request->tukhoa;

        $tintuc = Tintuc::where('TieuDe', 'like', "%$tukhoa%")->orWhere('TomTat', 'like', "%$tukhoa%")->orWhere('NoiDung', 'like', "%$tukhoa%")->take(30)->paginate(5);

        return view('pages.timkiem', compact('tintuc', 'tukhoa'));
    }

    function gioithieu(){
        return view('pages.gioithieu');
    }

    
}
