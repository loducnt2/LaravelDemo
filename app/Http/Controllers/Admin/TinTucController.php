<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Tintuc;
use App\Loaitin;
use App\Theloai;
use App\Comment;

class TinTucController extends Controller
{
    public function getDanhsach(){
    	$tintuc = Tintuc::orderBy('id','DESC')->get();
    	return view('admin.tintuc.danhsach', ['tintuc'=>$tintuc]);
    }

    public function getThem(){
    	$theloai = Theloai::all();
    	$loaitin = Loaitin::all();
    	return view('admin.tintuc.them', ['loaitin'=>$loaitin, 'theloai'=>$theloai]);
    }
    public function postThem(Request $request){
    	$validatedData = $request->validate([
	        'tieude' => 'required|min:2|unique:tintucs',
	        'tomtat' => 'required|min:2',
	        'noidung' => 'required|min:2'

	    ], 
    		[
    			'tieude.required'=>'Tiêu đề bắt buộc phải nhập !!!',
    			'tieude.min'=>'Tên từ 2 trở lên ký tự nhé !!!',
    			'Ten.unique'=>'Tiêu đề này đã tồn tại !!!',

    			'tomtat.required'=>'Tóm tắt bắt buộc phải nhập !!!',
    			'tomtat.min'=>'Tên từ 2 trở lên ký tự nhé !!!',

    			'noidung.required'=>'Nội dung bắt buộc phải nhập !!!',
    			'noidung.min'=>'Tên từ 2 trở lên ký tự nhé !!!',
    		]
	    );
	    $tintuc = new Tintuc();
	    $tintuc->TieuDe = $request->tieude;
	    $tintuc->TieuDeKhongDau = changeTitle($request->TieuDe);
	    $tintuc->idLoaiTin = $request->loaitin;
	    $tintuc->TomTat = $request->tomtat;
	    $tintuc->NoiDung = $request->noidung;

	    if($request->hasFile("hinh")){
	    	$fileAnh = $request->File("hinh");

	    	$duoi = $fileAnh->getClientOriginalExtension();
	    	if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg'){
	    		return redirect('admin/tintuc/them')->with('loi', 'Ảnh không hợp lệ');
	    	}

	    	$name = $fileAnh->getClientOriginalName();
	    	$newName = str_random(5)."_".$name;
	    	while(file_exists("upload/tintuc".$newName)){
	    		$newName = str_random(5)."_".$name;
	    	}
	    	$fileAnh->move("upload/tintuc", $newName);
	    	$tintuc->Hinh = $newName;

	    	/*echo "$Hinh";*/
	    }else{
	    	$tintuc->Hinh = "no-image.png";
	    }

	    $tintuc->NoiBat = $request->noibat;

	    $tintuc->save();
	    return redirect('admin/tintuc/them')->with('thongbao', 'Thêm mới thành công');
    }

    public function getSua($id){
    	$tintuc = Tintuc::find($id);
    	$theloai = Theloai::all();
    	$loaitin = Loaitin::all();
    	return view('admin.tintuc.sua',['tintuc'=>$tintuc, 'theloai'=>$theloai, 'loaitin'=>$loaitin]);
    }
    public function postSua(Request $request, $id){
    	$validatedData = $request->validate([
    		'tieude' => 'required|min:2',
	        'tomtat' => 'required|min:2',
	        'noidung' => 'required|min:2'
    		],
    		[
    		'tieude.required' => 'Tiêu đề không được bỏ trống !',
    		'tieude.min' => 'Tiêu đề tối thiểu 2 ký tự !',

    		'tomtat.required' => 'Tóm tắt không được bỏ trống !',
    		'tomtat.min' => 'Tóm tắt tối thiểu 2 ký tự ! !',

    		'noidung.required' => 'Nội dung không được bỏ trống !',
    		'noidung.min' => 'Nội dung tối thiểu 2 ký tự !'
    		]);

    	$tintuc = Tintuc::find($id);

    	$tintuc->TieuDe = $request->tieude;
    	$tintuc->TieuDeKhongDau = changeTitle($request->tieude);
    	$tintuc->TomTat = $request->tomtat;
    	$tintuc->NoiDung = $request->noidung;

    	if($request->hasFile("hinh")){
    		$fileAnh = $request->file("hinh");

    		$duoi = $fileAnh->getClientOriginalExtension();
    		if($duoi != "jpg" && $duoi != "png"){
    			return redirect('admin/tintuc/sua/'.$id)->with('loi', 'Ảnh không hợp lệ !');
    		}

    		$name = $fileAnh->getClientOriginalName();
    		$newName = str_random(5)."_".$name;
    		while (file_exists("upload/tintuc".$newName)) {
    			$newName = str_random(5)."_".$name;
    		}

    		$fileAnh->move("upload/tintuc", $newName);
			unlink("upload/tintuc/". $tintuc->Hinh);
    		$tintuc->Hinh = $newName;
    	}

    	$tintuc->NoiBat = $request->noibat;
    	$tintuc->idLoaiTin = $request->loaitin;

    	$tintuc->save();
    	return redirect('admin/tintuc/sua/'.$id)->with('thongbao', 'Cập nhật thành công tin tức !');
    }

    public function getXoa($id){
    	$tintuc = Tintuc::find($id);

    	$tintuc->delete();

    	return redirect('admin/tintuc/danhsach')->with('thongbaoxoa', 'Xóa tin tức thành công !');

    }
}
