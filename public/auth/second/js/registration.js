$("document").ready(() => {
   $('#form').submit((e) => {
    e.preventDefault();
    
    const firstname = $('#first-name').val().trim();
    const surname = $('#last-name').val().trim();
    const email = $('#email').val().trim();
    const phoneNumber = $('#pNumber').val().trim();
    const school = $('#select').val();
    const occupation = $('#occupation').val();
    const institution = $('#institution').val();
    const gender = $('input[name=gender]').filter(':checked').val();
    const status = $('input[name=status]').filter(':checked').val();

    const postValue = {
        firstname, surname, email, phoneNumber, gender, status
    }

    if (status == 'student') {
        if (school == 'Others' && institution.trim() == '') {
            $('#alertD').html('Your institution is required');
            $("#alertD").removeClass('d-none').addClass('d-block');
            return;
        }
        postValue.school = school == 'Others' ? institution : school;
    } else {
        if (occupation.trim() == '') {
            $('#alertD').html(message);
            $("#alertD").removeClass('d-none').addClass('d-block');
            return;
        }
        postValue.occupation = occupation;
    }
    
    $('#registerBtn').prop('disabled', true);
    $('#registerBtn').html('Processing... Please Wait');
    $.ajax({
        url: 'https://jccfimostate.herokuapp.com/api/v1/register',
        type: 'POST',
        data: postValue,
        dataType: 'json'
    }).done((res, status) => {
        $('#registerBtn').prop('disabled', false);
        $('#registerBtn').html('Register');

        if (status == "success") {
            window.location.href = './confirm.html?email=' + res.responseMessage.email;
        }
    }).catch((err) => {
        $('#registerBtn').prop('disabled', false);
        $('#registerBtn').html('Register');
        if (err.responseJSON) {
            let message = '';
            const response = err.responseJSON.errors;
            response.forEach(error => {
                for (let err in error) {
                    message += err + ' ' + error[err] + "<br>";
                }
            });
            $('#alertD').html(message);
            $("#alertD").removeClass('d-none').addClass('d-block');
        }
    });
   });

   $('input[name=status]').click((event) => {
       const value = event.target.value;
       if (value == 'non-student') {
        $('#selectSchool').removeClass('d-block').addClass('d-none');
        $('#enterOccupation').removeClass('d-none').addClass('d-block');
       } else {
        $('#selectSchool').removeClass('d-none').addClass('d-block');
        $('#enterOccupation').removeClass('d-block').addClass('d-none');
       }
   });

   $('#select').change((e) => {
       const value = e.target.value;
       if (value == 'Others') {
        $('#enterInstitution').removeClass('d-none').addClass('d-block');
       } else {
        $('#enterInstitution').removeClass('d-block').addClass('d-none');
       }
   })
});

function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return typeof sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
        }
    }
    return false;
}

function fetchDetails() {
    const email = getUrlParameter('email');
    $.ajax({
        url: 'https://jccfimostate.herokuapp.com/api/v1/getUserByEmail',
        type: 'GET',
        data: {email},
        dataType: 'json'
    }).done((res, status) => {
        if (status == "success") {
            const resp = res.responseMessage;
            if (resp) {
                $('#first-name').val(resp.firstname);
                $('#last-name').val(resp.surname);
                $('#email').val(resp.email);
                $('#pNumber').val(resp.phoneNumber);
                $('#seatNo').val(resp.seatNumber);
            } else {
                alert('Email was not found');
            }
        }
    }).catch((err) => {
        console.log(err)
        alert('Error occured');
    });
}