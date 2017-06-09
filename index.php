<?php

session_start();

include_once ('login/class_user.php');

if(isset($_SESSION['user_session'])){
require_once ('login/is_loggedin.php');
}
?>

<!DOCTYPE html>
<html lang="en">
    
<head>
    
<title>On the Road to Jedi</title>
<?php include('layout/head.php'); ?>

</head>

<body>
    
<!-- Top NavBar -->
<?php include('layout/topnavs/topnav_index.php');?>
<!-- End Top NavBar -->
    
<div class = "container-fluid text-center">    
<div class = "row content">

<!-- Centre Container -->
<div style = "background:transparent url('imgs/background/Reybackground.jpg') no-repeat center center /cover" 
     class = "col-sm-10 img-text-left main_container"> 
   
<?php if (isset($_SESSION['user_session'])): ?>
    <?php include('layout/index_div_li.php');?>
<?php endif; ?>

    <div>
        <h1 class = "col-sm-8 pull-right">
            <img src = "imgs/Banner.png" alt = "On The Road to Jedi" style = "max-width: 100%; max-height: 100%;"> </h1> <br> <br>
 
        <?php include('posts/post_list.php'); ?> <br>
    </div>
       
</div>
<!-- End Centre Container -->      

<!-- Right Sidebar -->
<?php include('layout/sidenav_right.php'); ?>
<!-- End Right Sidebar -->

</div>
</div>

<!-- Footer -->
<?php include('layout/footer.php');?>
<!-- End Footer -->

</body>
</html>
