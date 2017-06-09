<?php

 //if form has been submitted process it
    if (isset($_POST['submit'])) {

        $catTitle = trim($_POST["catTitle"]);

        if (empty($catTitle)) {                              //error checks
            $error[] = "Please enter a category";
        } else if (strlen($catTitle) > 255) {
            $error[] = "Category can not be longer than 255 characters";
        }

        $stmt = $DB_con->prepare("SELECT catTitle FROM blog_cats WHERE catTitle=:catTitle");
        $stmt->execute(array(':catTitle' => $catTitle));
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($row['catTitle'] == $catTitle) {
            $error[] = "Category already exists, please enter a different Category name";
        }

        if (!isset($error)) {
            try {

                //insert into database
                $stmt = $DB_con->prepare('INSERT INTO blog_cats (catTitle) VALUES (:catTitle)');
                $stmt->execute(array(
                    ':catTitle' => $catTitle
                ));
                echo "<script type='text/javascript'>alert('Category added successfully!');
            window.location.href='delete_edit_admin.php';
             </script>";
            } catch (PDOException $e) {
                echo $e->getMessage();
            }
        }
    }

    include('functions.php');

    if (isset($error) && !empty($error)) {       //check for any errors and print
        print_errors($error);
    }
    ?>
