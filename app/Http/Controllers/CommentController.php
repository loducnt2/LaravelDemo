<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;
use App\Tintuc;
use Auth;

class CommentController extends Controller
{
    public function postComment(Request $request, $id){
    	if(Auth::check()){
    		$validatedData = $request->validate([
    		'noidung' => 'required',
    		],
	    		[
	    		'noidung.required' => 'Nội dung không được bỏ trống !',
	    		]
    		);

	    	$tintuc = Tintuc::find($id);

	    	$cmt = new Comment();

	    	$cmt->idUser = Auth::user()->id;
	    	$cmt->idTinTuc = $id;
	    	$cmt->NoiDung = $request->noidung;

	    	$cmt->save();

	    	return redirect("tintuc/$id/$tintuc->TieuDeKhongDau.html")->with('thongbao', 'Bạn đã bình luận thành công!');
    	}else{
    		$tintuc = Tintuc::find($id);
    		return redirect("tintuc/$id/$tintuc->TieuDeKhongDau.html")->with('thongbaoloi', 'Bạn cần phải đăng nhập trước khi bình luận!');
    	}
    /*CÁCH KHÁC : 
     if(isset($nguoidung))  ở bên form Bình luận
		Nếu người dùng đăng nhập rồi thì mới hiển thị form bình luận
        KHông thì ẩn đi*/
    }
}
