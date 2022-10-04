@extends('layouts.dashboard_layout')
@section('custom_style')
    {{-- <link href="{{ asset('/plugins/tables/css/datatable/dataTables.bootstrap4.min.css') }}" rel="stylesheet"> --}}
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('dist/css/adminlte.min.css') }}">

    <style>
        tr td:last-child {
            /* width: 9%; */
            white-space: nowrap;
        }

        .color {
            background: linear-gradient(to right, #21ba2b, #1244b0);
            color: white;
            font-weight: bold;
        }

    </style>
@endsection

@section('page_errors')
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
@endsection


@section('content')
    <section class="content">

        <div class="container-fluid px-lg-4">
            <div class="row">
                <div class="col-md-12 mt-lg-4 mt-4">
                    <!-- Page Heading -->
                    <div class="card">
                        <div class="card-body">
                            <!-- title -->
                            <div class="col-md-12 mt-lg-4 mt-4">
                                <!-- Page Heading -->
                                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                    <h1 class="h2 mb-0 text-gray-800 text-info font-weight-bold">Student List</h1>
                                    <a href="{{ route('dashboard') }}" class="d-none d-sm-inline-block btn-sm btn-danger shadow-sm"><i class="fa fa-backward"></i>Dashboard
                                </a>
                                </div>
                            </div>
                            <!-- title -->
                        </div>
                    </div>
                </div>

                <!-- column -->

                <div class="col-12">
                    <div class="card">
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr class="color">
                                        <th>SL#</th>
                                        <th>Student Name</th>
                                        <th>Phone</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($query as $q)

                                        <tr>
                                            <td>{{ $loop->index + 1 }}</td>
                                            <td>{{ $q->student->name }}</td>
                                            <td>{{ $q->student->phone }}</td>
                                        </tr>
                                    @empty
                                    @endforelse

                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                </div>
            </div>
        </div>
    </section>


    {{-- ------------------------change status Modal---------------------------- --}}
    <div class="modal fade" id="status_change_modal" tabindex="-1" aria-labelledby="status_change_modal"
        aria-hidden="true">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-secondary" id="status_change_modal">ATTENTION!!</h5>
                    {{-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> --}}
                </div>

            </div>
        </div>
    </div>
    {{-- ------------------------Delete User Modal---------------------------- --}}
    <div class="modal fade" id="delete_warning_modal" tabindex="-1" aria-labelledby="delete_warning_modal"
        aria-hidden="true">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-danger" id="delete_warning_modal">ATTENTION!!</h5>
                    {{-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> --}}
                </div>
            </div>
        </div>
    </div>

@endsection

@section('extra_js')
    <script src="{{ asset('assets/js/jquery.nice-select.min.js') }}"></script>
    {{-- ------------Change STATUS Script-------------- --}}
    <script>
        $('#status_change_modal').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget)
            var scholarship_id = button.data('scholarship_id_u')
            console.log(scholarship_id);
            var modal = $(this)
            modal.find('.modal-body #scholarship_id_u').val(scholarship_id)
        })
    </script>


    {{-- ------------Delete Script-------------- --}}

    <script>
        $('#delete_warning_modal').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget)
            var scholarship_id = button.data('scholarship_id_d')
            console.log(scholarship_id);
            var modal = $(this)
            modal.find('.modal-body #scholarship_id_d').val(scholarship_id)
        })
    </script>

    <!-- jQuery -->
    {{-- <script src="{{ asset('plugins/jquery/jquery.min.js') }}"></script> --}}
    <!-- Bootstrap 4 -->
    {{-- <script src="{{ asset('plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script> --}}
    <!-- DataTables  & Plugins -->
    <script src="{{ asset('plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-buttons/js/buttons.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('plugins/jszip/jszip.min.js') }}"></script>
    <script src="{{ asset('plugins/pdfmake/pdfmake.min.js') }}"></script>
    <script src="{{ asset('plugins/pdfmake/vfs_fonts.js') }}"></script>
    <script src="{{ asset('plugins/datatables-buttons/js/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-buttons/js/buttons.print.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-buttons/js/buttons.colVis.min.js') }}"></script>

    <!-- Page specific script -->
    <script>
        $(function() {
            $("#example1").DataTable({
                "pageLength": 15,
                "responsive": false,
                "scrollX": true,
                "lengthChange": false,
                "autoWidth": false,
                "buttons": ["copy", "excel", "pdf", "print"]
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

        });
    </script>
@endsection
