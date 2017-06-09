<?php

	
	require_once ('class_user.php');
	$session = new USER();
	
	// if user session is not active(not loggedin)redirect to login page
	
	if(!$session->is_loggedin()){ 
            $session->redirect('BlogPHP/index.php');
	}
        
?>