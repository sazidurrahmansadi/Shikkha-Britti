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

        .no-wrap {
            /* width: 9%; */
            white-space: nowrap;
        }

        .color {
            background: linear-gradient(to right, #ec2F4B, #009FFF);
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
                                    <h1 class="h2 mb-0 text-gray-800 text-info font-weight-bold">Approved Application List
                                    </h1>
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
                                        <th>Applicant Name</th>
                                        <th>Student ID</th>
                                        <th>Phone</th>
                                        <th>Approved Amount</th>
                                        <th>Charge</th>
                                        <th>Total</th>
                                        <th>Payee</th>
                                        <th>Mentor/Student</th>
                                        <th class="text-center">View</th>
                                        <th class="text-center">Action</th>
                                        <th class="text-center">SMS<span class="iconify-inline" data-icon="codicon:mail"
                                                style="color: rgb(255, 255, 255)" data-width="16"></span></th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($approved_applications as $approved_application)
                                        <tr>
                                            <td>{{ $loop->index + 1 }}</td>
                                            <td>{{ $approved_application->student->name }}</td>
                                            <td>{{ $approved_application->student->sid }}</td>
                                            <td>{{ $approved_application->student->phone }}</td>
                                            <td>{{ $approved_application->approved_amount }}</td>
                                            <td>{{ $approved_application->approved_cost }}</td>
                                            <td>{{ $approved_application->approved_amount + $approved_application->approved_cost }}
                                            </td>
                                            <td>{{ $approved_application->account->account_title }}</td>
                                            @php
                                                $payee = explode('\\', $approved_application->account->accountable_type);
                                            @endphp

                                            <td>{{ $payee[2] }}</td>

                                            <td class="no-wrap">
                                                <a class="btn btn-primary btn-sm mb-2"
                                                    href="{{ route('manage_applications_profile', [$approved_application->student_id]) }}"
                                                    target="_blank"><i class='far fa-user'></i> Profile</a><br>

                                                <a class="btn btn-success btn-sm"
                                                    href="{{ route('manage_applications_scholarship_details', [$approved_application->scholarship_id, $approved_application->student_id]) }}"><i
                                                        class="fas fa-info"></i> Details</a>

                                            </td>
                                            <td class="">
                                                <a href="{{ route('manage_applications_approved_edit', [$approved_application->id]) }}"
                                                    class="btn btn-sm btn-warning mb-2" type="button"><i
                                                        class="fas fa-edit"></i>Edit</a><br>

                                                <a type="button" class="btn-sm btn-danger" data-toggle="modal"
                                                    data-target="#delete_warning_modal"
                                                    data-scholarship_id_u="{{ $approved_application->scholarship_id }}"
                                                    data-student_id_u="{{ $approved_application->student_id }}"
                                                    data-approved_app_id_u="{{ $approved_application->id }}"><i
                                                        class="fa fa-trash"></i> Delete</a>
                                            </td>
                                            <td>

                                                {{-- <button type="button" class="btn" data-toggle="modal" data-target="#exampleModalCenter">
                                                    <span class="iconify-inline" data-icon="codicon:mail" style="color: blue" data-width="30"></span>
                                                  </button> --}}
                                                <button type="button" class="btn btn-success" data-toggle="modal"
                                                    data-target="#exampleModalCenter">Send SMS <span class="iconify-inline"
                                                        data-icon="codicon:mail" style="color: rgb(255, 255, 255)"
                                                        data-width="16"></span></button>



                                                {{-- <button type="button" class="btn btn-success">Send SMS <span class="iconify-inline" data-icon="codicon:mail" style="color: rgb(255, 255, 255)" data-width="16"></span></button> --}}
                                            </td>
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


    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Send Message To
                        <strong>{{ $approved_application->student->name }}</strong></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('send_sms_test') }}" method="POST">
                        @csrf
                        <div class="form-group row">
                            <label for="inputPhone3" class="col-sm-2 col-form-label">To</label>
                            <div class="col-sm-10">
                                <input type="text" readonly class="form-control-plaintext" id="inputPhone3"
                                    value="{{ $approved_application->student->phone }}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlTextarea1" class="col-sm-2 col-form-label">Message</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                            </div>

                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">
                        Discard
                    </button>
                    <button type="submit" class="btn btn-success">
                        Send Message
                    </button>
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
                </div>
                <div class="modal-body">
                    <form action="{{ route('manage_applications_approved_delete') }}" method="POST">
                        @csrf
                        <div class="text-center my-3">
                            <i class="fas fa-trash fa-4x text-danger" aria-hidden="true"></i>
                        </div>
                        <div class="text-center display-5">
                            <h5 class="font-weight-bold">Are You Sure ?</h5>
                        </div>

                        <input type="hidden" id="scholarship_id_u" name="scholarship_id_u" value="">
                        <input type="hidden" id="student_id_u" name="student_id_u" value="">
                        <input type="hidden" id="approved_app_id_u" name="approved_app_id_u" value="">
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
@endsection

@section('extra_js')
    <script src="{{ asset('assets/js/jquery.nice-select.min.js') }}"></script>
    {{-- ------------Change STATUS Script-------------- --}}
    <script>
        $('#delete_warning_modal').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget)
            var scholarship_id = button.data('scholarship_id_u')
            var student_id = button.data('student_id_u')
            var approved_app_id = button.data('approved_app_id_u')
            // console.log(scholarship_id);
            // console.log(student_id);
            // console.log(approved_app_id);
            var modal = $(this)
            modal.find('.modal-body #scholarship_id_u').val(scholarship_id)
            modal.find('.modal-body #student_id_u').val(student_id)
            modal.find('.modal-body #approved_app_id_u').val(approved_app_id)
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
    <script src="https://code.iconify.design/2/2.2.1/iconify.min.js"></script>

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
