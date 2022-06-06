<div class='d-flex justify-content-center'>
    <div class = 'flex-md-column text-center' style = "min-width: 25vw;">
        <h3 id = 'title' class = 'cormorant-bold'>New song</h3>
        <form>
            <div class="form-row align-items-center">
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="addSongTitle">Title</label>
                    <input type="text" class="form-control mb-2 cormorant-regular" id="addSongTitle">
                    <div class="invalid-feedback" id="invalid-title_add_song">
                        Required field
                    </div>
                </div>
                <div class="col-auto margined">
                    <label for="songArtist" class = "cormorant-regular">Artist</label>
                    <select class="form-select cormorant-regular" aria-label="Default select example" multiple id = "songArtist" style = "font-size: 22px;">
                        <?php
                        include "../php/Connection.php";

                        $sql_query = "SELECT a.Name FROM artist a";
                        //$sql_query = "SELECT COUNT(*) as cntUser from user u where u.username='user' and u.password = 'user'";
                        $result = Connection::doQuery($sql_query);
                        if(mysqli_num_rows($result) == 0){
                            echo "<option class = 'cormorant-regular'>No artist found</option>";
                            exit;
                        }

                        $string = "";

                        while ($row = mysqli_fetch_assoc($result)) {
                            $string = $string . '<option value = "'. $row['Name'] .'" class = "cormorant-regular" >'. $row['Name'] .'</option>';
                        }
                        echo $string;
                        ?>
                    </select>
                    <div class="invalid-feedback" id="invalid-artist_add_song">
                        Required field
                    </div>
                    <div style="float:left; padding-left: 45px;" class="cormorant-regular">Not in the list?&nbsp;<a href="#" class = "cormorant-regular yellow-highlight" id = "createArtistPage">Create the artist page!</a></div>
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="songLanguage">Language</label>
                    <input type="text" class="form-control mb-2 alphaonly cormorant-regular" id="songLanguage">
                    <div class="invalid-feedback" id="invalid-language_add_song">
                        Required field
                    </div>
                </div>
                <div class="col-auto margined">
                    <label class="active sr-only cormorant-regular" for="songDate">Release Date</label>
                    <input type="date" id="songDate" class = "form-control mb-2 cormorant-regular">
                    <div class="invalid-feedback" id="invalid-date_add_song">
                        Required field
                    </div>
                </div>
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="songText">Text</label>
                    <textarea type="text" class="form-control mb-2 cormorant-regular"  id="songText" rows = "8"></textarea>
                    <div class="invalid-feedback" id="invalid-txt_add_song">
                        Required field
                    </div>
                </div>
                <div class="col-auto margined">
                    <button type="submit" class="btn btn-primary yellow-button" id = "add-song-btn">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>
