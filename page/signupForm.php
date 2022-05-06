<?php
?>

<div class="d-flex">
    <div class="w-100">
        <h3 class="mb-4" id="message">Sign up</h3>
    </div>
</div>
<div class="signup-form" >
    <div class="form-group mb-3">
        <label class="label" for="txt_uname">Username</label>
        <input type="text" class="form-control" placeholder="Username" name="username" id="txt_signup_uname" required>
        <div class="invalid-feedback" id="invalid-txt_signup_uname">
            Username already Exists
        </div>
    </div>
    <div class="form-group mb-3">
        <label class="label" for="txt_pwd">Password</label>
        <input type="password" class="form-control" placeholder="Password" name="password" id="txt_signup_pwd_1" required>
        <div class="invalid-feedback" id="invalid-txt_signup_pwd_1">
            Passwords are different
        </div>
    </div>
    <div class="form-group mb-3">
        <label class="label" for="txt_pwd">Repeat Password</label>
        <input type="password" class="form-control" placeholder="Password" name="password" id="txt_signup_pwd_2" required>
        <div class="invalid-feedback" id="invalid-txt_signup_pwd_2">
            Passwords are different
        </div>
    </div>
    <div class="form-group">
        <button type="submit" class="form-control btn btn-primary rounded submit px-3" id="signup_submit">Sign In</button>
    </div>
</div>
<p class="text-center">Not a member? <a data-toggle="tab" href="#" id="login">Login</a></p>
