let content = $("#content");

content.load("../page/welcome.php");

$("#home").on("click", function(){ $("#content").load("../page/welcome.php"); });
$("#add-song").on("click", function(){ $("#content").load("../page/addSong.php"); });

$("#searchBtn").on("click", function(){
    let search = $("#table_filter").val().trim();
    $("#table_filter").val("");
    $("#table_filter").attr("placeholder","Search lyrics & more");
    if ( search != "" ){
        $.ajax({
            url:'../php/search.php',
            type:'post',
            data:{search:search},
            success:function(response){
                if (response == 0){
                    $("#content").html("<div class= 'cormorant-regular' style='font-size: 16px; text-align: center; letter-spacing: 0.08em;'>NO RESULTS FOUND FOR <i>&quot;" + search +"&quot;</i></div>");
                }
                else {
                    $("#content").html(response);
                }
            }
        });
    }
});

content.on('keyup blur','.alphaonly',function(){
    let node = $(this);
    node.val(node.val().replace(/[^a-zA-Z]/g,'') ); }
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
    let title = $("#addSongTitle").val().trim();
    let language = $("#songLanguage").val().trim();
    let artist = $("#songArtist").val();
    let relDate =  $( "#songDate" ).val();
    let text = $("#songText").val().trim();

    $("#addSongTitle").removeClass("is-invalid");
    $("#songArtist").removeClass("is-invalid");
    $("#songText").removeClass("is-invalid");
    $("#songDate").removeClass("is-invalid");
    $("#songLanguage").removeClass("is-invalid");


    if(title === "")
        $("#addSongTitle").addClass("is-invalid");
    if(language === "")
        $("#songLanguage").addClass("is-invalid");
    if(relDate === "")
        $("#songDate").addClass("is-invalid");
    if(artist.length === 0)
        $("#songArtist").addClass("is-invalid");
    if(text === "")
        $("#songText").addClass("is-invalid");
    else if (title !== "" && language !== "" && relDate !== "" && text !== "" && artist !== ""){
        $.ajax({
            url:'../php/loadSong.php',
            type:'post',
            data:{songTitle:title,songLanguage:language,songArtist:artist,songDate:relDate, songText:text},
            success:function(response){
                if (response == 0) {
                    alert("Error");
                }else if(response == -1){
                    alert ("Song already exists!");
                }else{
                    console.log(response);
                    content.load("../page/welcome.php");
                    alert("Song loaded successfully");
                }
            }
        });
    }
});

content.on("click", "#createArtistPage", function(){
    content.load("../page/addArtist.php");
});

content.on('click','#add-artist-btn',function(){
    let artist = $("#artistName").val().trim();
    let nationality = $("#artistNationality").val().trim();

    if (artist !== "" && nationality !== ""){
        $.ajax({
            url:'../php/loadArtist.php',
            type:'post',
            data:{artistName:artist,artistNationality:nationality},
            success:function(response){
                if (response == 0) {
                    alert("Error");
                }else if(response == -1){
                    alert ("Artist already exists!");
                }else{
                    content.load("../page/welcome.php");
                    alert("New artist loaded successfully");
                }
            }
        });
    }

});