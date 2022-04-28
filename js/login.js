import $ from "./jquery.min";

$(document).ready(function(){
    $("#loginSubmit").click(function(){
        let username = $("#txt_uname").val().trim();
        let password = $("#txt_pwd").val().trim();

        if( username !== "" && password !== "" ){
            $.ajax({
                url:'../php/login.php',
                type:'post',
                data:{username:username,password:password},
                success:function(response){
                    let msg = "";
                    if(response === 1){
                        console.log("ti sei loggato waglione");
                        //window.location = "home.php";
                    }else{
                        msg = "Invalid username and password!";
                    }
                    $("#message").html(msg);
                }
            });
        }
    });
});