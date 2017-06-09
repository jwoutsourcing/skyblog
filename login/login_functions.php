<?php

session_start();

require_once('login/class_user.php');
require_once ('database/class_db.php');

$user = new USER(); 

if($user->is_loggedin()!=""){
    $user->redirect('index.php');
}

if(isset($_POST['btn-login'])){
    $uname = $_POST['txt_uname_email'];
    $umail = $_POST['txt_uname_email'];
    $upass = $_POST['txt_password'];
  
    if($user->login($uname,$umail,$upass)){
        $user->redirect('index.php');
    }else{
        $error = "Wrong Details !";
    } 
}

?>
