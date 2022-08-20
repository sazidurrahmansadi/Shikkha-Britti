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
                                <h1 class="h2 mb-0 text-gray-800 text-info font-weight-bold">Month Range Statement Search</h1>
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
                    <form method="post" action="{{ route('manage_monthly_statement_date_search_show') }}">
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

                            
                                <div class="row">
                                    <div class="container-fluid">
                                        <div class="form-group row">
                                            <label for="month_year" class="col-form-label col-sm-2">From Month<span class="text-danger">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control input-sm" id="fromDate" name="fromDate" placeholder="yyyy-mm-dd" required>
                                            </div>
                                            <label for="month_year" class="col-form-label col-sm-2">To Month<span class="text-danger">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control input-sm" id="toDate" name="toDate" placeholder="yyyy-mm-dd" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                {{-- <div class="form-group">
                                    <label for="payee">Payee<span class="text-danger">*</span></label>
                                    <select class="form-control" name="payees" id="payees" required>
                                        <option value=" ">SELECT</option> --}}
                                      
                                        {{-- <option value="STUDENT || MENTOR">ALL</option> --}}
                                                    
                                        {{-- <option value="STUDENT">Student</option>
                                        <option value="MENTOR">Mentor</option> --}}

                                       
                                    {{-- </select>
                                </div>
                                    <div id="student">
                                            <div class="form-group">
                                                <label for="account_id">Student Id<span class="text-danger">*</span></label>
                                                <select class="form-control" name="account_id" id="student">
                                                    <option value="">SELECT</option> --}}
                                                
                                                        {{-- @forelse($account_details as $account_details)
                                                        
                                                            <option value="{{ $account_details->id }}">
                                                        {{ $account_details->student->sid }}</option>
                                                    @empty
                                                    @endforelse --}}
                                                {{-- </select> --}}

                                                {{-- <input type="account_id" name="account_id" id="student" placeholder="Student Id" required> --}}
                                            
                                                {{-- </div>
                                        
                                    </div>

                                    <div id="mentor">
                                        <div class="form-group">
                                            <label>Mentor Name<span class="text-danger">*</span></label>
                                            <select class="form-control" name="account_id" id="mentor">
                                                <option value="">SELECT</option>
                                                @forelse($mentors as $mentor)
                                                    <option value="{{ $mentor->mentor_active_account->id ?? null }}">
                                                        {{ $mentor->user->name }}</option>
                                                @empty
                                                @endforelse
                                            </select>
                                        </div>
                                    </div> --}}
                               
    
                                
    
    
                                {{-- <div id="mentor">
                                    <div class="form-group">
                                        <label>Mentor Name<span class="text-danger">*</span></label>
                                        <select class="form-control" name="account_id_mentor" id="mentor">
                                            <option value="">SELECT</option>
                                            <option value="">ALL</option>
                                            @forelse($mentors as $mentor)
                                                <option value="{{ $mentor->mentor_active_account->id ?? null }}">
                                                    {{ $mentor->user->name }}</option>
                                            @empty
                                            @endforelse
                                        </select>
                                    </div>
                                </div> --}}
                            
                                        {{-- <div class="form-group">
                                            <label for="month_year" class="col-form-label col-sm-1">From</label>
                                            <div class="col-sm-3">
                                                <input type="date" class="form-control input-sm" id="fromDate" name="fromDate" required>
                                            </div>
                                            <label for="month_year" class="col-form-label col-sm-1">To</label>
                                            <div class="col-sm-3">
                                                <input type="date" class="form-control input-sm" id="toDate" name="toDate" required>
                                            </div> --}}
 
                                        
                       
                        </div>

                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Continue</button>
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
        $("#fromDate").datepicker({
            format: "yyyy-mm-dd",
            startView: "months",
            minViewMode: "months"
        });
        $("#toDate").datepicker({
            format: "yyyy-mm-dd",
            startView: "months",
            minViewMode: "months"
        });

        $("#payees").change(function() {

        if ($(this).val() == "STUDENT") {
            $('#student').show();
            $('#mentor').hide();
            // $("#st_account_title").prop("required", true);

        } else if ($(this).val() == "MENTOR") {
            $('#student').hide();
            $('#mentor').show();
            // this.getField("st_account_title").required = true;

        } else {
            $('#student').hide();
            $('#mentor').hide();
        }
        });
        $("#payees").trigger("change");
       
    </script>
@endsection
