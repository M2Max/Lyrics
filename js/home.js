let content = $("#content");

content.load("../page/welcome.php");

$("#home").on("click", function(){ $("#content").load("../page/welcome.php"); });
$("#add-song").on("click", function(){ $("#content").load("../page/addSong.php"); });

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
                }
            }
        });
    }
});

$("#songArtist").multiselect();

content.on('keyup blur','.alphaonly',function(){
    let node = $(this);
    node.val(node.val().replace(/[^a-z]/g,'') ); }
);

$("#logout").on("click", function(){
    window.location = "../php/logout.php";
});

content.on("click", ".artist-page", function(event){
    let artist = event.target.id.toString();
    $.ajax({
        url:'../php/getArtist.php',
        type:'post',
        data:{name:artist},
        success:function(response){
            if (response == 0)
                alert("Something went wrong!");
            else
                $("#content").html(response);
        }
    });
});


content.on('click','#add-song-btn',function(){
    let title = $("#songTitle").val().trim();
    let language = $("#songLanguage").val().trim();
    let artist = $("#songArtist").find(":selected").text();
    let relDate =  $( "#dateStandard" ).val();

    if (title !== "" && language !== "" && artist !== "" && relDate !== ""){
        $.ajax({
            url:'../php/loadSong.php',
            type:'post',
            data:{songTitle:title,songLanguage:language,songArtist:artist,relDate:relDate},
            success:function(response){
                if (response == 0)
                    alert("error");
                else{
                    alert(response);
                    content.load("../page/welcome.php");
                }
            }
        });
    }
});