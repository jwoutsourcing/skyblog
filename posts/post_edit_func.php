    
<?php
  
  //error checks

if(isset($_POST['submit'])){
    
    extract($_POST);
    
    $title          = trim($_POST["title"]);        //trim whitespace
    $description    = trim($_POST["description"]);
    $content        = trim($_POST["content"]);    
    
    if($id ==''){
        $error[] = 'Please submit a valid id';
    }

    if($title ==''){
        $error[] = 'Please enter a title';
    }
    else if (strlen($title)> 255) {
        $error[]= "Title can not be longer than 255 characters";
    }

    if($description ==''){
        $error[] = 'Please enter the description.';
    }

    if($content == ''){
        $error[] = 'Please enter text.';
    }

    if(!isset($error)){
        try {
            //insert into database
            $stmt = $DB_con->prepare('UPDATE posts SET title = :title, description = :description, content = :content '
                    . 'WHERE id = :id') ;
            $stmt->execute(array(
                ':title' => $title,
                ':description' => $description,
                ':content' => $content,
                ':id' => $id,
            ));

            echo "<script type='text/javascript'>alert('Post edited successfully!');
            window.location.href='index.php?action=updated'; </script>";
            
        } catch(PDOException $e) {
            echo $e->getMessage();
        }
    }
 }
  
    //check for any errors
include_once ('C:\xampp/htdocs/BlogPHP/functions.php');

if (isset($error) && !empty($error)) {       //print errors
    print_errors($error);
}
  
try {
    $stmt = $DB_con->prepare("SELECT id, title, description, content FROM posts WHERE id = :id");
    $stmt->execute(array(':id' => $_GET['id']));
    $row = $stmt->fetch(); 

} catch(PDOException $e) {
    echo $e->getMessage();
}
