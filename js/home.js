$("#content").load("../page/welcome.php");

$("#home").on("click", function(){ $("#content").load("../page/welcome.php"); });

$("#searchBtn").on("click", function(){
    let search = $("#table_filter").val().trim();

    if ( search != "" ){
        $.ajax({
            url:'../php/search.php',
            type:'post',
            data:{search:search},
            success:function(response){
                if (response == 0)
                    alert("Nothing to show!");
                else {
                    $("#content").html(response);
                    console.log(response);
                }
            }
        });
    }
});

$("#logout").on("click", function(){
    window.location = "../php/logout.php";
});