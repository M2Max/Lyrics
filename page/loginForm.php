<?php

?>

<div class="d-flex">
    <div class="w-100">
        <h3 class="mb-4" id="message">Login</h3>
    </div>
</div>
<div class="signin-form" >
    <div class="form-group mb-3">
        <label class="label" for="txt_uname">Username</label>
        <input type="text" class="form-control" placeholder="Username" name="username" id="txt_uname" required>
        <div class="invalid-feedback">
            Please insert a valid username.
        </div>
    </div>
    <div class="form-group mb-3">
        <label class="label" for="txt_pwd">Password</label>
        <input type="password" class="form-control" placeholder="Password" name="password" id="txt_pwd" required>
        <div class="invalid-feedback">
            Please insert a valid password.
        </div>
    </div>
    <div class="form-group">
        <button type="submit" class="form-control btn btn-primary rounded submit px-3" id="loginSubmit">Sign In</button>
    </div>
</div>
<p class="text-center">Not a member? <a data-toggle="tab" href="#" id="signup">Sign Up</a></p>
