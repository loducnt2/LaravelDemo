<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Comment;

class CommentController extends Controller
{
    public function getXoa($id, $idTinTuc){
    	$comment = Comment::find($id);

    	/*echo "string";*/
    	$comment->delete($id);

    	return redirect('admin/tintuc/sua/'.$idTinTuc)->with('thongbaoxoacmt', 'Xóa bình luận thành công !');

    }
}
