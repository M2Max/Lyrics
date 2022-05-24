<div class='d-flex justify-content-center'>
    <div class = 'flex-md-column text-center' style = "min-width: 25vw;">
        <h1 id = 'title' class = 'cormorant-bold'>New song</h1>
        <form>
            <div class="form-row align-items-center">
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="inlineFormInput">Title</label>
                    <input type="text" class="form-control mb-2" id="inlineFormInput">
                </div>
                <div class="col-auto margined">
                    <label for="inputState">Artist</label>
                    <select id="inputState" class="form-control text-center">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                    <a href="#" class = "cormorant-regular text-decoration-none">Not in the list? Create the artist page!</a>
                </div>
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="inlineFormInput">Language</label>
                    <input type="text" class="form-control mb-2" id="inlineFormInput">
                </div>
                <div class="col-auto margined">
                    <label class="sr-only cormorant-regular" for="inlineFormInputGroup">ReleaseDate</label>
                    <input type="text" class="form-control" id="inlineFormInputGroup">
                </div>
                <div class="col-auto margined">
                    <button type="submit" class="btn btn-primary mb-2" id = "addSongBtn">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>
