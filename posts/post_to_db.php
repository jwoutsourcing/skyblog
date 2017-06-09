<?php


if (isset($_POST['submit'])) {                        //if form submitted process submitted data
    $title = trim($_POST["title"]);        //trim whitespace
    $description = trim($_POST["description"]);
    $content = trim($_POST["content"]);
    @$catID =($_POST["catID"]);

    if (empty($title)) {                              //error checks
        $error[] = "Please enter a title";
    } else if (strlen($title) > 255) {
        $error[] = "Title can not be longer than 255 characters";
    }

    if (empty($description)) {
        $error[] = "Please enter a description";
    }

    if (empty($content)) {
        $error[] = "Please enter content";
    }

     if (empty($catID)) {
        $error[] = "Please choose a category";
    }

    if (!isset($error)) {                            //if no errors, insert data in database
        try {

            $stmt = $DB_con->prepare('INSERT INTO posts (title,description,content,date) '
                    . 'VALUES (:title, :description, :content, :date)');

            $stmt->execute(array(
                ':title' => $title,
                ':description' => $description,
                ':content' => $content,
                ':date' => date('Y-m-d H:i:s')
            ));

            /* add categories of blog to database (can add more than one category)*/
            $id = $DB_con->lastInsertId();          //returns the ID of the last inserted row value                               
            assert(is_array($catID));                //check if assertion is false
            foreach ($catID as $theCatID) {
                $stmt = $DB_con->prepare('INSERT INTO blog_post_cats (postID, catID) VALUES (:postID, :catID)');
                $stmt->execute(array(
                    ':postID' => $id,
                    ':catID' => $theCatID
                ));
            }

            echo "<script type='text/javascript'>alert('Post added successfully!');
            window.location.href='index.php?action=posted'; </script>";
        
            
            } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
   
}
include('C:\xampp/htdocs/BlogPHP/functions.php');

if (isset($error) && !empty($error)) {       //print errors
    print_errors($error);
}
