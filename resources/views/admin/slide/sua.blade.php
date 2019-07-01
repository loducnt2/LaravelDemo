@extends('admin.layout.index')

@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Slide
                            <small>Sửa</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                    @if(count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                                @foreach($errors->all() as $item)
                                    <li>{{ $item }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    @if(session('loi'))
                        <div class="alert alert-danger">
                            {{ session('loi') }}
                        </div>
                    @endif

                    @if(session('thongbao'))
                        <div class="alert alert-success">
                            {{ session('thongbao') }}
                        </div>
                    @endif

                        <form action="{{ url('admin/slide/sua/'.$slide->id) }}" method="POST" enctype="multipart/form-data">

                        <input type="hidden" name="_token" value="{{csrf_token()}}">

                            <div class="form-group">
                                <label>Tên</label>
                                <input class="form-control" name="Ten" value="{{ $slide->Ten }}" />
                            </div>
                            <div class="form-group">
                                <label>Hình</label>
                                <img src="{{  url('upload/slide/'.$slide->Hinh) }}" width="300px">
                                <input  type="file" class="form-control" name="Hinh" />
                            </div>
                            <div class="form-group">
                                <label>Nội dung</label>
                                <textarea name="NoiDung" class="form-control" rows="3">{{ $slide->NoiDung }}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Link</label>
                                <input class="form-control" value="{{ $slide->link }}" name="link" placeholder="Nhập vào tên..." />
                            </div>

                            <button type="submit" class="btn btn-default">Cập nhật</button>
                            <button type="reset" class="btn btn-default">làm mới</button>
                        <form>
                        <br /><br />
                        <p>
                            <a href="{{ url('admin/slide/danhsach') }}">Danh sách slide</a>
                        </p>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
@endsection