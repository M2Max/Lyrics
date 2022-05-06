$(function(){
    let content = $("#content");
    content.load("../page/loginForm.php");

    $("#loginSubmit").on("click",function(){
        let username = $("#txt_uname").val().trim();
        let password = $("#txt_pwd").val().trim();

        if( username != "" && password != "" ){
            console.log("ti stai loggando");
            $.ajax({
                url:'../php/auth.php',
                type:'post',
                data:{username:username,password:password},
                success:function(response){
                    console.log(response);
                    if(response == 1){
                        window.location = "../index.php";
                    }else{
                        $('#txt_uname').addClass("is-invalid");
                        $('#txt_pwd').addClass("is-invalid");
                    }
                }
            });
        }
    });

    function setInvalidMessage(id, message){
        let element = $(id);
        let invalid = $("#invalid-"+id.replace('#', ''));
        invalid.html(message);
        element.addClass("is-invalid");
    }

    content.on("click", "#signup_submit", function(){
        let username    = $("#txt_signup_uname").val().trim();
        let password    = $("#txt_signup_pwd_1").val().trim();
        let password2   = $("#txt_signup_pwd_2").val().trim();

        $('#txt_signup_uname').removeClass('is-invalid');
        $('#txt_signup_pwd_1').removeClass("is-invalid");
        $('#txt_signup_pwd_2').removeClass("is-invalid");


        if(username != "" && password != "") {
            if (password !== password2) {
                setInvalidMessage('#txt_signup_pwd_1', 'Passwords are different');
                setInvalidMessage('#txt_signup_pwd_2', 'Passwords are different');
            } else {
                $.ajax({
                    url: '../php/signup.php',
                    type: 'post',
                    data: {username: username, password: password},
                    success: function (response) {
                        console.log(response);
                        if (response == 1) {
                            window.location = "../index.php";
                        } else {
                            setInvalidMessage('#txt_signup_uname', 'Username already exists');
                        }
                    }
                });
            }
        }else{
            if (username == "") {
                setInvalidMessage('#txt_signup_uname', 'This field cannot be empty');
            }if (password == "") {
                setInvalidMessage('#txt_signup_pwd_1', 'This field cannot be empty');
            }if (password2 == "") {
                setInvalidMessage('#txt_signup_pwd_2', 'This field cannot be empty');
            }
        }
    });

    content.on("click", "#signup", function(){
        $("#content").load("../page/signupForm.php");
    });
    content.on("click", "#login",function(){
        $("#content").load("../page/loginForm.php");
    });
});