@extends('layouts.statement')

@section('custom_styles')
    <link rel="stylesheet" href="{{ asset('assets/css/nice-select.css') }}"> 
    <link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    
    <style>
        tr td:last-child {
            white-space: nowrap;
        }
        .color {
            background: linear-gradient(to right, #ec2F4B, #009FFF);
            color: white;
            font-weight: bold;
        }
    </style>
@endsection

@section('content')
<section class="content">
    <div class="container">
        <div class="row">
            {{-- Student Dashboard Section --}}
            @include('web.student.sidebar-menu')
            {{-- Student Dashboard Section --}}       
            <div class="col-md-8">
                @include('include.messages')                      
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
                                            <h1 class="h2 mb-0 text-gray-800 text-info font-weight-bold">Statement View
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
                                                <th>Name</th>
                                                <th>ID</th>
                                                <th>Amount</th>
                                    
                                                
                                                {{-- <th>Mentor/Student</th> --}}
                                                <th>Status</th>
                                                <th>Month</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse($statements as $statement)
                                                <tr>
                                                    <td>{{ $loop->index + 1 }}</td>
                                                    <td>{{ $statement->student->name }}</td>
                                                    <td>{{ $statement->student->sid }}</td>
                                                    <td>{{ $statement->approved_amount }}</td>
                                                    {{-- <td>{{ $statement->account->account_title }}</td> --}}
                                                    <td>{{ $statement->status }}</td>
                                                    <td>{{ (new DateTime($statement->month_year))->format('M-Y') }}</td>
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

            </div>
        </div>
    </div>
</section>
@endsection

@section('extra_js')

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

