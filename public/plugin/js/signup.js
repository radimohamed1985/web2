// const togglePassword = document.querySelector("#togglePassword");
// const password = document.querySelector("#password");

// togglePassword.addEventListener("click", function(e) {
//     // toggle the type attribute
//     const type =
//         password.getAttribute("type") === "password" ? "text" : "password";
//     password.setAttribute("type", type);
//     this.classList.toggle("fa-eye-slash"); // toggle the eye slash icon
// });

// Password Confirmation
// const togglePasswordConfirmation = document.querySelector(
//     "#togglePasswordConfirmation"
// );
// const password_confirmation = document.querySelector("#password_confirmation");
// togglePasswordConfirmation.addEventListener("click", function(e) {
//     const type =
//         password_confirmation.getAttribute("type") === "password"
//             ? "text"
//             : "password";
//     password_confirmation.setAttribute("type", type);
//     this.classList.toggle("fa-eye-slash"); // toggle the eye slash icon
// });

$(function() {
    generatePassword();
    fetch("https://ipapi.co/json/")
        .then(function(response) {
            response.json().then(payload => {
                console.log(payload);
                $("#country").html(
                    `<option value="${payload.country_name}" selected>${payload.country_name}</option>`
                );
                $("#phone_code").val(payload.country_calling_code);
                $("#ip").val(payload.ip);
            });
        })
        .catch(function(error) {
            console.log(error);
        });

    $("#password_generator").click(function() {
        generatePassword();
    });

    // fetch currency
    $.ajax({
        url: "/api/v1/currencies",
        type: "GET",
        success: function(response) {
            var currenciesTag = "";
            response.forEach(function(currency) {
                currenciesTag += `<option value="${currency.code}">${currency.sign} ${currency.name}</option>`;
            });

            if (response.length > 0) $("#currency").append(currenciesTag);
        },
        error: function(error) {
            alert(error.statusText);
            console.log(error);
        }
    });

    // fetch countries
    $.ajax({
        url: "/api/v1/countries",
        type: "GET",
        success: function(response) {
            var countriesTag = "";
            response.forEach(function(country) {
                countriesTag += `<option value="${country.nicename}">${country.name}</option>`;
            });

            if (response.length > 0) $("#country").append(countriesTag);
        },
        error: function(error) {
            alert(error.statusText);
            console.log(error);
        }
    });
});

function generatePassword() {
    var chars =
        "0123456789abcdefghijklmnopqrstuvwxyz!@#$%^&*()ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var passwordLength = 12;
    var password = "";

    for (var i = 0; i <= passwordLength; i++) {
        var randomNumber = Math.floor(Math.random() * chars.length);
        password += chars.substring(randomNumber, randomNumber + 1);
    }

    $("#password").val(password);
}

function fetchCountryInfo(value) {
    if (value == "") return false;
    $.ajax({
        url: "/api/country-info" + "/" + value,
        type: "GET",
        success: function(response) {
            // console.log(response);
            document.getElementById("phone_code").value =
                "+" + response.phonecode;
            document.getElementById("phone_code").innerHTML =
                "+" + response.phonecode;
            // document.getElementById("flag-icon").src = response.iso;
        },
        error: function(error) {
            alert(error.statusText);
            console.log(error);
        }
    });
}

function signup() {
    $("#signup-btn").html(
        'Signing up ... <i class="fa fa-spinner fa-spin"></i>'
    );
    $("#message").html("");
    $.ajax({
        url: "/api/v1/auth/plugin/register",
        type: "POST",
        data: $("#signup-form").serialize(),
        success: function(response) {
            $("#signup-btn").html("Sign up");
            $("#message").html(
                '<div class="alert alert-success">Signup Successful!</div>'
            );
            window.parent.location = `${response.data.url}`;
        },
        error: function(error) {
            console.log(error);
            $("#signup-btn").html("Sign up");
            if (error.status == 422) {
                var errorMessage = "";
                var errors = error.responseJSON.error;
                errors.forEach(element => {
                    errorMessage += element + "<br/>";
                });
                $("#message").html(
                    '<div class="alert alert-danger">' + errorMessage + "</div>"
                );
                alert("An Error occurred!");
            } else {
                $("#message").html(
                    '<div class="alert alert-danger">' +
                        error.statusText +
                        "</div>"
                );
            }
        }
    });
}
