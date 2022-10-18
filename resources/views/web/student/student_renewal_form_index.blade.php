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
                <h2>Student Account</h2>
                <ul>
                    <li>
                        <a href="{{ route('home') }}">Home</a>
                    </li>
                    <li>Renewal Form</li>
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
                            <h3 class="m-4">Renewal Information</h3>


                            <div class="candidate-info-text candidate-education">
                                @forelse($renewal_info as $renewal_info)
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="education-info">
                                                <h4>School/University/Department:</h4>
                                                <p>{{ $renewal_info->level }}</p>
                                                {{-- <span>2000-2010</span> --}}
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="education-info">
                                                <h4>Grade/Undergraduate Year:</h4>
                                                <p>{{ $renewal_info->class_degree }}</p>
                                            </div>
                                        </div>
                                        <h6>Results of the last two examinations</h6>
                                        <div class="col-md-6">
                                            <div class="education-info">
                                                <h4>a. Class position/GPA/CGPA: </h4>
                                                <p>{{ $renewal_info->marks_cgpa1 }}</p>
                                            </div>
                                            <div class="education-info">
                                                <h4>Date: </h4>
                                                <p>{{ $renewal_info->date1 }}</p>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="education-info">
                                                <h4>b. Class position/GPA/CGPA: </h4>
                                                <p>{{ $renewal_info->marks_cgpa2 }}</p>
                                            </div>
                                            <div class="education-info">
                                                <h4>Date: </h4>
                                                <p>{{ $renewal_info->date2 }}</p>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="education-info">
                                                <h4>Achievements:</h4>
                                                <p>{{ $renewal_info->achievement }}</p>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="education-info">
                                                <h4>Did your financial situation change in last one year?</h4>
                                                <p>{{ $renewal_info->financial }}</p>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="education-info">
                                                <h4>In your opinion, why should Hridoya Bangladesh renew your
                                                    scholarship?</h4>
                                                <p>{{ $renewal_info->opinion }}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="col-md-12">
                                        {{-- <button type="button" class="btn btn-danger edit_account_modal"
                                            data-target="#edit_account_modal"
                                            data-document_id="{{ $student_data->id }}">Edit</button> --}}

                                        <a href="{{ route('renewal_form_edit', $renewal_info->id) }}" type="button"
                                            class="btn btn-primary">Edit</a>

                                    </div>
                                @empty
                                    <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"><i class="fas fa-file"> </i> Renewal Form</button>
                                    <br><br>
                                    <h3 class="text-danger mt-4"> Sorry! Renewal Form found.</h3>
                                @endforelse
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>


    {{-- ------------------------Create account Modal------------------------- --}}

    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-center text-danger" id="exampleModalLabel">Please provide the below
                        information to Renew your
                        Scholarship</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="col-md-12">
                        <div class="account-details">
                            @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    @foreach ($errors->all() as $error)
                                        {{ $error }}
                                    @endforeach
                                </div>
                            @endif

                            <form class="basic-info"
                                action="{{ route('student_renewal_form_create', ['student_id' => $student_data->id]) }}"
                                method="POST">
                                @csrf
                                <div class="row">
                                    <input type="hidden" id="student_id" name="student_id"
                                        value="{{ $student_data->id }}">

                                    <div class="row">
                                        <h3>Basic Information</h3>

                                        <div class="col-md-12">
                                            <label for="scholarship_id">Select Scholarship</label>
                                            <select class="form-control" id="scholarship_id" name="scholarship_id" required>
                                                @if (!$applied_scholarships->isEmpty())
                                                    @foreach ($applied_scholarships as $applied_scholarship)
                                                        <option value="{{ $applied_scholarship->scholarship_id }}">
                                                            {{ $applied_scholarship->scholarship->scholarship_title }}
                                                        </option>
                                                        <input type="hidden" id="tenant_id" name="tenant_id"
                                                            value="{{ $applied_scholarship->tenant_id }}">
                                                    @endforeach
                                                @endif
                                            </select><br>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-form-label">Your Full Name <span
                                                        class="text-danger font-weight-bold">*</span></label>
                                                <input disabled type="text" name="name" class="form-control"
                                                    placeholder="Your Name" value="{{ $student_data->name }}" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-form-label">Your Email</label>
                                                <input disabled type="email" name="email" class="form-control"
                                                    placeholder="Your Email" value="{{ $student_data->email }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Your Phone <span
                                                        class="text-danger font-weight-bold">*</span></label>
                                                <input disabled type="phone" pattern="[0]+[1]+[7/8/9/6/5/4/3]+[0-9]{8}"
                                                    name="phone" class="form-control" placeholder="Your Phone"
                                                    value="{{ $student_data->phone }}" required>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Father's Name <span
                                                        class="text-danger font-weight-bold">*</span></label>
                                                <input disabled type="text" name="father_name" class="form-control"
                                                    placeholder="Your Father's Name"
                                                    value="{{ $student_data->father_name }}" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div>
                                        <br>
                                        <h3>Update Your Academic information</h3>

                                        <div class="row dynm_field">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="level">School/University/Department <span
                                                            class="text-danger font-weight-bold">*</span></label>
                                                    <input type="text" id="level" name="level"
                                                        class="form-control" placeholder="Institution..." value=""
                                                        required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Grade/Undergraduate Year <span
                                                            class="text-danger font-weight-bold">*</span></label>
                                                    <input type="text" id="class_degree" name="class_degree"
                                                        class="form-control" placeholder="Year" value="" required>
                                                </div>
                                            </div>
                                            <div>
                                                <h6>Results of the last two examinations</h6>
                                            </div><br>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>a. Class position/GPA/CGPA<span
                                                            class="text-danger font-weight-bold">*</span></label>
                                                    <input type="number" step=0.01 id="marks_cgpa1" name="marks_cgpa1"
                                                        class="form-control" placeholder="Marks/GPA/CGPA" value=""
                                                        required>
                                                </div>
                                            </div>

                                            <div class="col-md-6 ">
                                                <div class="form-group">
                                                    <label>Date<span class="text-danger font-weight-bold">*</span></label>
                                                    <input type="date" id="date1" name="date1"
                                                        class="form-control" placeholder="Date">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>b. Class position/GPA/CGPA<span
                                                            class="text-danger font-weight-bold">*</span></label>
                                                    <input type="number" step=0.01 id="marks_cgpa2" name="marks_cgpa2"
                                                        class="form-control" placeholder="Marks/GPA/CGPA" value=""
                                                        required>
                                                </div>
                                            </div>

                                            <div class="col-md-6 ">
                                                <div class="form-group">
                                                    <label>Date<span class="text-danger font-weight-bold">*</span></label>
                                                    <input type="date" id="date2" name="date2"
                                                        class="form-control" placeholder="Date">
                                                </div>
                                            </div>

                                            <div class="col-md-6 ">
                                                <div class="form-group">
                                                    <label>Achievement:<span
                                                            class="text-danger font-weight-bold">*</span></label>
                                                    <input type="text" id="achievement" name="achievement"
                                                        class="form-control" placeholder="achievement">
                                                </div>
                                            </div>
                                            <br>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Did your financial situation change in last one year?<span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <textarea name="financial" id="financial" class="form-control" placeholder="Write details" maxlength="999"
                                                style="max-height: 80px; height: 80px"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>In your opinion, why should Hridoya Bangladesh renew your
                                                scholarship?<span class="text-danger font-weight-bold">*</span></label>
                                            <textarea name="opinion" id="opinion" class="form-control" placeholder="Write details" maxlength="999"
                                                style="max-height: 80px; height: 80px"></textarea>
                                        </div>
                                    </div>
                                    <div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary">Renew</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>





        {{-- ------------------------Delete User Modal------------------------- --}}
        {{-- <div class="modal fade" id="delete_document_modal" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-danger" id="exampleModalLabel">ATTENTION!!</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('student_document_delete') }}" method="POST">
                        @csrf
                        <div class="text-center my-3">
                            <i class="fas fa-trash fa-4x text-danger" aria-hidden="true"></i>
                        </div>
                        <div class="text-center display-5 font-weight-bold">
                            Are You Sure ?
                        </div>

                        <input type="hidden" id="document_id" name="document_id" value="">
                        <div class="modal-footer justify-content-center">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div> --}}


    @endsection

    @section('custom_js')
        <script src="{{ asset('assets/js/mentor-student-payment-types.js') }}"></script>


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
