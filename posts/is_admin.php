
<?php include_once ('C:\xampp/htdocs/BlogPHP/login/is_loggedin.php');?>

    <?php if ($userRow['user_role'] == 'admin'): ?>
   
        <a href = "edit_post.php?id= <?php echo $row['id'];?>" 
            class = "rebellion btn-default btn-blog pull-left"> Edit </a> <br><br>
    
        <a href = "javascript:delpost('<?php echo $row['id'];?>','<?php echo $row['title'];?>')" 
           class = "rebellion btn-default btn-blog pull-left"> Delete </a> 
           
        <?php
            if(isset($_GET['delpost'])){ 
            
                $stmt = $DB_con->prepare('DELETE FROM posts WHERE id = :id');
                $stmt->execute(array(':id' => $_GET['delpost']));

                echo "<script type='text/javascript'>alert('Post deleted successfully!');
                        window.location.href='index.php?action=updated'; </script>";
            }?>

        <script language = "JavaScript" type = "text/javascript">
            function delpost(id, title){
                if (confirm("Are you sure you want to delete " + title)) {
                    window.location.href = 'delete_edit_admin.php?delpost=' + id;
            }} 
    </script>
        
    <?php endif; ?>

<?php /* ORIGINAL
<?php include_once ('C:\xampp/htdocs/BlogPHP/login/is_loggedin.php'); ?> 
    
    <?php if ($userRow['user_role'] == 'admin'): ?>
    <a href="post_admin.php" class="rebellion btn-default btn-blog pull-left">Edit/Delete Post</a>
    <?php endif; ?>
*/?>