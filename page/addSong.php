<div class='d-flex justify-content-center'>
    <div class = 'flex-md-column text-center' style = "min-width: 25vw;">
        <h1 id = 'title' class = 'cormorant-bold'>New song</h1>
        <form>
            <div class="form-row align-items-center">
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="songTitle">Title</label>
                    <input type="text" class="form-control mb-2 no-outline" id="songTitle">
                </div>
                <div class="col-auto margined">
                    <label for="inputState">Artist</label>
                    <select class="form-select no-outline" aria-label="Default select example" id = "songArtist">
                        <?php
                        include "../php/Connection.php";

                        $sql_query = "SELECT a.Name FROM artist a";
                        //$sql_query = "SELECT COUNT(*) as cntUser from user u where u.username='user' and u.password = 'user'";
                        $result = Connection::doQuery($sql_query);
                        if(mysqli_num_rows($result) == 0){
                            echo "<option>No artist found</option>";
                            exit;
                        }

                        $string = "";

                        while ($row = mysqli_fetch_assoc($result)) {
                            $string = $string . "<option value = ". $row["Name"] .">". $row["Name"] ."</option>";
                        }
                        echo $string;
                        ?>
                    </select>
                    <a href="#" class = "cormorant-regular text-decoration-none" id = "createArtistPage">Not in the list? Create the artist page!</a>
                </div>
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="songLanguage">Language</label>
                    <input type="text" class="form-control mb-2 alphaonly no-outline" id="songLanguage">
                </div>
                <div class="col-auto margined">
                    <label class="active sr-only cormorant-regular" for="dateStandard">Release Date</label>
                    <input type="date" id="dateStandard" name="dateStandard" class = "form-control mb-2 no-outline">
                </div>
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="songText">Text</label>
                    <textarea type="text" class="form-control mb-2 no-outline" id="songText" rows = "8"></textarea>
                </div>
                <div class="col-auto margined">
                    <button type="submit" class="btn btn-primary mb-2 no-outline yellow-button" id = "add-song-btn">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>
