@extends('admin.layout.index')

@section('tieude')
    Thêm mới tin tức
@endsection

@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Tin tức
                    <small>Thêm mới</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-7" style="padding-bottom:120px">

                @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                @if(session('thongbao'))
                    <div class="alert alert-success">
                        {{session('thongbao')}}
                    </div>
                @endif

                @if(session('loi'))
                    <div class="alert alert-danger">
                        {{session('loi')}}
                    </div>
                @endif
      
                <form action="{{ url('admin/tintuc/them') }}" method="POST" enctype="multipart/form-data">

                <input type="hidden" name="_token" value="{{csrf_token()}}">

                    <div class="form-group">
                        <label>Thể loại</label>
                        <select class="form-control" name="theloai" id="theloai">
                            @foreach($theloai as $tl)
                                <option value="{{ $tl->id }}">{{ $tl->Ten }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Loại tin</label>
                        <select class="form-control" name="loaitin" id="loaitin">
                            <!-- @foreach($loaitin as $item)
                                <option value="{{ $item->id }}">{{ $item->Ten }}</option>
                            @endforeach -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Tiêu đề</label>
                        <input class="form-control" name="tieude" placeholder="Nhập tiêu đề..." />
                    </div>
                    <div class="form-group">
                        <label>Tóm tắt</label>
                        <input class="form-control" name="tomtat" placeholder="Nhập tóm tắt..." />
                    </div>

            <!-- 1. Nhúng file script ckeditor.js vào
            2. Thêm id="demo" class="ckeditor" vào mục textarea -->
                    <div class="form-group">
                        <label>Nội dung</label>
                        <textarea name="noidung" id="demo" class="form-control ckeditor" rows="3"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Hình ảnh</label>
                        <input type="file" class="form-control" name="hinh" />
                    </div>
            <!-- Thêm enctype="multipart/form-data" vào form để upload ảnh -->

                    <div class="form-group">
                        <label>Nổi bật</label>
                        <label class="radio-inline">
                            <input name="noibat" value="0" checked="true" type="radio">Không
                        </label>
                        <label class="radio-inline">
                            <input name="noibat" value="1" type="radio">Có
                        </label>
                    </div>


                    <button type="submit" class="btn btn-default">Thêm mới</button>
                    <button type="reset" class="btn btn-default">Làm mới</button>
                <form>

                <a href="{{ url('admin/tintuc/danhsach') }}">Danh sách tin tức</a>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
@endsection

@section('script')
    <script>
        $(document).ready(function(){
            /*alert('Đã chạy được nhé ');*/
            /*
            1. Gán ID cho trường theloai va loaitin
            */


            var idTheLoai = $("#theloai").val();
            $.get("loaitin/"+idTheLoai, function(data){
                $("#loaitin").html(data);
            });

            /*2. Bắt sự kiện cái thằng Theloai thay đổi*/
            $("#theloai").change(function(){
                var idTheLoai = $(this).val();
                /*$(this).val() : Lấy chính giá tị của nó nó chính = $(#theloai)*/
                /*alert(idTheLoai);*/

            /*3. Tạo 1 trang ajax và truyền theo phương thức get() và gọi cái trang đó lên*/
                $.get("loaitin/"+idTheLoai, function(data){
                    /*Khi lấy được dữ liệu (từ idTheLoai) về nó sẽ trả vào trong data
                    Sau đó ta gán cái #loaitin  =  dữ liệu data vừa lấy được đấy*/

                    /*alert('đasad');*/
                    $("#loaitin").html(data);

                    /*Tạo cái route - admin/ajax/loaitin/id bên trang route và viết 
                    code hàm lấy dữ liệu từ cái id của idTheLoai (Là những cái loaitin có idTheLoai = idTheLoai đang xét*/

                });
            });
        });
    </script>
@endsection