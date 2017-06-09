
<div>
    <h3 class = "rebellion"> Welcome <?php print($userRow['user_name']);?> </h3>
    <br>
    <?php if ($userRow['user_role'] == 'admin') :?>
    <div class = "col-sm-9 pull-right">
        <a href = "post_blog.php" class = "btn btn-default rebellion dark_orange"> Create New Post </a>
        <!--<a href = "post_category.php" class = "btn btn-default rebellion dark_orange"> Create New Category </a>-->
        <a href = "delete_edit_admin.php" class = "btn btn-default rebellion dark_orange"> Admin Console </a>
    </div>
   <?php endif; ?>
    <br>
</div>
      