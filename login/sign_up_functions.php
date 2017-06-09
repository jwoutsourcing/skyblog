<?php

session_start();
require_once('login/class_user.php');
require_once ('database/class_db.php');

$user = new USER();

if($user->is_loggedin()!=""){
    $user->redirect('index.php');}


if(isset($_POST['btn-signup'])){
    $uname = trim($_POST['txt_uname']);
    $umail = trim($_POST['txt_umail']);
    $upass = trim($_POST['txt_upass']); 

    if($uname==""){
        $error[] = "provide username !"; 
   }
   else if($umail == "") {
        $error[] = "provide email id !"; 
   }
   else if(!filter_var($umail, FILTER_VALIDATE_EMAIL)) {
        $error[] = 'Please enter a valid email address !';
   }
   else if($upass == "") {
        $error[] = "provide password !";
   }
   else if(strlen($upass) < 6){
        $error[] = "Password must be at least 6 characters"; 
           
   } else {
        
       try{
            $stmt = $user->runQuery("SELECT user_name,user_email FROM users WHERE user_name=:uname OR user_email=:umail");
            $stmt->execute(array(':uname'=>$uname, ':umail'=>$umail));
            $row=$stmt->fetch(PDO::FETCH_ASSOC);
    
            if($row['user_name']==$uname) {
                $error[] = "sorry username already taken !";
            }
            else if($row['user_email']==$umail) {
                $error[] = "sorry email id already taken !";
            }else{
                if($user->register($uname,$umail,$upass)){
                    $user->redirect('login.php');
                }
            }
        }
        catch(PDOException $e){
            echo $e->getMessage();
     }
  } 
}
