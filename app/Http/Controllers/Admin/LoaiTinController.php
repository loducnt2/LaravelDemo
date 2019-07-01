<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Loaitin;
use App\Theloai;

class LoaiTinController extends Controller
{
    public function getDanhSach(){
    	$loaitin = Loaitin::all();
    	return view('admin.loaitin.danhsach', ['loaitin'=>$loaitin]);
    }

    public function getThem(){
    	$theloai = Theloai::all();
    	return view('admin.loaitin.them', compact('theloai'));
    }
    public function postThem(Request $request){
    	$validatedData = $request->validate([
	        'Ten' => 'required|unique:loaitins|min:1|max:255'
	    ], 
    		[
    			'Ten.required'=>'Tên bắt buộc phải nhập !!!',
    			'Ten.unique'=>'Tên loại tin này đã tồn tại !!!',
    			'Ten.min'=>'Tên từ 2 - 100 ký tự nhé !!!',
    			'Ten.max'=>'Tên từ 2 - 100 ký tự nhé !!!',
    		]
	    );

    	$loaitin = new Loaitin();
    	$loaitin->idTheLoai = $request->theloai;
    	$loaitin->Ten = $request->Ten;
    	$loaitin->TenKhongDau = changeTitle($request->Ten);

    	$loaitin->save();
    	return redirect('admin/loaitin/them')->with('thongbao', 'Thêm mới thành công!');
    }

    public function getSua($id){
    	$theloai = Theloai::all();
    	$loaitin = Loaitin::find($id);
    	return view('admin.loaitin.sua', compact('theloai', 'loaitin'));
    }
    public function postSua(Request $request, $id){
    	$validatedData = $request->validate([
	        'Ten' => 'required|unique:loaitins|min:1|max:255'
	    ], 
    		[
    			'Ten.required'=>'Tên bắt buộc phải nhập !!!',
    			'Ten.unique'=>'Tên loại tin này đã tồn tại !!!',
    			'Ten.min'=>'Tên từ 2 - 100 ký tự nhé !!!',
    			'Ten.max'=>'Tên từ 2 - 100 ký tự nhé !!!',
    			
    		]
	    );

	    $loaitin = Loaitin::find($id);
	    $loaitin->idTheLoai = $request->theloai;
	    $loaitin->Ten = $request->Ten;
	    $loaitin->TenKhongDau = changeTitle($request->Ten);
	    $loaitin->save();

	    return redirect('admin/loaitin/sua/'.$id)->with('thongbao', 'Bạn đã sửa thành công!');
    }

    public function getXoa($id){
    	$loaitin = Loaitin::find($id);

    	$loaitin->delete();
		return redirect('admin/loaitin/danhsach')->with('thongbao', 'Bạn đã xóa thành công!');
    }
}
