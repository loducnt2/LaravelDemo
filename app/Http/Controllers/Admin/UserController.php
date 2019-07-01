<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\User;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    /*Phần đăng nhập phải sử dụng use Illuminate\Support\Facades\Auth;*/
    public function getDangnhapAdmin(){
        return view('admin.dangnhap');
    }
    public function postDangnhapAdmin(Request $request){
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
            return redirect('admin/theloai/danhsach');
        }else{
            return redirect('admin/dangnhap')->with('thongbao', 'Đăng nhập không thành công, sai tài khoản hoặc mật khẩu!');
        }
    }

    public function getDangxuatAdmin(){
        Auth::logout();

        return redirect('admin/dangnhap');
    }


    public function getDanhsach(){
    	$user = User::all();
    	return view('admin/user/danhsach', compact('user'));
    }

    public function getThem(){
    	return view('admin/user/them');
    }
    public function postThem(Request $request){
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
    			'email.unique'=>'Email này đã tồn tại !!!',

    			'password.required'=>'Mật khẩu bắt buộc phải nhập !!!',
    			'password.min'=>'Mật khẩu phải từ 6 ký tự trở lên nhé !!!',

    			'passwordAgain.required'=>'Nội dung bắt buộc phải nhập !!!',
    			'passwordAgain.same'=>'Mật khẩu xác nhận chưa đúng !!!'
    		]
	    );   

	    $user = new User();
	    $user->name = $request->name;
	    $user->email = $request->email;

	    $user->password = bcrypt($request->password);

	    $user->quyen = $request->quyen;

	    $user->save();
	    return redirect('admin/user/them')->with('thongbao', 'Thêm mới user thành công!');
    }

    public function getSua($id){
    	$user = User::find($id);
    	return view('admin/user/sua', compact('user'));

    }
    public function postSua(Request $request, $id){
    	$user = User::find($id);

    	$validatedData = $request->validate([
	        'name' => 'required|min:2',
	    ], 
    		[
    			'name.required'=>'Tên bắt buộc phải nhập !!!',
    			'name.min'=>'Tên từ 2 trở lên ký tự nhé !!!'
    		]
	    ); 

    	/*echo "$request->name";*/

    	$user->name = $request->name;

    	if($request->changePassword == "on"){
    		$validatedData = $request->validate([
	        'password' => 'required|min:6',
	        'passwordAgain' => 'required|same:password'

		    ], 
	    		[
	    			'password.required'=>'Mật khẩu bắt buộc phải nhập !!!',
	    			'password.min'=>'Mật khẩu phải từ 6 ký tự trở lên nhé !!!',

	    			'passwordAgain.required'=>'Nội dung bắt buộc phải nhập !!!',
	    			'passwordAgain.same'=>'Mật khẩu xác nhận chưa đúng !!!'
	    		]
		    ); 
    		$user->password = bcrypt($request->password);
    	}
	    
	    $user->quyen = $request->quyen;

	    $user->save();
	    return redirect('admin/user/sua/'.$id)->with('thongbao', 'Chỉnh sửa user thành công!');
        

    }

    public function getXoa($id){
    	$user = User::find($id);
    	$user->delete();
    	return redirect('admin/user/danhsach')->with('thongbaoxoa', 'Chỉnh sửa user thành công!');
    }
}
