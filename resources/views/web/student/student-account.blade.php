@extends('layouts.web')

@section('custom_styles')
    <link rel="stylesheet" href="{{ asset('assets/css/nice-select.css') }}">

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
                            <h3 class=" text-center"><i class="bx bx-money candidate-heading"></i> Account Information
                            </h3>



                            <div class="candidate-info-text candidate-education">
                                @if ($account_details->count() == null)
                                    <a href="#" class="btn btn-success shadow-sm"> <i
                                            class="fas fa-university"></i>
                                        Create New Account
                                    </a><br><br>
                                @endif
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="education-info">
                                            <h4>Account Title</h4>
                                            <p>{{ $student_data->name }}</p>
                                            {{-- <span>2000-2010</span> --}}
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="education-info">
                                            <h4>Account Type</h4>
                                            <p>{{ $student_data->email }}</p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="education-info">
                                            <h4>Account Number</h4>
                                            <p>{{ $student_data->phone }}</p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="education-info">
                                            <h4>Bank Name</h4>
                                            <p>{{ $student_data->father_name }}</p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="education-info">
                                            <h4>Branch Name</h4>
                                            <p>{{ $student_data->father_profession }}</p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="education-info">
                                            <h4>Note</h4>
                                            <p>{{ $student_data->mother_name }}</p>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-danger">Edit</button>

                                    <button type="button" class="btn btn-danger delete_document_modal"
                                        data-target="#delete_document_modal"
                                        data-document_id="{{ $student_data->id }}">Delete</button>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>


    {{-- ------------------------Delete User Modal---------------------------- --}}
    <div class="modal fade" id="delete_document_modal" tabindex="-1" aria-labelledby="exampleModalLabel"
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
    </div>



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
    <script>
        Filevalidation = () => {
            const fi = document.getElementById('document');
            // Check if any file is selected.
            if (fi.files.length > 0) {
                for (const i = 0; i <= fi.files.length - 1; i++) {

                    const fsize = fi.files.item(i).size;
                    const file = Math.round((fsize / 1024));
                    // The size of the file.
                    // if (file > 5120) {
                    //     alert(
                    //       "File is too Big, maximum upload limit 5MB");
                    // }
                    // else {   }

                    document.getElementById('size').innerHTML = '<b>' +
                        file + '</b> KB';

                }
            }
        }
    </script>




@endsection
