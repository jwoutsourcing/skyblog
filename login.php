
<?php require_once('login/login_functions.php');?>

<!DOCTYPE html>
<html lang="en">
    
<head> 
    
<title> Road to Jedi - Login </title>
<?php include('layout/head.php');?>
  
</head>

<body>
     
<!-- Top NavBar -->
<?php include('layout/topnavs/topnav_login_signup.php'); ?>
<!-- End Top NavBar -->
    
<div class = "container-fluid text-center">    
<div class = "row content">
      
<!-- Main Container -->
<div style = "background:transparent url('imgs/background/Reybackground2.jpg') no-repeat center center /cover" 
     class = "col-sm-10 text-left main_container"> 

    <h1 class = "text-center rebellion"> Identify Yourself </h1> <br> <br> <br> <br><br><br>
    
    <div class = "lcontainer">
    <div class = "lform-container transparent">
        
        <form method = "post">
            
            <?php if(isset($error)){ ?>    
                <div class = "alert alert-danger">
                    <i class = "glyphicon glyphicon-warning-sign"> </i> &nbsp; <?php echo $error; ?> !
                </div>
            <?php } ?>
            
            <div class = "form-group">
                <input type = "text" class = "form-control" name = "txt_uname_email" 
                        placeholder = "Username or Email" required />
            </div>
        
            <div class = "form-group">
                <input type = "password" class = "form-control" name = "txt_password" 
                        placeholder = "Your Password" required />
            </div>
            
            <div class = "clearfix"> </div> <hr/>
        
            <div class = "form-group rebellion">
                <button type = "submit" name = "btn-login" class = "btn btn-block btn-primary sign_button">
                    <i class = "glyphicon glyphicon-log-in"> </i> &nbsp;SIGN IN
                </button>
            </div>
         <br/>
        
        <label class = "dark_grey">Don't have account yet ! 
            <a href = "sign_up.php" class = "dark_orange"> Sign Up </a> </label>
        
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
<?php include('layout/footer.php'); ?>
<!-- End Footer -->

</body>
</html>
