@extends('admin.layout.index')

@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Slide
                            <small>Danh sách</small>
                        </h1>
                    </div>
                    <div class="col-lg-12">
                        @if(session('thongbaoxoaslide'))
                            <div class="alert alert-success">
                                {{ session('thongbaoxoaslide') }}
                            </div>
                        @endif
                    </div>
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                                <th>ID</th>
                                <th>Tên</th>
                                <th>Hình</th>
                                <th>Nội dung</th>
                                <th>Link</th>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                        @foreach($slide as $item)
                            <tr class="odd gradeX" align="center">
                                <td>{{ $item->id }}</td>
                                <td>{{ $item->Ten }}</td>
                                <td>
                                <img src='{{ url("upload/slide/$item->Hinh") }}' width="300px" height="100px" width="50px" height="50px"> 
                                </td>
                                <td>{{ $item->NoiDung }}</td>
                                <td>{{ $item->link }}</td>

                                <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="{{ url('admin/slide/xoa/'.$item->id) }}" onclick="return confirm('Bạn chắc xóa chứ?')"> Delete</a></td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="{{ url('admin/slide/sua/'.$item->id) }}">Edit</a></td>
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