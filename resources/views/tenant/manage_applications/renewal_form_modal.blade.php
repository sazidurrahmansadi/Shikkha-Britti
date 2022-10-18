<style>
    .modal-dialog {
        width: 900px;
        height: 1500px;
    }

    .modal-content {
        /* 80% of window height */
        height: 80%;
    }

    .modal-header {
        background-color: #337AB7;
        padding: 16px 16px;
        color: #FFF;
        border-bottom: 2px dashed #337AB7;
    }

    .vl {
        border-left: 6px solid green;
        height: 500px;
        position: absolute;
        left: 50%;
        margin-left: -3px;
        top: 0;
    }
</style>


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter1{{ $approved_application->student_id }}" tabindex="-1"
    aria-labelledby="exampleModalCenterTitle" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                {{-- <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
						aria-hidden="true">�</span></button> --}}
                <h4 class="modal-title" id="myModalLabel">Renewal Form</h4>
            </div>
            <div class="modal-body">
                <h4>Basic Information</h4>
                <hr />
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">

                            <label for="Student_name">Student Name: </label>
                            {{ $approved_application->student->name }}

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="phone">Phone No: </label>
                            {{ $approved_application->student->phone }}
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="father's_name">Father's Nmae: </label>
                            {{ $approved_application->student->father_name }}
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="address">Present Address: </label>
                            {{ $approved_application->student->present_address->district }},
                            {{ $approved_application->student->present_address->upazila }},
                            {{ $approved_application->student->present_address->area }}.
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
                            {{ $approved_application->student->degree_information->institution }}
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="level">Level & Class: </label>
                            {{ $approved_application->student->degree_information->level }} (
                            {{ $approved_application->student->degree_information->class_degree }})

                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="year">Year: </label>
                            {{ $approved_application->student->degree_information->year }}
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="marks">Marks/CGPA: </label>
                            {{ $approved_application->student->degree_information->marks_cgpa }}
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="income">family Income: </label>
                            {{ $approved_application->student->family_income }}
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="source">Source of Income: </label>
                            {{ $approved_application->student->income_source }}
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
                            {{-- {{ $approved_application->student->renewal_form->institution }} --}}
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="year">Grade/Undergraduate: </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <u><h5>Results of the last two examinations:</h5></u>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="a">a. Class position/GPA/CGPA: </label><br>
                            <label>a) Date:</label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="a">b. Class position/GPA/CGPA: </label><br>
                            <label>b) Date:</label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="achievement">Any other achievements in last one year: </label><br>
                            <textarea disabled>Hii</textarea>

                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="financial">Did your financial situation change in last one year? </label><br>
                            <textarea disabled>Hii</textarea>

                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="opinion">In your opinion, why should Hridoya Bangladesh renew your
                                scholarship? </label><br>
                            <textarea disabled>Hii</textarea>


                        </div>
                    </div>

                </div>
            </div>
            <hr />
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn btn-success" data-dismiss="modal">Approve</button>
            <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
        </div>
    </div>
</div>
