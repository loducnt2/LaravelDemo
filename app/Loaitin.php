<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Loaitin extends Model
{
    protected $table = "loaitins";

    // Muốn biết loaitin này thuộc Thể loại nào ?
    public function theloai(){
    	return $this->belongsTo('App\Theloai', 'idTheLoai', 'id');
    }

    // Trong loaitin này có bao nhiêu tin tức?
    public function tintuc(){
    	return $this->hasMany('App\Tintuc', 'idLoaiTin', 'id');
    }
}
