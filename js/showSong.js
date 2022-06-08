content.on("click", ".song-lyrics", function (event) {
    let song = $(this).attr("id").split("?");
    $.ajax({
        url: '../php/getSong.php',
        type: 'post',
        data: {title: song[0], date: song[1]},
        success: function (response) {
            if (response == 0)
                alert("Something went wrong!");
            else {
                $("#content").html(response);
            }
        }
    });
});