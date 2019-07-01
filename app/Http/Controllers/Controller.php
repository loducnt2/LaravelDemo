<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;;

use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Auth;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    function __construct(){
    	//$this->DangNhap();
        //View::share('name', 'Cudlo');
    }
    
    /*- Vì cái __construct này là hàm khởi tạo nên mỗi lần ta gọi 1 controller bất kỳ thì nó đều gọi cái thăng Controller này ra 
    - mà khi gọi cái thằng Controller này ra thì nó sẽ tự động chạy trước cái $this->DangNhap() này 
    - Mà $this->DangNhap() này nó lại kiểm tra xem chúng ta có đang đăng nhập hay không
    - Nếu có đang đăng nhập thì nó sẽ sử dụng cái view()->share và đưa cái ĐỐI TƯỢNG ĐANG ĐĂNG NHẬP có tên là current_user đến tất cả các view 


    function DangNhap(){
    	//Kiểm tra người dùng có đang đăng nhập hay không?
    	//- Phải use thư viện Auth : use Illuminate\Support\Facades\Auth;
    	if(Auth::check()) {
    		view()->share("current_user", "dhaksd"); // view()->share đến tất cả các trang đăng nhập
    		//Truyển 1 biến current_user, và đối tượng đang đăng nhập đi
    	}
    }*/


}
