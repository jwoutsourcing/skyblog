<?php include_once('C:\xampp/htdocs/BlogPHP/database/posts_dbconfig.php'); ?>

<!DOCTYPE html>

<div class = "col-sm-8 pull-right">
    
    <div class = "panel panel-default transparent">
    <div class = "panel-body">
        
    <h3 class = "rebellion dark_orange" > This is my story </h3>
    
    <p class = "rebellion black"> I have embarked on an amazing adventure. <br> Follow my travels around a galaxy far far away...</p>
    
<?php 

include_once('C:\xampp/htdocs/BlogPHP/functions.php'); //list posts from database
    
    try {        
        $stmt = $DB_con->query('SELECT id, title, description, date FROM posts ORDER BY id DESC'); //select post from db and order by id in descending order
        
            while($row = $stmt->fetch()){   /*loop through posts. display id & title passed to view_posts.php and used as a variable */          
                echo '<div>';
                echo '<br/>';
                echo '<h2 class = "rebellion"> <a href = "view_post.php?id='.$row['id'].'">'.$row['title'].' </a> </h2>';
                echo '<p>'.'<em>'. $row['description']. '</em>'.'</p>';                
                echo '<p class = "date-font"> Posted '.date('jS M Y H:i:s', strtotime($row['date'])). '</p>';
        
                $stmt2 = $DB_con->prepare('SELECT catTitle, blog_cats.catID '
                        . 'FROM blog_cats, blog_post_cats '
                        . 'WHERE blog_cats.catID = blog_post_cats.catID '
                        . 'AND blog_post_cats.postID = :id'); //select relevent category from blog_cats table where post id mataches post id in the post category database
                
                $stmt2->execute(array(':id' => $row['id']));

                $catRow = $stmt2->fetchAll(PDO::FETCH_ASSOC);
                    $links = array();
                        foreach ($catRow as $cat) {
                            $links[] = "<a href='view_categoryposts.php?id=" . $cat['catID'] . "'>" . $cat['catTitle'] . "</a>";
                        }
                
                echo '<p class = " date-font rebellion">'.'Tags: '.implode(", ", $links);
                echo '</p>';

                readMore($row['id']);
                echo '</div>';
            }
        
    } catch(PDOException $e) {
        echo $e->getMessage();
    }
?>
    
    </div>
    </div> 
    
</div> 

