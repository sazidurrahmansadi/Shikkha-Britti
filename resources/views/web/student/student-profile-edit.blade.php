@extends('layouts.web')

@section('custom_styles')
    <link href="{{ asset('assets/css/bs-datepicker.min.css') }}" rel="stylesheet">
    {{-- Start added for user profile photo crop --}}
    <script src="{{ asset('js/user_profile_photo_crop/jquery.min.js') }}"></script>
    <script src="{{ asset('js/user_profile_photo_crop/croppie.js') }}"></script>
    <link rel="stylesheet" href="{{ asset('css/user_profile_photo_crop/croppie.min.css') }}">
    {{-- END added for user profile photo crop --}}
    <style>
        .blink_me {
            animation: blinker 1500ms linear infinite;
        }

        @keyframes blinker {
            50% {
                opacity: .65;
            }
        }

        .theme {
            background: #fa8231;
            color: #fff;
            "

        }

        body {
            font-family: Montserrat, "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            display: grid;
        }

        /* Global Stylings */
        label {
            display: block;
            margin-bottom: 0.5rem;
        }

        input {
            display: block;
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #ccc;
            border-radius: 0.25rem;
        }

        .width-50 {
            width: 50%;
        }

        .ml-auto {
            margin-left: auto;
        }

        .text-center {
            text-align: center;
        }

        /* Progressbar */
        .progressbar {
            position: relative;
            display: flex;
            justify-content: space-between;
            counter-reset: step;
            margin: 2rem 0 4rem;
        }

        .progressbar::before,
        .progress {
            content: "";
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            height: 4px;
            width: 100%;
            background-color: #dcdcdc;
            z-index: -1;
        }

        .progress {
            background-color: var(--primary-color);
            width: 0%;
            transition: 0.3s;
        }

        .progress-step {
            width: 2.1875rem;
            height: 2.1875rem;
            background-color: #dcdcdc;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .progress-step::before {
            counter-increment: step;
            content: counter(step);
        }

        .progress-step::after {
            content: attr(data-title);
            position: absolute;
            top: calc(100% + 0.5rem);
            font-size: 0.85rem;
            color: #666;
        }

        .progress-step-active {
            background-color: var(--primary-color);
            color: #f3f3f3;
        }

        /* Form */
        .form {
            width: clamp(320px, 30%, 430px);
            margin: 0 auto;
            border: 1px solid #ccc;
            border-radius: 0.35rem;
            padding: 1.5rem;
        }

        .form-step {
            display: none;
            transform-origin: top;
            animation: animate 0.5s;
        }

        .form-step-active {
            display: block;
        }

        .input-group {
            margin: 2rem 0;
        }

        @keyframes animate {
            from {
                transform: scale(1, 0);
                opacity: 0;
            }

            to {
                transform: scale(1, 1);
                opacity: 1;
            }
        }

        /* Button */
        .btns-group {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 25rem;
        }

        .button2 {
            display: inline-block;
            border-radius: 4px;
            background-color: #f4511e;
            border: none;
            color: #FFFFFF;
            text-align: center;
            font-size: 15px;
            padding: 12px;
            width: 100px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
        }

        .button2 span {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
        }

        .button2 span:after {
            content: '\21A0';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -20px;
            transition: 0.5s;
        }

        .button2:hover span {
            padding-right: 25px;
        }

        .button2:hover span:after {
            opacity: 1;
            right: 0;
        }

        .button1 {
            display: inline-block;
            border-radius: 4px;
            background-color: #f4511e;
            border: none;
            color: #FFFFFF;
            text-align: center;
            font-size: 15px;
            padding: 12px;
            width: 100px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
        }

        .button1 span {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
        }

        .button1 span:after {
            content: '\219E';
            position: absolute;
            opacity: 0;
            top: 0;
            left: -20px;
            transition: 0.5s;
        }

        .button1:hover span {
            padding-left: 25px;
        }

        .button1:hover span:after {
            opacity: 1;
            left: 0;
        }
    </style>
@endsection

    /* Global Stylings */
    label {
        display: block;
        margin-bottom: 0.5rem;
    }

    input {
        display: block;
        width: 100%;
        padding: 0.75rem;
        border: 1px solid #ccc;
        border-radius: 0.25rem;
    }

    .width-50 {
        width: 50%;
    }

    .ml-auto {
        margin-left: auto;
    }

    .text-center {
        text-align: center;
    }

    /* Progressbar */
    .progressbar {
        position: relative;
        display: flex;
        justify-content: space-between;
        counter-reset: step;
        margin: 2rem 0 4rem;
    }

    .progressbar::before,
    .progress {
        content: "";
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        height: 4px;
        width: 100%;
        background-color: #dcdcdc;
        z-index: -1;
    }

    .progress {
        background-color: var(--primary-color);
        width: 0%;
        transition: 0.3s;
    }

    .progress-step {
        width: 2.1875rem;
        height: 2.1875rem;
        background-color: #dcdcdc;
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .progress-step::before {
        counter-increment: step;
        content: counter(step);
    }

    .progress-step::after {
        content: attr(data-title);
        position: absolute;
        top: calc(100% + 0.5rem);
        font-size: 0.85rem;
        color: #666;
    }

    .progress-step-active {
        background-color: var(--primary-color);
        color: #f3f3f3;
    }

    /* Form */
    .form {
        width: clamp(320px, 30%, 430px);
        margin: 0 auto;
        border: 1px solid #ccc;
        border-radius: 0.35rem;
        padding: 1.5rem;
    }

    .form-step {
        display: none;
        transform-origin: top;
        animation: animate 0.5s;
    }

    .form-step-active {
        display: block;
    }

    .input-group {
        margin: 2rem 0;
    }

    @keyframes animate {
        from {
            transform: scale(1, 0);
            opacity: 0;
        }

        to {
            transform: scale(1, 1);
            opacity: 1;
        }
    }

    /* Button */
    .btns-group {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 25rem;
    }

    .button2 {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 12px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button2 span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button2 span:after {
  content: '\21A0';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button2:hover span {
  padding-right: 25px;
}

.button2:hover span:after {
  opacity: 1;
  right: 0;
}

.button1 {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 12px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button1 span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button1 span:after {
  content: '\219E';
  position: absolute;
  opacity: 0;
  top: 0;
  left: -20px;
  transition: 0.5s;
}

.button1:hover span {
  padding-left: 25px;
}

.button1:hover span:after {
  opacity: 1;
 left: 0;
}

</style>
@section('content')
    <section class="page-title title-bg10">
        <div class="d-table">
            <div class="d-table-cell">
                <h2>Update Information</h2>
                <ul>
                    <li>
                        <a href="{{ route('home') }}">Home</a>
                    </li>
                    <li>Account</li>
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
                    <div class="account-details">
                        {{-- @if (count($errors) > 0)
                            <div class="alert alert-danger">
                                @foreach ($errors->all() as $error)
                                    {{ $error }}
                                @endforeach
                            </div>
                        @endif --}}

                        <form class="basic-info" action="{{ route('student_update') }}" method="POST">
                            <h1 class="text-center">Update Information</h1><br><br>
                            <!-- Progress bar -->
                            {{-- <div class="progressbar">
                                <div class="progress" id="progress"></div>

                                <div class="progress-step progress-step-active" data-title="Basic Information"></div>
                                <div class="progress-step" data-title="Current Academic information"></div>
                                <div class="progress-step" data-title="Reference Details & Financial Information"></div>
                                <div class="progress-step" data-title="Address"></div>
                            </div> --}}
                            @csrf
                            <div class="form-step form-step-active">
                                <h3>Add Signature</h3>
                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="candidate-profile">
                                            <span data-bs-toggle="modal"
                                                data-bs-target="#user_profile_photo_modal{{ auth()->user()->id }}"
                                                title="Upload Photo" style="cursor:pointer">
                                                <img src="{{ auth()->user()->signature_url != null ? url('storage/' . auth()->user()->signature_url) : asset('/assets/img/null/signature.JPG') }}"
                                                    width="250" height="70" alt="User-Profile-Image">
                                            </span><br>
                                            <button type="button" class="btn theme m-2" data-bs-toggle="modal"
                                                data-bs-target="#user_profile_photo_modal{{ auth()->user()->id }}"> Upload
                                                Signature</button>
                                        </div>
                                    </div>
                                </div>


                                <!-- Steps -->
                                @if (count($errors) > 0)
                                    <div class="alert alert-danger">
                                        @foreach ($errors->all() as $error)
                                            {{ $error }}
                                        @endforeach
                                    </div>
                                @endif

                                <h3>Basic Information</h3>
                                <input type="hidden" name="student_id" value="{{ $student_data->id }}">
                                <input type="hidden" name="degrees_id" value="{{ $academic_data->id }}">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Your Full Name <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <input type="text" name="name" class="form-control"
                                                placeholder="Your Name" value="{{ $student_data->name }}"   >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Your Email</label>
                                            <input type="email" name="email" class="form-control"
                                                placeholder="Your Email" value="{{ $student_data->email }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Your Phone <span class="text-danger font-weight-bold">*</span></label>
                                            <input type="phone" pattern="[0]+[1]+[7/8/9/6/5/4/3]+[0-9]{8}" name="phone"
                                                class="form-control" placeholder="Your Phone"
                                                value="{{ $student_data->phone }}"   >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Date of Birth <span class="text-danger font-weight-bold">*</span></label>
                                            <input type="date" name="dob" class="form-control"
                                                value="{{ (new DateTime($student_data->dob))->format('Y-m-d') }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Father's Name <span class="text-danger font-weight-bold">*</span></label>
                                            <input type="text" name="father_name" class="form-control"
                                                placeholder="Your Father's Name" value="{{ $student_data->father_name }}"
                                                  >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Father's Profession <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <input type="text" name="father_profession" class="form-control"
                                                placeholder="Your Father's Profession"
                                                value="{{ $student_data->father_profession }}"  >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Mother's Name <span class="text-danger font-weight-bold">*</span></label>
                                            <input type="text" name="mother_name" class="form-control"
                                                placeholder="Your Mother's Profession"
                                                value="{{ $student_data->mother_name }}"  >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Mother's Profession <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <input type="text" name="mother_profession" class="form-control"
                                                placeholder="Your Mother's Name"
                                                value="{{ $student_data->mother_profession }}"  >
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Siblings and their status (if any)</label>
                                            <textarea name="siblings" class="form-control" placeholder="Write details" maxlength="999"
                                                style="max-height: 80px; height: 80px">{{ $student_data->siblings }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Your Aim in Life <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <textarea name="aim_in_life" class="form-control" placeholder="Write details" maxlength="999"
                                                style="max-height: 80px; height: 80px"  >{{ $student_data->aim_in_life }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="gender">Gender <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <select class="form-control" name="gender" id="gender"  >
                                                {{-- <option value="">Select</option> --}}
                                                <option value="Male"
                                                    {{ old('gender', $student_data->gender) == 'Male' ? 'selected' : '' }}>
                                                    Male</option>
                                                <option value="Female"
                                                    {{ old('gender', $student_data->gender) == 'Female' ? 'selected' : '' }}>
                                                    Female</option>
                                                <option value="Other"
                                                    {{ old('gender', $student_data->gender) == 'Other' ? 'selected' : '' }}>
                                                    Other</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="">
                                    <a class="button2 btn-next width-50 ml-auto" style="vertical-align:middle"><span>Next
                                        </span></a>
                                </div>
                            </div>
                            <div class="form-step">
                                <h3>Current Academic information</h3>
                                <div class="row dynm_field">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="level">Level <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <select class="form-control" name="level" id="level"  >
                                                {{-- <option value="">Select</option> --}}
                                                <option value="School"
                                                    {{ old('level', $academic_data->level) == 'School' ? 'selected' : '' }}>
                                                    School</option>
                                                <option value="College"
                                                    {{ old('level', $academic_data->level) == 'College' ? 'selected' : '' }}>
                                                    College</option>
                                                <option value="Diploma"
                                                    {{ old('level', $academic_data->level) == 'Diploma' ? 'selected' : '' }}>
                                                    Diploma</option>
                                                <option value="Bachelors"
                                                    {{ old('level', $academic_data->level) == 'Bachelors' ? 'selected' : '' }}>
                                                    Bachelors</option>
                                                <option value="Masters"
                                                    {{ old('level', $academic_data->level) == 'Masters' ? 'selected' : '' }}>
                                                    Masters</option>
                                                {{-- @forelse($degree_levels as $degree_level)
                                                <option value="{{ $degree_level }}">{{ $degree_level }}</option>
                                            @empty
                                            @endforelse --}}

                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6" id="school">
                                        <div class="form-group">
                                            <label for="class_degree">Select Class<span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <select class="form-control" name="class_degree_sch" id="class_degree_sch">
                                                {{-- <option value="">Select</option> --}}
                                                @forelse($class_school as $class_school)
                                                    <option value="{{ $class_school }}">{{ $class_school }}</option>
                                                @empty
                                                @endforelse
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6" id="college">
                                        <div class="form-group">
                                            <label for="class_degree">Select Class<span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <select class="form-control" name="class_degree_col" id="class_degree_col">
                                                {{-- <option value="">Select</option> --}}
                                                {{-- <option value="Class-11">Class-11</option>
                                            <option value="Class-12">Class-12</option> --}}
                                                @forelse($class_college as $class_college)
                                                    <option value="{{ $class_college }}">{{ $class_college }}</option>
                                                @empty
                                                @endforelse
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6" id="university">
                                        <div class="form-group">
                                            <label for="class_degree">Degree Year<span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <select class="form-control" name="class_degree_uni" id="class_degree_uni">
                                                {{-- <option value="">Select</option> --}}
                                                @forelse($class_uni as $class_uni)
                                                    <option value="{{ $class_uni }}">{{ $class_uni }}</option>
                                                @empty
                                                @endforelse
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="institution">Institution <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <input type="text" name="institution" class="form-control"
                                                placeholder="Your Institution" id="institution"
                                                value="{{ $academic_data->institution }}"  >
                                        </div>
                                    </div>
                                    <div class="col-md-6" id="position">
                                        <div class="form-group">
                                            <label>Class Position/Roll/ID <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <input type="text" name="position" class="form-control"
                                                placeholder="Your Class Position" value="{{ $academic_data->position }}"
                                                 >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Marks/GPA/CGPA <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <input type="number" step=0.01 name="marks_cgpa" class="form-control"
                                                placeholder="CGPA" value="{{ $academic_data->marks_cgpa }}"  >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Semester</label>
                                            <input type="text" name="semester" class="form-control"
                                                placeholder="Semester" value="{{ $academic_data->semester }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Year <span class="text-danger font-weight-bold">*</span></label>
                                            <input type="text" class="form-control" name="year" id="datepicker"
                                                value="{{ $academic_data->year }}"   />

                                        </div>
                                    </div>

                                    <div class="" id="bachelor_next">
                                        <hr style="height:2px;border-width:0;">
                                    </div>
                                    <div class="col-md-6" id="bachelor_year">
                                        <div class="form-group">
                                            <label>Bachelors Passing Year</label>
                                            <input type="text" class="form-control" name="bachelor_year"
                                                id="datepicker-3" value="{{ $academic_data->bachelor_year }}" />
                                        </div>
                                    </div>
                                    <div class="col-md-6" id="bachelor_institution">
                                        <div class="form-group">
                                            <label>Institution Name</label>
                                            <input type="text" name="bachelor_institution" class="form-control"
                                                placeholder="Bachelors Institution Name" id="bachelor_institution"
                                                value="{{ $academic_data->bachelor_institution }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6" id="bachelor_subject">
                                        <div class="form-group">
                                            <label>Subject</label>
                                            <input type="text" name="bachelor_subject" class="form-control"
                                                placeholder="Bachelors Subject" id="bachelor_subject"
                                                value="{{ $academic_data->bachelor_subject }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6" id="bachelor_cgpa">
                                        <div class="form-group">
                                            <label>CGPA</label>
                                            <input type="number" step=0.01 name="bachelor_cgpa" class="form-control"
                                                placeholder="Bachelors CGPA" value="{{ $academic_data->bachelor_cgpa }}">
                                        </div>
                                    </div>

                                    <div class="" id="hsc_next">
                                        <hr style="height:2px;border-width:0;">
                                    </div>
                                    <div class="col-md-6" id="hsc_year">
                                        <div class="form-group">
                                            <label>HSC Passing Year</label>
                                            <input type="text" class="form-control" name="hsc_year" id="datepicker-2"
                                                value="{{ $academic_data->hsc_year }}" />
                                        </div>
                                    </div>
                                    <div class="col-md-6" id="hsc_institution">
                                        <div class="form-group">
                                            <label>HSC Institution Name</label>
                                            <input type="text" name="hsc_institution" class="form-control"
                                                placeholder="HSC Institution Name" id="hsc_institution"
                                                value="{{ $academic_data->hsc_institution }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6" id="hsc_gpa">
                                        <div class="form-group">
                                            <label>HSC GPA</label>
                                            <input type="number" step=0.01 name="hsc_gpa" class="form-control"
                                                placeholder="HSC GPA" value="{{ $academic_data->hsc_gpa }}">
                                        </div>
                                    </div>

                                    <div class="" id="ssc_next">
                                        <hr style="height:2px;border-width:0;">
                                    </div>
                                    <div class="col-md-6" id="ssc_year">
                                        <div class="form-group">
                                            <label>SSC Passing Year</label>
                                            <input type="text" class="form-control" name="ssc_year"
                                                value="{{ $academic_data->ssc_year }}" id="datepicker-1" />
                                        </div>
                                    </div>
                                    <div class="col-md-6" id="ssc_institution">
                                        <div class="form-group">
                                            <label>SSC Institution Name</label>
                                            <input type="text" name="ssc_institution" class="form-control"
                                                placeholder="SSC Institution Name" id="ssc_institution"
                                                value="{{ $academic_data->ssc_institution }}">
                                        </div>
                                    </div>
                                    <div class="col-md-6" id="ssc_gpa">
                                        <div class="form-group">
                                            <label>SSC GPA</label>
                                            <input type="number" step=0.01 name="ssc_gpa" class="form-control"
                                                placeholder="SSC GPA" value="{{ $academic_data->ssc_gpa }}">
                                        </div>
                                    </div>

                                    @forelse ($achievements as $achievement)
                                        <div class="col-md-6 ">
                                            <div class="form-group">
                                                <label>Achievement {{ $loop->index + 1 }}</label>
                                                <textarea id="" name="achievement[]" class="form-control"
                                                    placeholder=" (e.g., athlete, debater, organizer, etc.)" maxlength="999" style="max-height: 80px; height: 80px">{{ $achievement->achievement }}</textarea>
                                            </div>
                                        </div>
                                    @empty
                                    @endforelse

                                    <div class="col-md-12">
                                        {{-- <button type="submit" class="account-btn">Edit</button> --}}
                                    </div>
                                </div>
                                <a href="javascript:void(0);" class="add_button" title="Add Achievements"><i
                                        class="bx bx-plus">Add Achievements</i></a>

                                <div class="btns-group">
                                    <a class="button1 btn-prev width-50 ml-auto"
                                        style="vertical-align:middle"><span>Previous </span></a>
                                    <a class="button2 btn-next width-50 ml-auto" style="vertical-align:middle"><span>Next
                                        </span></a>
                                </div>
                            </div>
                            <div class="form-step">
                                <h3>Reference Details</h3>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Reference name <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <input type="text" name="reference_name" class="form-control"
                                                placeholder="Enter reference name"
                                                value="{{ $student_data->reference_name }}"  >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Profession <span class="text-danger font-weight-bold">*</span></label>
                                            <input type="text" name="reference_profession" class="form-control"
                                                placeholder="Enter profession" maxlength="999"
                                                value="{{ $student_data->reference_profession }}"  >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Contact Number <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <input type="phone" name="reference_phone" class="form-control"
                                                placeholder="Enter contact number"
                                                value="{{ $student_data->reference_phone }}"  >
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        {{-- <button type="submit" class="account-btn">Save</button> --}}
                                    </div>
                                </div>
                                <br>

                                <h3>Financial Information</h3>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Family Income (Monthly) <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <input type="number" name="family_income" class="form-control"
                                                placeholder="Enter monthly family income"
                                                value="{{ $student_data->family_income }}"  >
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Income Source <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <input type="text" name="income_source" class="form-control"
                                                placeholder="Enter income source"
                                                value="{{ $student_data->income_source }}"  >
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Any Other Scholarship</label>
                                            <textarea name="other_scholarship" class="form-control" placeholder="Please write details (if any)"
                                                style="max-height: 80px; height: 80px">{{ $student_data->other_scholarship }}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Reason for Financial Support <span
                                                    class="text-danger font-weight-bold">*</span></label>
                                            <textarea name="reason" class="form-control" placeholder="Please write details" maxlength="999"
                                                style="max-height: 80px; height: 80px">{{ $student_data->reason }}</textarea>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        {{-- <button type="submit" class="account-btn">Save</button> --}}
                                    </div>
                                </div>
                                <div class="btns-group">
                                    <a class="button1 btn-prev width-50 ml-auto"
                                        style="vertical-align:middle"><span>Previous </span></a>
                                    <a class="button2 btn-next width-50 ml-auto" style="vertical-align:middle"><span>Next
                                        </span></a>
                                </div>
                            </div>
                            <div class="form-step">
                                <h3>Present Address</h3>
                                <div class="row">
                                    @forelse ($addresses_present as $present)
                                        <input type="hidden" name="present_address_id" value="{{ $present->id }}">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="hidden" id="form_type_present" value="EDIT">
                                                <label>Division: <span
                                                        class="text-danger font-weight-bold">*</span></label>
                                                <select class="form-control" id="division_present"
                                                    name="division_present" required>
                                                    <option selected="selected" name="division_present">
                                                        {{ $present->division }}</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>District: <span
                                                        class="text-danger font-weight-bold">*</span></label>
                                                <select class="form-control" id="district_present"
                                                    name="district_present" required>
                                                    <option selected="selected">{{ $present->district }}</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Upazila: <span class="text-danger font-weight-bold">*</span></label>
                                                <select class="form-control" id="upazila_present" name="upazila_present"
                                                    required>
                                                    <option selected="selected">{{ $present->upazila }}</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Area: <span class="text-danger font-weight-bold">*</span></label>
                                                <input type="text" name="area_present" class="form-control"
                                                    placeholder="House and Area details" value="{{ $present->area }}"
                                                    required>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            {{-- <button type="submit" class="account-btn">Save</button> --}}
                                        </div>
                                </div>

                                <br>
                                <h3>Permanent Address</h3>
                                <div class="row">
                                    <div class="col-md-12" style="margin-bottom: 18px;">
                                        <div class="form-check">
                                            {{-- <input class="form-check-input" type="checkbox"
                                            value="{{ $present->same_as_present }}" id="trigger" name="same_as_present"> --}}

                                            <input type="checkbox" id="trigger" class="form-check-input"
                                                value="{{ $present->same_as_presen }}" name="same_as_present"
                                                @if (old('same_as_present', $present->same_as_present)) checked @endif>

                                            <label class="form-check-label" for="trigger">Same as Present Address (Tick,
                                                if
                                                yes)</label>
                                        </div>
                                    </div>
                                @empty
                                    @endforelse


                                    @forelse ($addresses_permanent as $permanent)
                                        <input type="hidden" name="permanent_address_id" value="{{ $permanent->id }}">
                                        {{-- <input type="text" name="permanent_address_id" value="{{ $permanent->id }}"> --}}
                                        <div class="row" id="permanent_address">

                                            <div class="col-md-6" id="division_check">
                                                <div class="form-group">
                                                    <!-- This hidden input field is necessary for the js file. -->
                                                    <input type="hidden" id="form_type_permanent" value="EDIT">
                                                    <!-- Value = "CREATE" for create form and value = "EDIT" for edit form. -->
                                                    <label>Division:</label>
                                                    <select class="form-control" name="division_permanent"
                                                        id="division_permanent">
                                                        <option selected="selected" name="division_permanent">
                                                            {{ $permanent->division }}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6" id="district_check">
                                                <div class="form-group">
                                                    <label>District:</label>
                                                    <select class="form-control" name="district_permanent"
                                                        id="district_permanent">
                                                        <option selected="selected">{{ $permanent->district }}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6" id="upazila_check">
                                                <div class="form-group">
                                                    <label>Upazila:</label>
                                                    <select class="form-control" name="upazila_permanent"
                                                        id="upazila_permanent">
                                                        <option selected="selected">{{ $permanent->upazila }}</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6" id="area_check">
                                                <div class="form-group">
                                                    <label>Area:</label>
                                                    <input type="text" name="area_permanent" class="form-control"
                                                        placeholder="House and Area details"
                                                        value="{{ $permanent->area }}">
                                                </div>
                                            </div>
                                        </div>
                                    @empty
                                        <div class="row" id="permanent_address_new">

                                            <div class="col-md-6" id="division_check">
                                                <div class="form-group">
                                                    <!-- This hidden input field is necessary for the js file. -->
                                                    <input type="hidden" id="form_type_permanent" value="CREATE">
                                                    <!-- Value = "CREATE" for create form and value = "EDIT" for edit form. -->
                                                    <label>Division:</label>
                                                    <select class="form-control" name="division_permanent"
                                                        id="division_permanent">
                                                        <option selected="selected" name="division">Please select division
                                                        </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6" id="district_check">
                                                <div class="form-group">
                                                    <label>District:</label>
                                                    <select class="form-control" name="district_permanent"
                                                        id="district_permanent">
                                                        <option selected="selected">Please select district</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6" id="upazila_check">
                                                <div class="form-group">
                                                    <label>Upazila:</label>
                                                    <select class="form-control" name="upazila_permanent"
                                                        id="upazila_permanent">
                                                        <option selected="selected">Please select upazila</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6" id="area_check">
                                                <div class="form-group">
                                                    <label>Area:</label>
                                                    <input type="text" name="area_permanent" class="form-control"
                                                        placeholder="Your Area">
                                                </div>
                                            </div>
                                        </div>
                                    @endforelse
                                </div>

                                <div class="btns-group">
                                    <a class="button1 btn-prev width-50 ml-auto"
                                        style="vertical-align:middle"><span>Previous </span></a>
                                    <button class="button2" style="vertical-align:middle"><span>Update</span></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>


    {{-- ------------------------Create Modal------------------------- --}}

    <div class="modal fade" id="user_profile_photo_modal{{ auth()->user()->id }}" tabindex="-1"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Signature</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <input type="hidden" name="owner_id" value="{{ auth()->user()->id }}">
                    <div class="form-group row">

                        <label for="formFile" class="col-md-3">Signature</label>
                        <div class="col-md-9 custom-file">
                            <input type="file" class="form-control custom-file-input"
                                id="upload{{ auth()->user()->id }}" name="profile_photo"
                                accept="image/x-png,image/gif,image/jpeg">
                            <label class="custom-file-label" for="profile_photo"></label>
                        </div>

                    </div>
                    <center>
                        <div id="upload-demo{{ auth()->user()->id }}" style="max-width:500px"></div>
                    </center>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button class="btn btn-success" id="upload-result{{ auth()->user()->id }}">Upload</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });


        $uploadCrop{{ auth()->user()->id }} = $('#upload-demo{{ auth()->user()->id }}').croppie({
            enableExif: true,
            viewport: {
                width: 400,
                height: 100,
                type: 'square' //circle,square
            },
            boundary: {
                width: 450,
                height: 100
            }
        });


        $('#upload{{ auth()->user()->id }}').on('change', function() {
            // window.alert('#upload{{ auth()->user()->id }}');
            var reader = new FileReader();
            // window.alert(reader{{ auth()->user()->id }});
            reader.onload = function(e) {
                $uploadCrop{{ auth()->user()->id }}.croppie('bind', {
                    url: e.target.result
                }).then(function() {
                    console.log('jQuery bind complete');
                });
            }
            reader.readAsDataURL(this.files[0]);
        });


        $('#upload-result{{ auth()->user()->id }}').on('click', function(ev) {
            $uploadCrop{{ auth()->user()->id }}.croppie('result', {
                type: 'canvas',
                size: 'viewport'
            }).then(function(resp) {
                $.ajax({
                    url: "/signature_photo_upload",
                    type: "POST",
                    data: {
                        "_token": "{{ csrf_token() }}",
                        "image": resp,
                        "user_id": {{ auth()->user()->id }}
                    },
                    success: function(data) {
                        location.reload();
                    }
                });
            });
        });
    </script>

@endsection

@section('custom_js')
    {{-- Dependent School/College/Universty input fields --}}
    <script src="{{ asset('assets/js/class-level-option.js') }}"></script>
    {{-- Bootstrap only YEAR picker --}}
    <script src="{{ asset('assets/js/bs-datepicker.min.js') }}"></script>
    <script>
        $("#datepicker, #datepicker-1, #datepicker-2, #datepicker-3").datepicker({
            format: "yyyy",
            viewMode: "years",
            minViewMode: "years",
            autoclose: true //to close picker once year is selected
        });
    </script>

    <script>
        const prevBtns = document.querySelectorAll(".btn-prev");
        const nextBtns = document.querySelectorAll(".btn-next");
        const progress = document.getElementById("progress");
        const formSteps = document.querySelectorAll(".form-step");
        const progressSteps = document.querySelectorAll(".progress-step");

        let formStepsNum = 0;

        nextBtns.forEach((btn) => {
            btn.addEventListener("click", () => {
                formStepsNum++;
                updateFormSteps();
                updateProgressbar();
            });
        });

        prevBtns.forEach((btn) => {
            btn.addEventListener("click", () => {
                formStepsNum--;
                updateFormSteps();
                updateProgressbar();
            });
        });

        function updateFormSteps() {
            formSteps.forEach((formStep) => {
                formStep.classList.contains("form-step-active") &&
                    formStep.classList.remove("form-step-active");
            });

            formSteps[formStepsNum].classList.add("form-step-active");
        }

        function updateProgressbar() {
            progressSteps.forEach((progressStep, idx) => {
                if (idx < formStepsNum + 1) {
                    progressStep.classList.add("progress-step-active");
                } else {
                    progressStep.classList.remove("progress-step-active");
                }
            });

            const progressActive = document.querySelectorAll(".progress-step-active");

            progress.style.width =
                ((progressActive.length - 1) / (progressSteps.length - 1)) * 100 + "%";
        }
    </script>
    {{-- Change the CHECKBOX value --}}
    <script>
        $('#trigger').on('change', function() {
            this.value = this.checked ? 1 : 0;
            // alert(this.value);
        }).change();
    </script>
    {{-- Alternative JS for picking OLD VALUES in dropdown --}}
    <script>
        $(window).on('load', function() {
            document.getElementById("level").value = "{{ $academic_data->level }}";
        });
    </script>
    <script>
        $(window).on('load', function() {
            document.getElementById("class_degree_sch").value = "{{ $academic_data->class_degree }}";
            document.getElementById("class_degree_col").value = "{{ $academic_data->class_degree }}";
            document.getElementById("class_degree_uni").value = "{{ $academic_data->class_degree }}";
        });
    </script>

    {{-- Show/Hide a DIV based on CHECKBOX click --}}
    <script>
        $(window).on('load', function() {
            // Get the form fields 
            var checkbox = $("#trigger");
            var permanent_address = $("#permanent_address");
            var permanent_address_new = $("#permanent_address_new");

            // Show the fields.
            // Use JS to do this in case the user doesn't have JS
            permanent_address.show();
            permanent_address_new.show();

            // Setup an event listener for when the state of the
            // checkbox changes.
            checkbox.change(function() {
                // Check to see if the checkbox is checked.
                if (checkbox.is(":checked")) {
                    // Hide the visible fields.
                    permanent_address.hide();
                    permanent_address_new.hide();
                    // Populate the input.
                } else {
                    permanent_address.show();
                    permanent_address_new.show();
                }
            });
        });
    </script>
    {{-- Dynamic Add/Remove input boxes --}}
    <script type="text/javascript">
        let clicks = 1;
        $(document).ready(function() {
            var maxField = 5; //Input fields increment limitation
            var addButton = $('.add_button'); //Add button selector
            var wrapper = $('.field_wrapper'); //Input field wrapper
            var more = $('.dynm_field'); //Input field wrapper

            var x = 1; //Initial field counter is 1

            //Once add button is clicked
            $(addButton).click(function() {
                clicks += 1;
                var fieldHTML =
                    '<div class="col-md-6"><div class="form-group"><label>Significant Achievement ' +
                    clicks +
                    '</label><textarea  id="" name="achievement[]" class="form-control" placeholder=" (e.g., athlete, debater, organizer, etc.)" maxlength="999"></textarea></div><a href="javascript:void(0);" class="remove_button"><i class="bx bx-trash-alt text-danger"> Delete</i></a></div>'; //New input field html
                //Check maximum number of input fields bx-trash-alt
                if (x < maxField) {
                    x++; //Increment field counter
                    $(more).append(fieldHTML); //Add field html
                }
                console.log(x);
            });

            //Once remove button is clicked
            $(more).on('click', '.remove_button', function(e) {
                e.preventDefault();
                $(this).parent('div').remove(); //Remove field html
                x--; //Decrement field counter
                clicks--;
            });
        });
    </script>
    {{-- <script>
        this.getField("myField").display = display.visible;
        this.getField("myField").required = true;

        this.getField("myField").display = display.hidden;
        this.getField("myField").required = false;
    </script> --}}
@endsection

@section('custom_js')
@endsection
    