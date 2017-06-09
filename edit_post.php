<?php require_once('database/posts_dbconfig.php'); ?>

<!DOCTYPE html>
<html lang="en">
    
<head>
    
<title>Admin Edit Post</title> 
<?php include('layout/head.php');?>

<script src = "//tinymce.cachefly.net/4.0/tinymce.min.js"> </script>
    <script>
        tinymce.init({
            selector: "textarea",
            plugins: [
                "advlist autolink lists link image charmap print preview anchor",
                "searchreplace visualblocks code fullscreen",
                "insertdatetime media table contextmenu paste"
              ],
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
          });
    </script>
 
</head>

<body>
        
<!-- Top NavBar -->
<?php include('layout/topnavs/topnav_posts.php');?>
<!-- End Top NavBar -->

<div class = "container-fluid text-center">    
<div class = "row content">
      
<!-- Main Container -->
<div style = "background:transparent url('imgs/background/C3POAdmin.png') no-repeat center center /cover" 
    class = "col-sm-10 img-text-left main_container"> 

    <h1 class = "text-center rebellion"> Edit Post </h1>
    
        <div class = "text-center"> 
            <button class = "btn btn default rebellion"> 
                <a href = "delete_edit_admin.php"> Back to Admin Console </a> </button>
        </div>
         
<?php include ('posts/post_edit_func.php');?>
     
    <div class="col-sm-8 pull-right">
    <div class = "pcontainer">
    <div class = "pedit-container transparent">
         
    <form action = "" method = "post">
        <input type = "hidden" name = "id" value = "<?php echo $row['id'];?>">
           
        <div class = "form-group">
            <p> <label> Title </label> <br />
                <input type = "text" name = "title" value ="<?php echo $row['title'];?>"> </p>
        </div>
       
        <div class = "form-group">
            <p> <label> Description </label> <br />
                <textarea name = "description" cols = "50" rows = "1"> <?php echo $row['description'];?> </textarea> </p>
        </div>
           
         <div class = "form-group">
            <p> <label> Content </label> <br />
                <textarea name  = "content" cols = "50" rows = "10"> <?php echo $row['content'];?> </textarea> </p> 
        </div> 
    
        <div class = "form-group">
            <fieldset>
                <legend class = "rebellion"> Categories </legend>

                    <?php
                        $stmt2 = $DB_con->query('SELECT catID, catTitle FROM blog_cats ORDER BY catTitle');
                            $checked = null;
                        
                                while ($row2 = $stmt2->fetch()) {
                                    if (isset($_POST['catID'])) {
                                        if (in_array($row2['catID'], $_POST['catID'])) {
                                            $checked = "checked = 'checked'";
                                        } else {
                                            $checked = "";
                                    }}
                                        echo "<input type = 'checkbox' name = 'catID[]' value = '" . $row2['catID'] . 
                                                "' $checked> " . $row2['catTitle'] . "<br />";
                                }?>
            </fieldset>
        </div> 
           
        <div class = "clearfix"> </div> <hr/>
        
        <div class = "form-group rebellion">
            <input type = "submit" class = "btn btn-block btn-primary" name = "submit" value = "Update">
        </div>   
    </form> 
        
    </div>
    </div>
    </div></div>
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
   