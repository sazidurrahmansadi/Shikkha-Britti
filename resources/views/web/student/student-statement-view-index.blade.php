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

                            <div class="row">
                                <section class="job-style-two job-list-section pt-50 pb-70">
                                    <h2 class="text-center text-dark" style="margin-bottom: 30px;">Approved Scholarship</h2>
                                    <div class="container">
                                        <div class="job-card-two">                                                                                          
                                            @forelse ($approved_applications as $approved_application)        
                                                <div class="row align-items-center pb-30">
                                                    <div class="col-lg-8 col-md-6">
                                                        <div class="job-info">
                                                            <h3><a
                                                                    href="{{ route('available_scholarships_details', ['scholarship_id' => $approved_application->scholarship_id]) }}">{{ $loop->index + 1 }}
                                                                    . {{ $approved_application->scholarship->scholarship_title }}</a>
                                                            </h3>
                                                        </div>
                                                    </div>        
                                                    <div class="col-lg-4 col-md-6">
                                                        <div class="job-info">                               
                                                            <a class="btn btn-success"
                                                                href="{{ route('student_statement_view_show', ['student_id' => $approved_application->student_id ,'scholarship_id' => $approved_application->scholarship_id]) }}">Statement View</a>                                                                
                                                        </div>
                                                    </div>
                                                </div>
                                            @empty
                                                <h5 class="text-center text-danger" style="margin-top: 30px;">No Approved Scholarship Found!</h5>
                                            @endforelse
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
        
        