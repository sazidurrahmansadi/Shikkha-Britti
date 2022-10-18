@extends('layouts.web')

@section('custom_styles')
    <link rel="stylesheet" href="{{ asset('assets/css/nice-select.css') }}">
    <style>
        .label-bold label {
            font-weight: bold;
        }
    </style>
@endsection

@section('content')

    <section class="page-title title-bg10">
        <div class="d-table">
            <div class="d-table-cell">
                <h2>Student Renewal Form</h2>
                <ul>
                    <li>
                        <a href="{{ route('home') }}">Home</a>
                    </li>
                    <li>Renewal form</li>
                </ul>
            </div>
        </div>
        <div class="lines">
            <div class="line"></div>
            <div class="line"></div>
            <div class="line"></div>
        </div>
    </section>

    <section class="account-section ptb-100">

        <div class="container">
            <div class="row">
                {{-- Student Dashboard Section --}}
                @include('web.student.sidebar-menu')
                {{-- Student Dashboard Section --}}


                <div class="col-md-8">

                    <div class="row">
                        <div class="job-style-two ">

                            <div class="display-message">
                                @if (count($errors) > 0)
                                    <div class="alert alert-danger">
                                        @foreach ($errors->all() as $error)
                                            {{ $error }}
                                        @endforeach
                                    </div>
                                @endif
                            </div>


                            @include('include.messages')

                            {{-- <h5 class="text-center text-danger" style="margin-bottom: 30px;">Please upload the necessary
                                Documents </h5> --}}
                            <h3 class="m-4">Edit Information</h3>


                            <div class="candidate-education">
                                <form method="post" action="{{ route('student_renewal_form_update') }}">
                                    @csrf
                                    <input type="hidden" name="renewal_id" value="{{ $renewal_info->id }}">

                                    <div class="card-body label-bold">
                                        <div class="mb-3" class="col-form-label">
                                            <label for="institution">School/University/Department<span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="level" name="level"
                                                value="{{ $renewal_info->level }}" required>
                                        </div>

                                        <!-- select -->
                                        <div class="mb-3" class="col-form-label">
                                            <label for="class_degtree">Grade/Undergraduate Year<span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="class_degree" name="class_degree"
                                                placeholder="Grade" value="{{ $renewal_info->class_degree }}" required>
                                        </div>

                                        <div class="mb-3" class="col-form-label">
                                            <label for="achievement">Achievement:<span class="text-danger"></span></label>
                                            <input type="text" class="form-control" id="achievement" name="achievement"
                                                value="{{ $renewal_info->achievement }}" required>
                                        </div><br>

                                        <div>
                                            <h6>Results of the last two examinations</h6>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="marks_cgpa1">a. Class position/GPA/CGPA<span
                                                            class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" id="marks_cgpa1"
                                                        name="marks_cgpa1" value="{{ $renewal_info->marks_cgpa1 }}"
                                                        required>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="date1">Date:<span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" id="date1" name="date1"
                                                        value="{{ $renewal_info->date1 }}" required>
                                                </div>
                                            </div>
                                        </div><br>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="marks_cgpa2">b. Class position/GPA/CGPA<span
                                                            class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" id="marks_cgpa2"
                                                        name="marks_cgpa2" value="{{ $renewal_info->marks_cgpa2 }}"
                                                        required>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="date2">Date:<span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" id="date2" name="date2"
                                                        value="{{ $renewal_info->date2 }}" required>
                                                </div>
                                            </div>
                                        </div><br>

                                        <div class="mb-3" class="col-form-label">
                                            <label for="financial">Did your financial situation change in last one
                                                year?<span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="financial" name="financial"
                                                value="{{ $renewal_info->financial }}" required>
                                        </div>

                                        <div class="mb-3" class="col-form-label">
                                            <label for="opinion">In your opinion, why should Hridoya Bangladesh renew your
                                                scholarship?<span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" id="opinion" name="opinion"
                                                value="{{ $renewal_info->opinion }}" required>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary">Update</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>



    {{-- ------------------------Edit account Modal------------------------- --}}
    {{--  --}}


@endsection

@section('custom_js')
    <script src="{{ asset('assets/js/jquery.nice-select.min.js') }}"></script>

    {{-- ------------Delete Payment Script-------------- --}}
    <script>
        $(document).on('click', '.delete_document_modal', function() {
            var document_id = $(this).attr('data-document_id');
            $('#document_id').val(document_id);
            $('#delete_document_modal').modal('show');
        });
    </script>
@endsection
