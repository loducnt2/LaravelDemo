<div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="{{ url('admin/theloai/danhsach') }}"><i class="fa fa-bar-chart-o fa-fw"></i> Thể loại<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="{{ url('admin/theloai/danhsach') }}">Danh sách</a>
                                </li>
                                <li>
                                    <a href="{{ url('admin/theloai/them') }}">Thêm mới</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="{{ url('admin/loaitin/danhsach') }}"><i class="fa fa-bar-chart-o fa-fw"></i> Loại tin<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="{{ url('admin/loaitin/danhsach') }}">Danh sách</a>
                                </li>
                                <li>
                                    <a href="{{ url('admin/loaitin/them') }}">Thêm mới</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="{{ url('admin/tintuc/danhsach') }}"><i class="fa fa-bar-chart-o fa-fw"></i> Tin tức<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="{{ url('admin/tintuc/danhsach') }}">Danh sách</a>
                                </li>
                                <li>
                                    <a href="{{ url('admin/tintuc/them') }}">Thêm mới</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="{{ url('admin/slide/danhsach') }}"><i class="fa fa-bar-chart-o fa-fw"></i> Slide<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="{{ url('admin/slide/danhsach') }}">Danh sách</a>
                                </li>
                                <li>
                                    <a href="{{ url('admin/slide/them') }}">Thêm mới</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="{{ url('admin/user/danhsach') }}"><i class="fa fa-bar-chart-o fa-fw"></i> User<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="{{ url('admin/user/danhsach') }}">Danh sách</a>
                                </li>
                                <li>
                                    <a href="{{ url('admin/user/them') }}">Thêm mới</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                        <li>
                            <a href="{{ url('admin/demo/danhsach') }}"><i class="fa fa-bar-chart-o fa-fw"></i> Demo<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="{{ url('admin/demo/danhsach') }}">Danh sách</a>
                                </li>
                                <li>
                                    <a href="{{ url('admin/demo/them') }}">Thêm mới</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>