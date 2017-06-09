<?php

include_once('C:\xampp/htdocs/BlogPHP/database/posts_dbconfig.php');
include_once('C:\xampp/htdocs/BlogPHP/functions.php');

        //if form has been submitted process it
        if (isset($_POST['submit'])) {

            //collect form data
            extract($_POST);

            $title = trim($_POST["catTitle"]);        //trim whitespace


            if (empty($catID)) {                              //error checks
                $error[] = "Please submit valid id";
            }

            if (empty($catTitle)) {
                $error[] = "Please enter a category";
            } else if (strlen($catTitle) > 255) {
                $error[] = "Category can not be longer than 255 characters";
            }

            $stmt = $DB_con->prepare("SELECT catTitle FROM blog_cats WHERE catTitle=:catTitle");
            $stmt->execute(array(':catTitle' => $catTitle));
            $row = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($row['catTitle'] == $catTitle) {
                $error[] = "Category already exists";
            }

            if (!isset($error)) {

                try {


                    //insert updated data into database
                    $stmt = $DB_con->prepare('UPDATE blog_cats SET catTitle = :catTitle WHERE catID = :catID');
                    $stmt->execute(array(
                        ':catTitle' => $catTitle,
                        ':catID' => $catID
                    ));

                    echo "<script type='text/javascript'>alert('Category edited successfully!');
            window.location.href='index.php?action=updated';
            </script>";
                } catch (PDOException $e) {
                    echo $e->getMessage();
                }
            }
        }
     
        if (isset($error) && !empty($error)) {       //print errors
            print_errors($error);
        }

        //select the category title you are editing from the database
        try {

            $stmt = $DB_con->prepare('SELECT catID, catTitle FROM blog_cats WHERE catID = :catID');
            $stmt->execute(array(':catID' => $_GET['id']));
            $row = $stmt->fetch();
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
        