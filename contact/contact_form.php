<?php include ('contact_functions.php') ?>

<!DOCTYPE html>

<form class = "form-horizontal" role = "form" method = "post" action = " " >

<div class = "form-group">
    <label for = "name" class = "col-sm-3 control-label dark_blue "> 
        <span class="required"> * </span> Name: </label>

    <div class = "col-sm-3">
        <input type = "text" class = "form-control" id = "name" name = "name" placeholder = "Name">
    </div>
</div>

<div class = "form-group">
    <label for = "email" class = "col-sm-3 control-label dark_blue "> 
        <span class = "required"> * </span> Email: </label>
        
    <div class = "col-sm-3">
        <input type = "email" class = "form-control" id = "email" name = "email" placeholder = "you@domain.com">
    </div>
</div>

<div class = "form-group">
    <label for = "message" class = "col-sm-3 control-label dark_blue ">
        <span class = "required"> * </span> Message: </label>
        
    <div class = "col-sm-4">
        <textarea class = "form-control" row = "4" name = "message" placeholder = "Message Here?"> </textarea>
    </div>
</div>

<div class = "form-group">
    <label for = "human" class = "col-sm-3 control-label dark_blue ">
        <span class = "required"> * </span> Not a Drone?: </label>
        
    <div class = "col-sm-2">
        <p class= "human font12"> <strong> 11 + 38 = ? </strong> </p>
            <input type = "text" class = "form-control" id = "human" name = "human" placeholder = "Answer">
    </div>
</div>

<div class = "form-group">
    <div class = "col-sm-offset-4 col-sm-2 col-sm-offset-3">
        <button type = "submit" id = "submit" name = "submit" 
                class = "btn-sm btn-primary btn-block rebellion submit_button"> SUBMIT </button>
    </div>
</div>
    
</form>

