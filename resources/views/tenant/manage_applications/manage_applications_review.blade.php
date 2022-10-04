@extends('layouts.dashboard_layout')
@section('custom_style')
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
                                <h1 class="h2 mb-0 text-gray-800 text-info font-weight-bold">Review Application</h1>
                                <a href="{{ route('dashboard') }}" class="d-sm-inline-block btn-sm btn-primary shadow-sm"><i
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
                    <form method="post" action="{{ route('manage_applications_review') }}">
                        @csrf
                        <input type="hidden" id="student_id" name="student_id" value="{{ $student_data->id }}">
                        <input type="hidden" id="scholarship_id" name="scholarship_id" value="{{ $scholarship_data->id }}">

                        <div class="card-body">
                            <div class="form-group">
                                <label for="scholarship_title">Applicant Name</label>
                                <input type="text" class="form-control" value="{{ $student_data->name }}"
                                    disabled="disabled">
                            </div>

                            <style>
                                .inputbox {
                                    width: 100%;
                                }
                            </style>
                            <div class="form-group">

                                <label>Comment</label>
                                <textarea type="text" class="form-control" placeholder="Write Your Comment....."
                                    id="comment" name="comment" required></textarea>

                            </div>

                        </div>

                        <!-- /.card-body -->

                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Review</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
@endsection
