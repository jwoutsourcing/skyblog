<?php

    session_start ();
    
    require_once('session.php');
    require_once('class_user.php');
    
    $user_logout = new USER();
	
    if($user_logout->is_loggedin()!=""){
	$user_logout->redirect('index.php');
    }
	
    if(isset($_GET['logout']) && $_GET['logout'] == "true"){
	$user_logout->logout();
            $user_logout->redirect('/BlogPHP/login.php');
	}

        