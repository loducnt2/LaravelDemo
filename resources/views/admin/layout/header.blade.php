<!-- Navigation -->

        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Cudlo Blog</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                   @if(Auth::check())
                        <!-- <li><i class="fa fa-user fa-fw"></i>{{ Auth::user()->name }}</li> --> 
                        <!-- Có thể dùng {{ Auth::user()->name }} HOẶC dùng view composer: {{ $current_user->name }} -->
                        <li><i class="fa fa-user fa-fw"></i>{{ $current_user->name }}</li>


                        <li><a href="{{ url('admin/user/sua/'.Auth::user()->id) }}"><i class="fa fa-gear fa-fw"></i> Edit</a>
                        </li>
                        <li><a href="{{ url('admin/dangxuat') }}"><i class="fa fa-sign-out fa-fw"></i> Đăng xuất</a>
                        <li class="divider"></li>
                    @endif
                    
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            @include('admin.layout.menu')
            <!-- /.navbar-static-side -->
        </nav>