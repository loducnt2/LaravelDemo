<?php

use Illuminate\Database\Seeder;

class LoaiTinTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('loaitins')->insert([
        	['idTheLoai'=>'1','Ten' => 'Giáo Dục','TenKhongDau' => 'Giao-Duc', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'1','Ten' => 'Nhịp Điệu Trẻ','TenKhongDau' => 'Nhip-Dieu-Tre', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'1','Ten' => 'Du Lịch','TenKhongDau' => 'Du-Lich', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'1','Ten' => 'Du Học','TenKhongDau' => 'Du-Hoc', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'2','Ten' => 'Cuộc Sống Đó Đây','TenKhongDau' => 'Cuoc-Song-Do-Day', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'2','Ten' => 'Ảnh','TenKhongDau' => 'Anh', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'2','Ten' => 'Người Việt 5 Châu','TenKhongDau' => 'Nguoi-Viet-5-Chau', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'2','Ten' => 'Phân Tích','TenKhongDau' => 'Phan-Tich', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'3','Ten' => 'Chứng Khoán','TenKhongDau' => 'Chung-Khoan', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'3','Ten' => 'Bất Động Sản','TenKhongDau' => 'Bat-Dong-San', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'3','Ten' => 'Doanh Nhân','TenKhongDau' => 'Doanh-Nhan', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'3','Ten' => 'Quốc Tế','TenKhongDau' => 'Quoc-Te', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'3','Ten' => 'Mua Sắm','TenKhongDau' => 'Mua-Sam', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'3','Ten' => 'Doanh Nghiệp Viết','TenKhongDau' => 'Doanh-Nghiep-Viet', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'4','Ten' => 'Hoa Hậu','TenKhongDau' => 'Hoa-Hau', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'4','Ten' => 'Nghệ Sỹ','TenKhongDau' => 'Nghe-Sy', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'4','Ten' => 'Âm Nhạc','TenKhongDau' => 'Am-Nhac', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'4','Ten' => 'Thời Trang','TenKhongDau' => 'Thoi-Trang', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'4','Ten' => 'Điện Ảnh','TenKhongDau' => 'Dien-Anh', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'4','Ten' => 'Mỹ Thuật','TenKhongDau' => 'My-Thuat', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'5','Ten' => 'Bóng Đá','TenKhongDau' => 'Bong-Da', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'5','Ten' => 'Tennis','TenKhongDau' => 'Tennis', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'5','Ten' => 'Chân Dung','TenKhongDau' => 'Chan-Dung', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'5','Ten' => 'Ảnh','TenKhongDau' => 'Anh-TT', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),],
        	['idTheLoai'=>'6','Ten' => 'Hình Sự','TenKhongDau' => 'Hinh-Su', 'created_at' => new DateTime(), 'updated_at' => new DateTime(),]
    	]);
    }
}
