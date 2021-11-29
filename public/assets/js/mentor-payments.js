$("#account_type").change(function () {

    if ($(this).val() == "BKASH" || $(this).val() == "NAGAD" || $(this).val() == "ROCKET" || $(this).val() == "UPAY") {
        $('#bank_name').hide(); 
        $('#branch_name').hide(); 

    } else {
        $('#bank_name').show(); 
        $('#branch_name').show(); 
    }
});
$("#account_type").trigger("change");