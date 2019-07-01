 @extends('layout.index')

@section('tieude')
    Tin tức
@endsection

@section('content')
 <div class="container">
    <div class="row">

        <!-- Blog Post Content Column -->
        <div class="col-lg-9">

            <!-- Blog Post -->

            <!-- Title -->
            <h1>{{ $tintuc->TieuDe }}</h1>

            <!-- Author -->
           <!--  <p class="lead">
               by <a href="#">Start Bootstrap</a>
           </p> -->

            <!-- Preview Image -->
            <img class="img-responsive" src='{{ url("upload/tintuc/$tintuc->Hinh") }}' alt="">

            <!-- Date/Time -->
            <p><span class="glyphicon glyphicon-time"></span> Ngày đăng {{ $tintuc->created_at }}}</p>
            <hr>

            <!-- Post Content -->
            <p class="lead">
            <!-- PHẢI CÓ CÁI DẤU chấm than THÌ MỚI IN ĐƯỢC ĐỊNH DẠNG DỮ LIỆU KIỂU html -->
                {!! $tintuc->NoiDung !!}
            </p>

            <hr>

            <!-- Blog Comments -->

            <!-- Comments Form -->

       
            <div class="well">
                @if(count($errors) > 0)
                    <ul>
                        @foreach($errors->all() as $err)
                            <li style="color: red; text-decoration: none;">{{ $err }}</li>
                        @endforeach
                    </ul>
                @endif
                
                @if(session('thongbao'))
                    <p style="color: blue;">{{ session('thongbao') }}</p>
                @endif

                @if(session('thongbaoloi'))
                    <p style="color: red;">{{ session('thongbaoloi') }}</p>
                @endif


                <h4>Viết bình luận ...<span class="glyphicon glyphicon-pencil"></span></h4>
                <form role="form" action='{{ url("comment/$tintuc->id") }}' method="post">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <div class="form-group">
                        <textarea class="form-control" name="noidung" rows="3"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Gửi</button>
                </form>

                
            </div>
            <hr>

            <!-- Posted Comments -->

            <!-- Comment -->
            @foreach($tintuc->comment as $cmt)
                <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" width="60px" height="60px" src='{{ url("upload/tintuc/no-image.png") }}' alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">{{ $cmt->user->name }}
                            <small>{{ $cmt->created_at }}</small>
                        </h4>
                        {{ $cmt->NoiDung }}
                    </div>
                </div>
            @endforeach
            <!-- Comment -->

        </div>

        <!-- Các tin liên quan và Nổi bật -->
        <div class="col-md-3">

            <div class="panel panel-default">
                <div class="panel-heading"><b>Tin liên quan</b></div>
                <div class="panel-body">
                
                @foreach($tinlienquan as $tinlq)
                    <!-- item -->
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-md-5">
                            <a href='{{ url("tintuc/$tinlq->id/$tinlq->TieuDeKhongDau.html") }}'>
                                <img class="img-responsive" src='{{ url("upload/tintuc/$tinlq->Hinh") }}' alt="">
                            </a>
                        </div>
                        <div class="col-md-7">
                            <a href='{{ url("tintuc/$tinlq->id/$tinlq->TieuDeKhongDau.html") }}'><b>{{ $tinlq->TieuDe }}</b></a>
                        </div>
                        <p style="padding-left: 5px">{{ $tinlq->TomTat }}</p>
                        <div class="break"></div>
                    </div>
                    <!-- end item -->
                @endforeach

                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading"><b>Tin nổi bật</b></div>
                <div class="panel-body">

                @foreach($tinnoibat as $tinNB)
                    <!-- item -->
                    <div class="row" style="margin-top: 10px;">
                        <div class="col-md-5">
                            <a href='{{ url("tintuc/$tinNB->id/$tinlq->TieuDeKhongDau.html") }}'>
                                <img class="img-responsive" src='{{ url("upload/tintuc/$tinNB->Hinh") }}' alt="">
                            </a>
                        </div>
                        <div class="col-md-7">
                            <a href='{{ url("tintuc/$tinNB->id/$tinlq->TieuDeKhongDau.html") }}'><b>{{ $tinNB->TieuDe }}</b></a>
                        </div>
                        <p style="padding-left: 5px">{{ $tinNB->TomTat }}</p>
                        <div class="break"></div>
                    </div>
                    <!-- end item -->
                @endforeach
                    
                </div>
            </div>
            
        </div>

    </div>
    <!-- /.row -->
</div>
@endsection