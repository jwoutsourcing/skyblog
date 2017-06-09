<?php require_once('login/sign_up_functions.php');?>

<!DOCTYPE html>
<html lang="en">
    
<head>
    
<title> Road to Jedi - Register </title>
<?php include('layout/head.php');?>
  
</head>

<body>
     
<!-- Top NavBar -->
<?php include('layout/topnavs/topnav_login_signup.php');?>
<!-- End Top NavBar -->
    
<div class = "container-fluid text-center">    
<div class = "row content">
      
<!-- Main Container -->
<div style = "background:transparent url('imgs/background/Reybackground2.jpg') no-repeat center center /cover" 
        class = "col-sm-10 text-left main_container"> 
    
    <h1 class = "text-center rebellion"> Join The Rebellion</h1> <br> <br> <br>
    
    <div class = "lcontainer">
    <div class = "lform-container transparent">
    
    <form method = "post">
        <!--<h2 class = "rebellion">Sign Up</h2><hr />-->
        
    <?php if(isset($error)){
            foreach($error as $error){ ?>
                <div class = "alert alert-danger">
                    <i class = "glyphicon glyphicon-warning-sign"> </i> &nbsp; 
                        <?php echo $error;?>
                </div>
    <?php   }
            }else if(isset($_GET['joined'])){ ?>
                <div class= " alert alert-info">
                    <i class= " glyphicon glyphicon-log-in"> </i> &nbsp; 
                        Successfully registered <a href='login.php'>login</a> here
                </div>
    <?php   } ?>
            
    <div class = "form-group">
        <input type = "text" class = "form-control" name ="txt_uname" placeholder = "Enter Username" 
            value = "<?php if(isset($error)){echo $uname;}?>" />
    </div>
        
    <div class = "form-group">
        <input type = "text" class = "form-control" name = "txt_umail" placeholder = "Enter E-Mail ID" 
               value = "<?php if(isset($error)){echo $umail;}?>" />
    </div>
        
    <div class = "form-group">
        <input type = "password" class = "form-control" name = "txt_upass" placeholder = "Enter Password" />
    </div>
            
    <div class = "clearfix"></div> <hr/>
            
    <div class = "form-group rebellion">
        <button type = "submit" class = "btn btn-block btn-primary sign_button" name = "btn-signup">
                <i class = "glyphicon glyphicon-open-file"> </i> &nbsp;SIGN UP </button>
    </div>
        
        <br/>
            <label class = "dark_grey"> Have an Account ! <a href="login.php" class = "dark_orange"> Sign In </a> </label>
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
<?php include('layout/footer.php');?>
<!-- End Footer -->

</body>
</html>



