@extends('admin.layout.index')

@section('tieude')
    Danh sách loại tin
@endsection

@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Loại tin
                            <small>Danh sách</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                                <th>ID</th>
                                <th>Tên loại tin</th>
                                <th>Tên không dấu</th>
                                <th>Thể loại</th>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($loaitin as $item)
                            <tr class="odd gradeX" align="center">
                                <td>{{ $item->id }}</td>
                                <td>{{ $item->Ten }}</td>
                                <td>{{ $item->TenKhongDau }}</td>
                                <td>{{ $item->theloai->Ten }}</td>

                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="{{ url('admin/loaitin/xoa/'. $item->id ) }}" onclick="return confirm('Bạn chắc chắn muốn xóa chứ?')"> Delete</a></td>

                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{{ url('admin/loaitin/sua/'. $item->id ) }}">Edit</a></td>
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