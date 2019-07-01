@extends('layout.index')

@section('tieude')
	Trang chủ
@endsection

@section('content')
<div class="container">
	<!-- slider -->
	@include('layout.slide')
    <!-- end slide -->

    <div class="space20"></div>

    <div class="row main-left">
    	<!-- end menu -->
        @include('layout.menu')
        <!-- end menu -->
		
		<!-- end Nội dung -->
        <div class="col-md-9">
            <div class="panel panel-default">            
            	<div class="panel-heading" style="background-color:#337AB7; color:white;" >
            		<h2 style="margin-top:0px; margin-bottom:0px;">Laravel Tin Tức</h2>
            	</div>

            	<div class="panel-body">
            		
            		@foreach($theloai as $tl)
            			@if(count($tl->tintuc) > 0)
            				<!-- item -->
						    <div class="row-item row">
			                	<h3>
			                		<a href="category.html">{{ $tl->Ten }}</a> |
			                		@foreach($tl->loaitin as $ltin)
			                			<small><a href='{{ url("loaitin/$ltin->id/$ltin->TenKhongDau.html") }}'><i>{{ $ltin->Ten }}</i></a>/</small>
									@endforeach
			                	</h3>
	
		                	<?php
		                		$data = $tl->tintuc->Where('NoiBat', 1)->sortBy('created_at')->take(5);

		                		/*Hàm shift: Lấy ra 1 tintuc trong danh sách 5 tin trong $data
		                		Do vậy, lúc đó $data chỉ còn 4 tintuc
		                		Hàm shift khi nó lấy ra nó sẽ trả dữ liệu ra kiểu MẢNG*/
		                		$tin1 = $data->shift();
		                	 ?>
			                	<div class="col-md-8 border-right">
			                		<div class="col-md-5">
				                        <a href="tintuc/{{$tin1['id']}}/{{$tin1['TieuDeKhongDau']}}.html">
				                            <img class="img-responsive" src="{{ url('upload/tintuc/'.$tin1['Hinh']) }}" alt="">
				                        </a>
				 <!--    NOTE: $tin1['Hinh'] : Vì là kiểu MÀNG   -->
				                    </div>

				                    <div class="col-md-7">
				                        <h3>{{ $tin1['TieuDe'] }}</h3>
				                        <p>{{ $tin1['TomTat'] }}</p>
				                        <a class="btn btn-primary" href="tintuc/{{$tin1['id']}}/{{$tin1['TieuDeKhongDau']}}.html">Chi tiết <span class="glyphicon glyphicon-chevron-right"></span></a>
									</div>
									
			                	</div>
			                    
							
								<div class="col-md-4">
								@foreach($data->all() as $item)
								
									<a href="tintuc/{{$item['id']}}/{{$item['TieuDeKhongDau']}}.html">
										<h4>
											<span class="glyphicon glyphicon-list-alt"></span>
											{{ $item['TieuDe'] }}
										</h4>
									</a>
								
								@endforeach
								</div>
								
								<div class="break"></div>
			                </div>
			                <!-- end item -->
		                @endif
	                @endforeach

				</div>
            </div>
    	</div>
    	<!-- end Nội dung  -->
    </div>
    <!-- /.row -->
</div>
@endsection