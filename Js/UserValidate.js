//$(document).ready(function () {
//    $('#form1').validate({
//        rules: {
//            fname: {
//                required: true,
//                minlength: 3
//            },
//            uname: {
//                required: true,
//                minlength: 3
//            },
//            email: {
//                required: true,
//                email: true,
//            },
//            phonenumber: {
//                required: true,
//                minlength: 10,
//                number: true,
//            },
//            address: {
//                required: true,
//            },
//            password: {
//                required: true,
//                minlength: 5
//            },
//            confirmpassword: {
//                required: true,
//                minlength: 5,
//                equalTo: "#password"
//            },
//        },
//        messages: {
//            fname: {
//                required: "Please enter your full name",
//                minlength: "Name must be at least 2 Characters"
//            },
//            uname: {
//                required: "Please enter your user name",
//                minlength: "The username is too short"
//            },
//            email: {
//                required: "This is not a valid email address",
//            },
//            phonenumber: {
//                required: "Your phone number must be 10 digit"
//            },
//            address: {
//                required: "Please specify a valid address"
//            },
//            password: {
//                required: "Please specify a password",
//                minlength: "Password is too short"
//            },
//            confirmpassword: {
//                required: "Please provide a password",
//                minlength: "The password is too short",
//                equalTo: "Please specify the same password as above"
//            }
//        },
//        submitHandler: function (form) {
//            form.submit();
//        }
//    });
//});
$(document).ready(function () {

    $('#btnsubmit').on('click', function () {
        var fullname = $('#txtfullname').val();
        if (fullname != '') {
            if (fullname.length < 3) {
                alert('name must contain at least 3 character ');
                return false;
            }
        }
        else {
            alert("Please enter your full name");
            return false;
        }
        var username = $('#txtusername').val();
        if (username != '') {
            if (username.length < 5) {
                alert('username must contain at least 5 character ')
                return false;
            }
        }
        else {
            alert("Please enter a valid username");
            return false;
        }
        var email = $('#txtemail').val();
        if (email ==NULL) {
            alert('Please enter a valid email');
            return false;
             }
            else {
            alert('email must be @ format');
                return false;
            }
            var phonenumber = $("#txtphonenumber").val();
            if (phonenumber != '') {
                Number = true;
                alert('Please enter your phone number');
                return false;
            }
            else {
                alert('');
                return false;
            }
            var address = $("#txtaddress").val();
            if (address != '') {
                alert('Please enter your address');
                return false;
            }
            else {
                alert('Please enter a valid address');
                return false;
            }
            var password = $("#txtpassword").val();
            if (password != '') {
                alert('Please enter your address');
                return false;
            }
            else {
                alert('Password must contain the following', 'A lowercase letter', 'A capital(uppercase)letter', 'A number', 'Minimum 8 character');
                return false;
            }
            var confirmpass = $('#txtpasswordconfirm').val();
            if (confirmpass != '') {
                alert('Please enter a valid confirm password');
                return false;
            }
            else {
                alert('Password and ConfirmPassword must be the same');
                equalTo = confirmpass;
                return false;
            }

    });
});

    
