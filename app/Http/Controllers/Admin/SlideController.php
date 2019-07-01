<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Slide;

class SlideController extends Controller
{
    public function getDanhsach(){
    	$slide = Slide::all();
    	return view('admin/slide/danhsach', compact('slide'));
    }

    public function getThem(){
    	return view('admin/slide/them');
    }
    public function postThem(Request $request){
    	$validatedData = $request->validate([
    		'Ten' => 'required',
    		'NoiDung' => 'required',
    		'link' => 'required',
    		],
	    		[
	    		'Ten.required' => 'Tên slide không được bỏ trống !',
	    		'NoiDung.required' => 'Nội dung không được bỏ trống !',
	    		'link.required' => 'link không được bỏ trống !'
	    		]
    		);

    	$slide = new Slide();
    	$slide->Ten = $request->Ten;

    	if($request->hasFile("Hinh")){
    		$fileAnh = $request->File("Hinh");

    		$duoi = $fileAnh->getClientOriginalExtension();
    		if($duoi != 'jpg' && $duoi != 'png'){
    			return redirect('admin/slide/them')->with('loi', 'Ảnh không hợp lệ!');
    		}

    		$name = $fileAnh->getClientOriginalName();
    		$newName = str_random("5")."_".$name;
    		while (file_exists("upload/slide".$newName)) {
    			$newName = str_random("5")."_".$name;
    		}

    		$fileAnh->move("upload/slide", $newName);

    		$slide->Hinh = $newName;
    	}
    	

    	$slide->NoiDung = $request->NoiDung;
    	$slide->link = $request->link;

    	$slide->save();

    	return redirect('admin/slide/them')->with('thongbao', 'Bạn đã thêm mới slide thành công !');
    }

    public function getSua($id){
        $slide = Slide::find($id);
        return view('admin/slide/sua', compact('slide'));
    }
    public function postSua(Request $request, $id){
        $validatedData = $request->validate([
            'Ten' => 'required',
            'NoiDung' => 'required',
            'link' => 'required',
            ],
                [
                'Ten.required' => 'Tên slide không được bỏ trống !',
                'NoiDung.required' => 'Nội dung không được bỏ trống !',
                'link.required' => 'link không được bỏ trống !'
                ]
            );
        /*echo "$request->Ten";*/

        $slide = Slide::find($id);
        $slide->Ten = $request->Ten;

        if($request->hasFile("Hinh")){
            $fileAnh = $request->File("Hinh");

            $duoi = $fileAnh->getClientOriginalExtension();
            if($duoi != 'jpg' && $duoi != 'png'){
                return redirect('admin/slide/them')->with('loi', 'Ảnh không hợp lệ!');
            }

            $name = $fileAnh->getClientOriginalName();
            $newName = str_random("5")."_".$name;
            while (file_exists("upload/slide".$newName)) {
                $newName = str_random("5")."_".$name;
            }

            $fileAnh->move("upload/slide", $newName);

            $slide->Hinh = $newName;
        }

        $slide->NoiDung = $request->NoiDung;
        $slide->link = $request->link;

        $slide->save();
        return redirect('admin/slide/sua/'.$id)->with('thongbao', 'Bạn đã cập nhật slide thành công !');

    }

    public function getXoa($id){
    	$slide = Slide::find($id);
    	$slide->delete($id);

        return redirect('admin/slide/danhsach')->with('thongbaoxoaslide', 'Bạn đã xóa slide thành công !');
    }
}
