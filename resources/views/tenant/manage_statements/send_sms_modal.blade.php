 <!-- Modal -->
 <div class="modal fade" id="exampleModalCenter{{ $statement->student_id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <form method="post" action="{{ route('send_single_sms') }}">
            @csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">
                        Send
                        Message To
                        <strong>{{ $statement->student->name }}</strong>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {{-- <form> --}}
                    <div class="form-group row">
                        <label for="inputPhone3" class="col-sm-1 col-form-label">To</label>
                        <div class="col-sm-10">
                            <input type="text" readonly class="form-control-plaintext" id="inputPhone3"
                                name="recipient_phone" value="{{ $statement->student->phone }}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="exampleFormControlTextarea1" class="col-sm-3 col-form-label">Message
                        </label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="exampleFormControlTextarea1" name="message_text" rows="3"></textarea>
                        </div>

                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">
                        Discard
                    </button>
                    <button type="submit" class="btn btn-success">
                        Send Message
                    </button>
                </div>
        </form>
    </div>
</div>