@extends('layouts.dashboard_layout')
@section('custom_style')
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
                                <h1 class="h2 mb-0 text-gray-800 text-info font-weight-bold">Renewal Form Details</h1>
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
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <b><h2 class="text-center">Renewal Form</h2></b>
                        <hr />
                        <h4>Basic Information</h4>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">

                                    <label for="Student_name">Student Name: </label>
                                    {{ $renewal_info->student->name }}

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone">Phone No: </label>
                                    {{ $renewal_info->student->phone }}
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="father's_name">Father's Nmae: </label>
                                    {{ $renewal_info->student->father_name }}
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="address">Present Address: </label>
                                    {{ $renewal_info->student->present_address->district }},
                                    {{ $renewal_info->student->present_address->upazila }},
                                    {{ $renewal_info->student->present_address->area }}.
                                </div>
                            </div>
                        </div>
                        <hr />
                        <h4>Previous Academic Information</h4>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="instituition">Instituition: </label>
                                    {{ $renewal_info->student->degree_information->institution }}
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="level">Level & Class: </label>
                                    {{ $renewal_info->student->degree_information->level }} (
                                    {{ $renewal_info->student->degree_information->class_degree }})

                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="year">Year: </label>
                                    {{ $renewal_info->student->degree_information->year }}
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="marks">Marks/CGPA: </label>
                                    {{ $renewal_info->student->degree_information->marks_cgpa }}
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="income">family Income: </label>
                                    {{ $renewal_info->student->family_income }}
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="source">Source of Income: </label>
                                    {{ $renewal_info->student->income_source }}
                                </div>
                            </div>
                        </div>
                        <hr />
                        <h4>Present Academic Information</h4>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="instituition">School/University/Department: </label>
                                    {{ $renewal_info->level }}
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="year">Grade/Undergraduate: </label>
                                    {{ $renewal_info->class_degree }}
                                </div>
                            </div>
                            <div class="col-md-12">
                                <u>
                                    <h5>Results of the last two examinations:</h5>
                                </u>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="a">a. Class position/GPA/CGPA:
                                        {{ $renewal_info->marks_cgpa1 }}</label><br>

                                    <label>a) Date:</label>
                                    {{ $renewal_info->date1 }}
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="b">b. Class position/GPA/CGPA:
                                        {{ $renewal_info->marks_cgpa2 }}</label><br>

                                    <label>b) Date:</label>
                                    {{ $renewal_info->date2 }}
                                </div>
                            </div>
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label for="achievement">Any other achievements in last one year: </label><br>
                                    <textarea disabled class="form-control" id="exampleFormControlTextarea1" rows="3">{{ $renewal_info->achievement }}</textarea>

                                </div>
                            </div>
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label for="financial">Did your financial situation change in last one year?
                                    </label><br>
                                    <textarea disabled class="form-control" id="exampleFormControlTextarea1" rows="3">{{ $renewal_info->financial }}</textarea>

                                </div>
                            </div>
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label for="opinion">In your opinion, why should Hridoya Bangladesh renew your
                                        scholarship? </label><br>
                                    <textarea disabled class="form-control" id="exampleFormControlTextarea1" rows="3">{{ $renewal_info->opinion }}</textarea>


                                </div>
                            </div>
                            <hr />
                        </div>
                        {{-- <div class="modal-footer">
                                <button type="button" class="btn btn btn-success" data-dismiss="modal">Approve</button>
                                <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
                            </div> --}}
                    </div>
                </div>
            </div>
        </div>
    @endsection

    @section('extra_js')
        <script>
            $('.modal-content').resizable({
                //alsoResize: ".modal-dialog",
                minHeight: 300,
                minWidth: 300
            });
            $('.modal-dialog').draggable();

            $('#myModal').on('show.bs.modal', function() {
                $(this).find('.modal-body').css({
                    'max-height': '100%'
                });
            });
        </script>
    @endsection
