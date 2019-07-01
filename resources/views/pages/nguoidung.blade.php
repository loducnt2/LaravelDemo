 @extends('layout.index')

@section('tieude')
    Trang người dùng
@endsection

@section('content')
	<div class="container">
    	<!-- slider -->
    	<div class="row carousel-holder">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <div class="panel panel-default">
				  	<div class="panel-heading">Thông tin tài khoản</div>
				  	<div class="panel-body">

					@if(count($errors) > 0)
						<ul>
						@foreach($errors->all() as $err)
							<li style="color: red;">{{ $err }}</li>
						@endforeach
						</ul>
					@endif

					@if(session('thongbao'))
						<p style="color: blue;">{{ session('thongbao') }}</p>
					@endif

				    	<form action='{{ url("nguoidung") }}' method="post">
				    	<input type="hidden" name="_token" value="{{ csrf_token() }}">
				    		<div>
				    			<label>Họ tên</label>
							  	<input type="text" class="form-control" placeholder="Username" name="name" value="{{ $nguoidung->name }}" aria-describedby="basic-addon1">
							</div>
							<br>
							<div>
				    			<label>Email</label>
							  	<input type="email" class="form-control" placeholder="Email" name="email" aria-describedby="basic-addon1" value="{{ $nguoidung->email }}" 
							  	disabled
							  	>
							</div>
							<br>	
							<div>
								<input type="checkbox" class="" name="checkpassword" id="checkpassword">

				    			<label>Đổi mật khẩu</label>
							  	<input type="password" class="form-control password" name="password" aria-describedby="basic-addon1" disabled="">
							</div>
							<br>
							<div>
				    			<label>Nhập lại mật khẩu</label>
							  	<input type="password" class="form-control password" name="passwordAgain" aria-describedby="basic-addon1" disabled="">
							</div>
							<br>
							<button type="submit" class="btn btn-default">Sửa
							</button>

				    	</form>
				  	</div>
				</div>
            </div>
            <div class="col-md-2">
            </div>
        </div>
        <!-- end slide -->
    </div>
@endsection

@section('script')
<script type="text/javascript">
	$(document).ready(function(){
		$("#checkpassword").change(function(){
			if($(this).is(":checked")){
				$(".password").removeAttr("disabled");
			}else{
				$(".password").attr("disabled", "");
			}
		})
	});
</script>
@endsection