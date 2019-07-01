<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Theloai;

class TheLoaiController extends Controller
{
    public function getDanhSach(){
    	$theloai = Theloai::all();
    	return view('admin.theloai.danhsach', compact('theloai'));
    	//return view('backend.baiviet.index', 'theloai'=>$theloai);
    }

    public function getThem(){
    	return view('admin.theloai.them');
    }
    public function postThem(Request $request){

    	$validatedData = $request->validate([
	        'Ten' => 'required|unique:theloais|min:3|max:255'
	    ], 
    		[
    			'Ten.required'=>'Tên bắt buộc phải nhập !!!',
    			'Ten.unique'=>'Tên thể loại này đã tồn tại !!!',
    			'Ten.min'=>'Tên từ 2 - 100 ký tự nhé !!!',
    			'Ten.max'=>'Tên từ 2 - 100 ký tự nhé !!!',
    			
    		]
	    );

    	$theloai = new Theloai();
    	$theloai->Ten = $request->Ten;
    	$theloai->TenKhongDau = changeTitle($request->Ten);
    	//echo changeTitle($request->Ten);

    	$theloai->save();

    	return redirect('admin/theloai/them')->with('thongbao', 'Thêm mới thành công');
    }

    public function getSua($id){
    	$theloai = Theloai::find($id);
    	return view('admin.theloai.sua', compact('theloai'));
    }
    public function postSua(Request $request, $id){
    	$theloai = Theloai::find($id);

    	$validatedData = $request->validate([
	        'Ten' => 'required|unique:theloais|min:3|max:255'
	    ], 
    		[
    			'Ten.required'=>'Tên bắt buộc phải nhập !!!',
    			'Ten.unique'=>'Tên thể loại này đã tồn tại !!!',
    			'Ten.min'=>'Tên từ 2 - 100 ký tự nhé !!!',
    			'Ten.max'=>'Tên từ 2 - 100 ký tự nhé !!!',
    			
    		]
	    );

    	$theloai->Ten = $request->Ten;
    	$theloai->TenKhongDau = changeTitle($request->Ten);

    	$theloai->save();

    	return redirect('admin/theloai/sua/'.$id)->with('thongbao', 'Sửa thành công'); // Đúng rồi
    }

    public function getXoa($id){
    	$theloai = Theloai::find($id);

    	$theloai->delete();

    	return redirect('admin/theloai/danhsach')->with('thongbaoxoa', 'Bạn đã xóa thành công');
    }
}
