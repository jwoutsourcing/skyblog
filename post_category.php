
<?php
include_once ('login/class_user.php');
require_once('database/posts_dbconfig.php');
?>

<!DOCTYPE html>
<html lang="en">
    
<head>
        
<title> Create New Category </title>
<?php include('layout/head.php');?>

</head>

<body>
    
<!-- Top NavBar -->
<?php include('layout/topnavs/topnav_posts.php');?>
<!-- End Top NavBar -->

<?php require_once('category/category_to_db.php');?>

<div class = "container-fluid text-center">    
<div class = "row content">

<!-- Main Container -->
<div style = "background:transparent url('imgs/background/R2D2post.jpg') no-repeat center center /cover" 
     class = "col-sm-10 text-left main_container"> 
<br><br>

<h1 class = "text-center rebellion black col-sm-9 pull-right"><label> Create New Category </label></h1>

    <div class = "pcontainer col-sm-8 pull-right">
    <div class = "pform-container transparent">

        <form action = "" method = "post">
    
        <div class = "form-group">
            <p> <label class = "dark_orange"> Category Name </label> <br />
                <input type = "text" name = "catTitle" value = "<?php if (isset($error)) 
                                                                {echo $_POST['catTitle'];}?>"> </p>
        </div>
        <div class = "clearfix"> </div> <hr/>
        
        <div class = "form-group rebellion">
            <p> <input type = "submit" name = "submit" value = "Submit"> </p>
        </div>
    
        </form>
    
    </div>
    </div>
</div>
<!-- End Main Container -->      


<!-- Right Sidebar -->
<?php include('layout/sidenav_right.php'); ?>
<!-- End Right Sidebar -->

</div>
</div>

<!-- Footer --> 
<?php include('layout/footer.php'); ?>
<!-- End Footer -->

</body>
</html>
