<?php

include_once ('login/class_user.php');
require_once('C:\xampp/htdocs/BlogPHP/database/posts_dbconfig.php');

//displays posts
//record selected from id been passed in the $_GET function
//prepare used to prevent tampering with database

$stmt = $DB_con->prepare('SELECT id, title, description, content, date FROM posts WHERE id = :id');
$stmt->execute(array(':id' => $_GET['id']));
$row = $stmt->fetch();

include_once('functions.php');

//if no posts to view redirect to index page
if($row['id'] == ''){
    redirect('index.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
    
<head> 
    
<title> Blog - <?php echo $row['title'];?> </title>
<?php include('layout/head.php');?>

</head>

<body>
     
<!-- Top NavBar -->
<?php include('layout/topnavs/topnav_posts.php');?>
<!-- End Top NavBar -->
    
<div class = "container-fluid text-center">    
<div class = "row content">

<!-- Centre Container -->
<div style = "background:transparent url('imgs/background/BB8PostRead.jpg') no-repeat center center /cover" 
        class = "col-sm-10 img-text-left main_container"> 
<br><br>
<div class = "text-center"> <button class = "btn btn default rebellion"> 
        <a href = "index.php"> Back to Home </a> </button> </div>   
<br> <br>
    <?php include('posts/post_form2.php'); ?>
<br>
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
