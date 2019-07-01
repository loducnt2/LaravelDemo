@extends('admin.layout.index')

@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Tin tức
                    <small>{{ $tintuc->TieuDe }}</small>
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
      
                <form action="{{ url('admin/tintuc/sua/'.$tintuc->id.'') }}" method="POST" enctype="multipart/form-data">

                <input type="hidden" name="_token" value="{{csrf_token()}}">

                    <div class="form-group">
                        <label>Thể loại</label>
                        <select class="form-control" name="theloai" id="theloai">
                            @foreach($theloai as $item)
                                <option
                                    @if($tintuc->loaitin->theloai->id == $item->id)
                                        {{ "selected" }}
                                    @endif
                                 value="{{ $item->id }}">{{ $item->Ten }}
                                 </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Loại tin</label>
                        <select class="form-control" name="loaitin" id="loaitin">
                            @foreach($loaitin as $item)
                                <option
                                    @if($tintuc->loaitin->id == $item->id)
                                        {{ "selected" }}
                                    @endif
                                value="{{ $item->id }}">{{ $item->Ten }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Tiêu đề</label>
                        <input class="form-control" value="{{ $tintuc->TieuDe }}" name="tieude" placeholder="Nhập tiêu đề..." />
                    </div>
                    <div class="form-group">
                        <label>Tóm tắt</label>
                        <input class="form-control" value="{{ $tintuc->TomTat }}" name="tomtat" placeholder="Nhập tóm tắt..." />
                    </div>

            <!-- 1. Nhúng file script ckeditor.js vào
            2. Thêm id="demo" class="ckeditor" vào mục textarea -->
                    <div class="form-group">
                        <label>Nội dung</label>
                        <textarea name="noidung" id="demo" class="form-control ckeditor" rows="3">{{ $tintuc->NoiDung }}</textarea>
                    </div>
                    <div class="form-group">
                        <label>Hình ảnh</label>
                        <img src="{{ url('upload/tintuc/'.$tintuc->Hinh.'') }}" width="100px" height="100px">
                        <input type="file" class="form-control" name="hinh" />
                    </div>
            <!-- Thêm enctype="multipart/form-data" vào form để upload ảnh -->

                    <div class="form-group">
                        <label>Nổi bật</label>
                        <label class="radio-inline">
                            <input name="noibat" value="0" 
                            @if($tintuc->NoiBat == 0 )
                                {{ "checked" }}
                            @endif
                             type="radio" />Không
                        </label>
                        <label class="radio-inline">
                            <input name="noibat" value="1"
                            @if($tintuc->NoiBat == 1 )
                                checked == ""
                            @endif
                             type="radio">Có
                        </label>
                    </div>
                    <!-- Có thể dùng {{ "checked" }} HOẶC checked == "" -->


                    <button type="submit" class="btn btn-default">Sửa</button>
                    <button type="reset" class="btn btn-default">Làm mới</button>
                <form>

                <a href="{{ url('admin/tintuc/danhsach') }}">Danh sách tin tức</a>
            </div>
        </div>
        <!-- /.row -->

        <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Bình luận
                            <small>Danh sách</small>
                        </h1>
                    </div>
                    @if(session('thongbaoxoacmt'))
                        <div class="alert alert-success">
                            {{session('thongbaoxoacmt')}}
                        </div>
                    @endif
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                                <th>ID</th>
                                <th>User</th>
                                <th>Nội dung</th>
                                <th>Ngày đăng</th>
                                <th>Xóa</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($tintuc->comment as $item)
                            <tr class="odd gradeX" align="center">
                                <td>{{ $item->id }}</td>
                                <td>{{ $item->TieuDe }}</td>
                                <td>{{ $item->user->name }}</td>
                                <td>{{ $item->created_at }}</td>
                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="/demolaravel/public/admin/comment/xoa/{{$item->id}}/{{$tintuc->id}}" onclick="return confirm('Bạn chắc chắn xóa chứ?')"> Delete</a></td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
                <!-- /.row -->

    </div>
    <!-- /.container-fluid -->
</div>

@section('script')
<script>
    $(document).ready(function(){
        $("#theloai").change(function(){
            var idTheLoai = $(this).val();
            $.get("loaitin/"+idTheLoai, function(data){
                $("#loaitin").html(data);
            });
        });
    });
</script>
@endsection


@endsection