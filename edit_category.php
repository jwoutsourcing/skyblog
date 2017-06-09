
<?php require_once('database/posts_dbconfig.php'); ?>

<!DOCTYPE html>
<html lang="en">
    
<head>
    
<title> Admin Edit Category </title>
<?php include('layout/head.php');?>

</head>

<body>
        
<!-- Top NavBar -->
<?php include('layout/topnavs/topnav_posts.php');?>
<!-- End Top NavBar -->

<div class = "container-fluid text-center">    
<div class = "row content">
      
<!-- Main Container -->
<div style = "background:transparent url('imgs/background/C3PO.png') no-repeat center center /cover" 
    class = "col-sm-10 text-left main_container"> 

    <h1 class = "text-center rebellion"> Edit Category </h1>
    
    <div class = "text-center"> 
        <button class = "btn btn default rebellion">
            <a href = "post_admin.php"> Back to Admin </a> </button>
    </div>
         
<?php include ('category/category_edit_func.php');?>
         
    <div class = "pcontainer">
    <div class = "pedit-container transparent">
         
    <form action = "" method = "post">
        <input type = "hidden" name = "catID" value = "<?php echo $row['catID'];?>">
           
        <div class = "form-group">
            <p> <label> Category name </label> <br />
                    <input type=  "text" name = "catTitle" value = "<?php echo $row['catTitle'];?>"> </p>
        </div>
      
        <div class = "clearfix"> </div> <hr/>
        
        <div class = "form-group rebellion">
            <input type = "submit" class= " btn btn-block btn-primary" name = "submit" value = "Update">
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
   