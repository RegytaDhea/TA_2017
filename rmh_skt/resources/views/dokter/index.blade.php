<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dokter Jaga</title>
    <!-- Core CSS - Include with every page -->
    <link rel="stylesheet" href="{{ asset('AdminN/assets/plugins/bootstrap/bootstrap.css')}}"/>
    <link rel="stylesheet" href="{{ asset('AdminN/assets/font-awesome/css/font-awesome.css')}}"/>
    <link rel="stylesheet" href="{{ asset('AdminN/assets/plugins/pace/pace-theme-big-counter.css')}}"/>
    <link rel="stylesheet" href="{{ asset('AdminN/assets/css/style.css')}}"/>
    <link rel="stylesheet"href="{{ asset('AdminN/assets/css/main-style.css')}}"/>
    <!-- Page-Level CSS -->
    <link rel="stylesheet" href="{{ asset('AdminN/assets/plugins/morris/morris-0.4.3.min.css')}}"/>
   </head>
<body>
    <!--  wrapper -->

    <div id="wrapper">
        <!-- navbar side -->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li class="selected">
                        <a href="/"><i class="fa fa-dashboard fa-fw"></i>Home</a>
                    </li>
                    <li>
                        <a href="/dokter"><i class="fa fa-table fa-fw"></i>Dokter Jaga</a>
                    </li>
                    <li>
                        <a href="/kamar"><i class="fa fa-table fa-fw"></i>Kamar Tersedia</a>
                    </li>
                    <li>
                        <a href="/kontak"><i class="fa fa-table fa-fw"></i>Kontak (per Departement)</a>
                    </li>
                    <li>
                        <a href="/antrian"><i class="fa fa-table fa-fw"></i>Antrian</a>
                    </li>
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
        <!-- end navbar side -->
        <!--  page-wrapper -->
        <div id="page-wrapper">

            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Dokter Jaga</h1>
                </div>
                <!--End Page Header -->
            </div>
            <div class="row">
                <div class="col-lg-8">



                    <!--Area chart example -->

                    <!--End area chart example -->
                    <!--Simple table example -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i>Data
                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Number</th>
                                                    <th>Date</th>
                                                    <th>Nama</th>
                                                    <th>Bagian</th>
                                                    <th>Delete</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                              @foreach($dokter as $dokter)
                                                <tr>
                                                    <td>{{$dokter->number}}</td>
                                                    <td>{{$dokter->date}}</td>
                                                    <td>{{$dokter->nama}}</td>
                                                    <td>{{$dokter->bagian}}</td>
                                                    <td>{!! Form::open(['method' => 'DELETE','route' => ['dokters.destroy', $dokter->number],'style'=>'display:inline']) !!}
                                                      {!! Form::submit('Delete', ['class' => 'btn btndanger'])!!}
                                                      {!! Form::close() !!}</td>
                                                </tr>
                                              @endforeach
                                            </tbody>
                                        </table>

                                        <a class="btn btn-info" href="{{ route('dokters.create',$dokter->number) }}">Create</a>
                                    </div>

                                </div>

                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!--End simple table example -->

                </div>

                <div class="col-lg-4">
                    <div class="panel panel-primary text-center no-boder">
                        <div class="panel-body yellow">
                            <i class="fa fa-bar-chart-o fa-3x"></i>
                            <h3>537 </h3>
                        </div>
                        <div class="panel-footer">
                            <span class="panel-eyecandy-title">Online
                            </span>
                        </div>
                    </div>
                    <div class="panel panel-primary text-center no-boder">
                        <div class="panel-body blue">
                            <i class="fa fa-pencil-square-o fa-3x"></i>
                            <h3>298 </h3>
                        </div>
                        <div class="panel-footer">
                            <span class="panel-eyecandy-title">Visitors
                            </span>
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <!-- end page-wrapper -->

    </div>

    <!-- end wrapper -->

    <!-- Core Scripts - Include with every page -->
    <script src="{{ asset('AdminN/assets/plugins/jquery-1.10.2.js')}}"></script>
    <script src="{{ asset('AdminN/assets/plugins/bootstrap/bootstrap.min.js')}}"></script>
    <script src="{{ asset('AdminN/assets/plugins/metisMenu/jquery.metisMenu.js')}}"></script>
    <script src="{{ asset('AdminN/assets/plugins/pace/pace.js')}}"></script>
    <script src="{{ asset('AdminN/assets/scripts/siminta.js')}}"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="{{ asset('AdminN/assets/plugins/morris/raphael-2.1.0.min.js')}}"></script>
    <script src="{{ asset('AdminN/assets/plugins/morris/morris.js')}}"></script>
    <script src="{{ asset('AdminN/assets/scripts/dashboard-demo.js')}}"></script>

</body>

</html>
