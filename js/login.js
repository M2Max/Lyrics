$(function(){
    $("#loginSubmit").click(function(){
        let username = $("#txt_uname").val().trim();
        let password = $("#txt_pwd").val().trim();

        if( username != "" && password != "" ){
            console.log("ti stai loggando");
            $.ajax({
                url:'../php/login.php',
                type:'post',
                data:{username:username,password:password},
                success:function(response){
                    let msg = "";
                    console.log(response);
                    if(response == 1){
                        //window.location = "home.php";
                    }else{
                        $('#txt_uname').addClass("is-invalid");
                        $('#txt_pwd').addClass("is-invalid");
                    }
                }
            });
        }
    });
});