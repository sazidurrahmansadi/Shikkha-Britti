@extends('layouts.dashboard_layout')
@section('custom_style')
    <link href="{{ asset('assets/css/bs-datepicker.min.css') }}" rel="stylesheet">

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
                                <h1 class="h2 mb-0 text-gray-800 text-info font-weight-bold">Monthly Statement</h1>
                                <a href="{{ route('dashboard') }}"
                                    class="d-sm-inline-block btn-sm btn-primary shadow-sm"><i
                                        class="fa fa-backward mr-2"></i>
                                    Dashboard
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
                    <form method="post" action="{{ route('manage_monthly_statement_store') }}">
                        @csrf
                        <div class="card-body">
                            <div class="form-group">
                                <label for="scholarship">Select Scholarship<span class="text-danger">*</span></label>
                                <select class="form-control" name="scholarship_id" id="scholarship" required>
                                    <option value="">SELECT</option>
                                    @forelse ($scholarships as $scholarship)
                                        <option value="{{ $scholarship->id }}">{{ $scholarship->scholarship_title }}
                                        </option>
                                    @empty
                                    @endforelse
                                </select>
                            </div>

                            <!-- select -->
                            <div class="form-group">
                                <label>Month & Year<span class="text-danger">*</span></label>
                                <input type="date" name="month_year" id="for_month" class="form-control"
                                    placeholder="Select Month & Year" required>
                            </div>
                       
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Generate</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
@endsection

@section('extra_js')
    <script src="{{ asset('assets/js/bs-datepicker.min.js') }}"></script>

    <script>
        $("#for_month").datepicker({
            format: "yyyy-mm-dd",
            startView: "months",
            minViewMode: "months"
        });
    </script>
@endsection
