<?php

require_once('C:\xampp/htdocs/BlogPHP/database/posts_dbconfig.php');
require_once('functions.php');

/*If delete post request has been sent, blog deleted from database, the confirmation of 
deletion is passed to the url on the index page */

 if(isset($_GET['delpost'])){ 
 
    $stmt = $DB_con->prepare('DELETE FROM posts WHERE id = :id');
    $stmt->execute(array(':id' => $_GET['delpost']));

   echo "<script type='text/javascript'>alert('Post deleted successfully!');
            window.location.href='index.php?action=updated'; </script>";
}

/* Delete category from database. If delete post request has been sent through the url in
 * the deletecat function , blog matching the id sent is deleted from database, 
 * the confirmation message of deletion is sent as a query string to the web server (index.php) */

if (isset($_GET['deletecat'])) {
    $stmt = $DB_con->prepare('DELETE FROM blog_cats WHERE catID = :catID');
    $stmt->execute(array(':catID' => $_GET['deletecat']));
    
    echo "<script type='text/javascript'>alert('Category deleted successfully!');
            window.location.href='index.php?action=updated'; </script>";
} ?>

<!DOCTYPE html>
<html lang="en">
    
<head>
    
<title> Admin Console </title>  
<?php include('layout/head.php');?> 

<script language = "JavaScript" type = "text/javascript">
    
// Confirms with user delete option and passes id of blog being deleted to url/server admin_index //   
    function delpost(id, title){
        if (confirm("Are you sure you want to delete " + title)) {
            window.location.href = 'delete_edit_admin.php?delpost=' + id;
            }
        }
        
// Confirms with user delete option, if ok pressed, passes id of category being deleted to url/server admin_category //     
    function deletecat(id, title){
        if (confirm("Are you sure you want to delete " + title)){
                window.location.href = 'delete_edit_admin.php?deletecat=' + id;
        }
    }
</script>

</head>
    
<body>
     
<!-- Top NavBar -->
<?php include('layout/topnavs/topnav_posts.php');?>
<!-- End Top NavBar -->
    
<div class = "container-fluid text-center">    
<div class = "row content">


<!-- Centre Container -->
<div style = "background:transparent url('imgs/background/C3POAdmin.png') no-repeat center center /cover" 
     class = "col-sm-10 img-text-left main_container"> 
<br><br><br>

<div class="col-sm-8 pull-right">
    
    <div class = "panel panel-default transparent">
    <div class = "panel-body">
        
    <h3 class = "rebellion" > Posts Admin </h3> <br> 
    
   <p class = "text-left rebellion" > <a href='post_blog.php'> Create New Post </a> </p> <br>     
    
    <table cellspacing = "20">
        <tr class = "rebellion">
            <th class = "col-sm-2"> Title </th>
            <th class = "col-sm-2"> Date </th>
            <th class = "col-sm-2"> Action </th>
        </tr>
        
    <?php
        try {
        $stmt = $DB_con->query('SELECT id, title, date FROM posts ORDER BY id DESC');
    
            while($row = $stmt->fetch()){    
                echo '<tr>';
                echo '<td class = "col-sm-2 text-left">'.$row['title'].'</td>';
                echo '<td class = "col-sm-2 text-left">'.date('jS M Y', strtotime($row['date'])).'</td>';
    ?>
        
        <td class = "col-sm-2 text-left">
            <a href = "edit_post.php?id= <?php echo $row['id'];?>"> 
                Edit  </a> - <!--edit and delete link passing id-->                        
            <a href = "javascript:delpost('<?php echo $row['id'];?>','<?php echo $row['title'];?>')">
                Delete </a> <!---calls javascript function--->
        </td>
            
    <?php  echo '</tr>'; }

        } catch(PDOException $e) {
            echo $e->getMessage();
        }
    ?>

    </table>  <br>
            
    <h3 class = "rebellion" > Category Admin </h3> <br> 
    
    <p class = "text-left rebellion"> <a href = 'post_category.php'> Create New Category </a> </p>

    <table cellspacing = "20">
        <tr class = "rebellion">
            <th class = "col-sm-3"> Title </th>
            <th class = "col-sm-3"> Action</th>
        </tr>
            
    <?php
        try {
            $stmt = $DB_con->query('SELECT catID, catTitle FROM blog_cats ORDER BY catTitle DESC');
                while ($row = $stmt->fetch()) {
                    echo '<tr>';
                    echo '<td class = "col-sm-2 text-left">' . $row['catTitle'] . '</td>';
    ?>
            <td class = "col-sm-3 text-left ">
                <a href = "edit_category.php?id= <?php echo $row['catID']; ?>"> 
                    Edit </a> - <!---directs to edit_category.php passing the catID selected---> 
                <a href = "javascript:deletecat('<?php echo $row['catID']; ?>' , '<?php echo $row['catTitle']; ?>')">
                    Delete </a> <!---directs to jaavascript function passing the catID and catTitle selected-->
            </td>
            
    <?php   echo '</tr>'; }
        
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    ?>
            
    </table> <br>
    
    </div>
    </div> 
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

   




