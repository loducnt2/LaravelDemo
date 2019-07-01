@extends('admin.layout.index')

@section('tieude')
    Chỉnh sửa loại tin
@endsection

@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sửa
                            <small>{{ $loaitin->Ten }}</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $err)
                                        <li>{{ $err }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        @if(session('thongbao'))
                            <div class="alert alert-success">
                                {{ session('thongbao') }}
                            </div>
                        @endif

                        <form action="{{ url('admin/loaitin/sua/'. $loaitin->id ) }}" method="POST">

                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                            <div class="form-group">
                                <label>Thể loại</label>
                                <select class="form-control" name="theloai">
                                @foreach($theloai as $item)
                                    <option 
                                        @if($loaitin->idTheLoai == $item->id)
                                            {{"selected"}}
                                        @endif 
                                        value="{{ $item->id }}">{{ $item->Ten }}</option>
                                @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Tên</label>
                                <input class="form-control" value="{{ $loaitin->Ten }}" name="Ten" placeholder="Tên loại tin..." />
                            </div>
                            
                            <button type="submit" class="btn btn-default">Cập nhật</button>
                            <button type="reset" class="btn btn-default">Làm mới</button>
                        <form>

                        <br> <br>
                        <a href="{{ url('admin/loaitin/danhsach') }}">Danh sách loại tin</a>
                    </div> 
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
@endsection