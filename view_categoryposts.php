<?php
include_once ('login/class_user.php');
require_once('C:\xampp/htdocs/BlogPHP/database/posts_dbconfig.php');
include_once ('functions.php');

$stmt = $DB_con->prepare('SELECT catID, catTitle FROM blog_cats WHERE catID = :catID');
$stmt->execute(array(':catID' => $_GET['id']));
$row = $stmt->fetch();
?>

<!DOCTYPE html>
<html lang="en">
    
<head>
    
<title> Blog - <?php echo $row['catTitle'];?> </title>
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
    <br> <br>
<?php include('category/category_form2.php'); ?>
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

                

              