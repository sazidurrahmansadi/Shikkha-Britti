@extends('layouts.dashboard_layout')
@section('custom_style')
    <link href="{{ asset('/plugins/tables/css/datatable/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
@endsection


@section('content')
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
                                <h1 class="h2 mb-0 text-gray-800 text-info font-weight-bold">Scholarship Details</h1>
                                <a href="{{ URL::previous() }}" class="d-none d-sm-inline-block btn-sm btn-danger shadow-sm"><i
                                        class="fa fa-backward"></i>
                                    Back
                                </a>
                            </div>
                        </div>
                        <!-- title -->
                    </div>
                </div>
            </div>

            <!-- column -->
            <div class="col-md-12 mt-4">
                <div class="card card-body">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Scholarship Title:</strong>
                            {{$scholarship_data->scholarship_title}}

                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Scholarship Level:</strong>
                            {{$scholarship_data->level}}

                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Eligibility:</strong>
                            {{ $scholarship_data->eligibility }}
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Payment Type:</strong>
                            {{ $scholarship_data->payment_type }}
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Amount (Tk.):</strong>
                            {{ $scholarship_data->amount }}
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Application Deadline:</strong>
                            {{ (new DateTime($scholarship_data->deadline))->format('d-M-Y') }}


                        </div>
                    </div>
                    {{-- <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>To Date:</strong>
                            {{ (new DateTime($approved_application_detail->to_date))->format('d-M-Y') }}


                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Approved By:</strong>
                            {{$approved_application_detail->approved_by}}

                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>Approval Date:</strong>
                            {{ (new DateTime($approved_application_detail->approval_date))->format('d-M-Y') }}

                        </div>
                    </div> --}}
                </div>
            </div>
        </div>
    </div>
@endsection

@section('extra_js')
    <script src="{{ asset('/plugins/tables/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('/plugins/tables/js/datatable/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('/plugins/tables/js/datatable-init/datatable-basic.min.js') }}"></script>
@endsection
