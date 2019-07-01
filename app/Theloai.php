<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Theloai extends Model
{
    protected $table = "theloais";

    public function loaitin(){
    	return $this->hasMany('App\Loaitin', 'idTheLoai', 'id');
    }

    // Trong theloais có bao nhiêu tin tức 
    	// Phải thông qua bảng loaitins
    public function tintuc(){
    	return $this->hasManyThrough('App\Tintuc', 'App\Loaitin', 'idTheLoai', 'idLoaiTin', 'id');
    }
}
