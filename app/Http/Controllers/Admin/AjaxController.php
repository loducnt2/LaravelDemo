<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Loaitin;
use App\Theloai;

class AjaxController extends Controller
{
    public function getLoaiTin($idTheLoai){
    	$loaitin = Loaitin::where('idTheLoai', $idTheLoai)->get();

    	/*echo "<pre>";
    		echo $loaitin;
    	echo "</pre>";
    	*/
    	
    	foreach ($loaitin as $lt) {
    		echo "<option value='".$lt->id."'>".$lt->Ten."</option>";
    	}
    }
}

?>  <!-- Vì ở trên có cả PHP và HTML nên ở đây có thẻ đóng -->