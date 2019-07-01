@extends('admin.layout.index')

@section('content')
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Người dùng
                            <small>{{ $user->name }}</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">

                    @if(count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                                @foreach($errors->all() as $err)
                                    <ul>{{ $err }}</ul>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    @if(session('thongbao'))
                        <div class="alert alert-success">
                            {{ session('thongbao') }}
                        </div>
                    @endif

                
                        <form action="{{ url('admin/user/sua/'.$user->id) }}" method="POST">

                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                            <div class="form-group">
                                <label>Tên</label>
                                <input class="form-control" value="{{ $user->name }}" name="name" placeholder="Please Enter Your Name..." />
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" value="{{ $user->email }}" readonly="true" class="form-control" name="email" placeholder="Please Enter Your Email..." />
                            </div>
                            <div class="form-group">

                                <input type="checkbox" id="changePassword" name="changePassword">

                                <label>Đổi mật khẩu</label>
                                <input type="password" class="form-control password" name="password" placeholder="Please Enter Your Password..." disabled="" />
                            </div>
                            <div class="form-group">
                                <label>Nhập lại mật khẩu</label>
                                <input type="password" class="form-control password" name="passwordAgain" placeholder="Please Enter Your Password..." disabled="" />
                            </div>
                            <div class="form-group">
                                <label>Quyèn</label>
                                <label class="radio-inline">
                                    <input name="quyen" value="0"
                                    @if($user->quyen == 0)
                                        {{ "checked" }}
                                    @endif
                                    type="radio">Member
                                </label>
                                <label class="radio-inline">
                                    <input name="quyen" value="1" 
                                    @if($user->quyen == 1)
                                        {{ "checked" }}
                                    @endif
                                      type="radio">Admin
                                </label> 
                            </div>
                            <button type="submit" class="btn btn-default">User Edit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
@endsection

@section('script')
<script type="text/javascript">
    /*1. Gán id hoặc class cho thẻ input checkbox và 2 thẻ input password*/
    $(document).ready(function(){
        $("#changePassword").change(function(){
            if($(this).is(":checked")){
                $(".password").removeAttr('disabled');
            }else{
                $(".password").attr('disabled', '');  // attr('disabled', '') : Thêm thuộc tính disable và cái '' là : giá trị của nó
            }
        });
    });
</script>
@endsection