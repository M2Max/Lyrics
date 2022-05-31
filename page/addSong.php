<div class='d-flex justify-content-center'>
    <div class = 'flex-md-column text-center' style = "min-width: 25vw;">
        <h1 id = 'title' class = 'cormorant-bold'>New song</h1>
        <form>
            <div class="form-row align-items-center">
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="addSongTitle">Title</label>
                    <input type="text" class="form-control mb-2 cormorant" id="addSongTitle" style = 'font-size: 18px;'>
                    <div class="invalid-feedback" id="invalid-title_add_song">
                        Required field
                    </div>
                </div>
                <div class="col-auto margined">
                    <label for="songArtist" class = "cormorant-regular">Artist</label>
                    <select class="form-select cormorant" aria-label="Default select example" multiple id = "songArtist" style = "font-size: 22px;">
                        <?php
                        include "../php/Connection.php";

                        $sql_query = "SELECT a.Name FROM artist a";
                        //$sql_query = "SELECT COUNT(*) as cntUser from user u where u.username='user' and u.password = 'user'";
                        $result = Connection::doQuery($sql_query);
                        if(mysqli_num_rows($result) == 0){
                            echo "<option class = 'cormorant' style = 'font-size: 22px;'>No artist found</option>";
                            exit;
                        }

                        $string = "";

                        while ($row = mysqli_fetch_assoc($result)) {
                            $string = $string . '<option value = "'. $row['Name'] .'" class = "cormorant" style = "font-size: 18px;" >'. $row['Name'] .'</option>';
                        }
                        echo $string;
                        ?>
                    </select>
                    <div class="invalid-feedback" id="invalid-artist_add_song">
                        Required field
                    </div>
                    <a href="#" class = "cormorant-regular yellow-highlight" id = "createArtistPage">Not in the list? Create the artist page!</a>
                </div>
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="songLanguage">Language</label>
                    <input type="text" class="form-control mb-2 alphaonly cormorant" id="songLanguage" style = 'font-size: 18px;'>
                    <div class="invalid-feedback" id="invalid-language_add_song">
                        Required field
                    </div>
                </div>
                <div class="col-auto margined">
                    <label class="active sr-only cormorant-regular" for="songDate">Release Date</label>
                    <input type="date" id="songDate" class = "form-control mb-2 cormorant" style = 'font-size: 18px;'>
                    <div class="invalid-feedback" id="invalid-date_add_song">
                        Required field
                    </div>
                </div>
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="songText">Text</label>
                    <textarea type="text" class="form-control mb-2 cormorant" style = 'font-size: 18px;' id="songText" rows = "8"></textarea>
                    <div class="invalid-feedback" id="invalid-txt_add_song">
                        Required field
                    </div>
                </div>
                <div class="col-auto margined">
                    <button type="submit" class="btn btn-primary mb-2 no-outline yellow-button" id = "add-song-btn">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>
