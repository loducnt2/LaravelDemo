@extends('admin.layout.index')

@section('tieude')
    Danh sách tin tức
@endsection

@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Tin tức
                            <small>Danh sách</small>
                        </h1>
                    </div>
                    <div class="col-lg-12">
                        <div class="alert alert-success">
                            @if(session("thongbaoxoa"))
                                {{ session("thongbaoxoa") }}
                            @endif
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                                <th>ID</th>
                                <th>Tiêu đề</th>
                                <th>Tóm tắt</th>
                                <th>Nội dung</th>
                                <th>Nổi bật</th>
                                <th>Số lượt xem</th>
                                <th>Loại tin</th>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($tintuc as $item)
                            <tr class="odd gradeX" align="center">
                                <td>{{ $item->id }}</td>
                                <td>
                                    <p>
                                        {{ $item->TieuDe }}
                                    </p>
                                    <p>
                                        <!-- <img src="{{ url('upload/tintuc/'.$item->Hinh ) }}" width="100px" height="100px"> -->
                                        <img src='{{ url("upload/tintuc/".$item->Hinh ) }}' width="100px" height="100px">
                                    </p>
                                </td>
                                <td>{{ $item->TomTat }}</td>
                                <td>{{ $item->NoiDung }}</td>
                                <td>
                                    @if($item->NoiBat == 1)
                                        {{"Có"}}    
                                    @else
                                        {{"Không"}}    
                                    @endif
                                </td>
                                <td>{{ $item->SoLuotXem }}</td>
                                <td>{{ $item->loaitin->Ten }}</td>

                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href='{{ url("admin/tintuc/xoa/".$item->id) }}' onclick="return confirm('Bạn chắc chắn xóa chứ?')"> Delete</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href='{{ url("admin/tintuc/sua/".$item->id) }}'>Edit</a></td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
@endsection