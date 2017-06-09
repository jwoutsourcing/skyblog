
<!DOCTYPE html>
<html lang="en">

<head>
    
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Rachel's script -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="BlogPHP/css/style.css">
<!-- end of rachel's script -->

<!-- slide show -->
<!-- <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/> -- these don't exist as files -->
<!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-- included already>
 
 <!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>  included already-->
<script src="responsiveslides.min.js">

<style>
    .carousel-inner> .itm > img,
    .carousel-inner> .itm > img,{
    width: 70%;
    margin: auto;
    }
</style>
</script> 
</head>

<!-- you need a body after a head -- you cannot put slides before navbar. nav is top>
<div class="slideshow">

  <div class="container">

    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item active">
          <img src="Slide_images\download.jpg" alt="...">
          <div class="carousel-caption">
           
          </div>
        </div>
        <div class="item">
          <img src="Slide_images\images-1.jpg" alt="...">
          <div class="carousel-caption">
           
          </div>
        </div>
        <div class="item">
          <img src="Slide_images\images-2.jpg" alt="...">
          <div class="carousel-caption">
            
          </div>
        </div>
      </div>
     
      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
    </div>
      
    
  
      <div class="navbar navbar-fixed-bottom navbar-default">
          <div class="container-fluid">
              <div class="navbar-header">
              </div>
          </div>
      </div>
     </div>
</style>
 <!-- end of slide show --> 
 <!-- BIO FORM TODAY-->
 <div class="bio_textbox container" class="">
    
     <h2><strong>Bio </strong></h2>
     <div class="bio_textbox container" class="">
       <form action="/validate_bio_function.php" method="post">
        
      <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
           
 </div>
 <form action="/validate_bio_form.php" method='post'>
     You wrote:<textarea name="type here" rows="5" cols="40"><br>
     </textarea>
     <button type="submit" form="validate_bio_function" value="Submit">Submit</button>
  </form>
 
 <!-- end of bio form -->
<!-- Top NavBar -->
<?php include('layout/topnavs/topnav_aboutme.php');?> <!-- there is no other page on the site where this isn't above everything-->
<!-- End Top NavBar -->
 
<div class="container-fluid text-center"> <!-- everything aove the nav needs to be below it in the main container -->  
<div class="row content">


<!-- Main Container -->
<div class="col-sm-10 susie text-left color-susie main_container">

    
<!-- video container --> 
<div class="video">
<div class="video-container">


<iframe name="resultFrame" width="500" height="300"> 
<a width="560" height="315" src="https://www.youtube.com/embed/ADkCiRZMZkg"frameborder="0" allowfullscreen</a>
 

</iframe>
     
</div>
</div>
<!-- end of video container -->


<!-- Upload image function--> 
<div class="image-upload">
<div class="container">
 
        
    <form 
        
        action="upload.php" method="post"
        enctype="multipart/form-data"> 
        <input type="hidden" name="MAX_FILE_SIZE" value="500000000">
        <input type="file" name="myfile" id="myfile"/>
        <input type="submit" value="Upload Image" name='sumbit'/>
        <input action=" <?php if($_SERVER ["REQUEST_METHOD"]=='POST'){
        echo About_Me_Functions\AboutMe\upload(upload);}?>"
           
    </form>
   
</div>
</div>
 
 </div>



<!-- Social Media Feed -->


<!-- Social Media Icons -->
<div class="Social Media Buttons container">
   
<nav>
        <ul>
          <!--<body> -- goes at the top. under /head -->
           
        
          <h2 class= "Style Social Media Buttons"</h2>
          <a href="https://www.facebook.com/reylofans/" <img class="fa fa-facebook"/><image  onclick=""/></button></a>
          <a href="https://twitter.com/starwars?lang=en-gb" <img class="fa fa-twitter"/><image onclick=""></button></a>
          <a href="https://youtu.be/6U0B3XDDak8" <img class="fa fa-youtube"/><button onclick=""/></button></a>
          <a href="https://www.instagram.com/starwars/?hl=en" <img class="fa fa-instagram"/><button onclick=""></button></a>
      
            </body>
            <a href="css/AboutMe.css" target="_parent"></a>
        </ul>
</nav>
</div>
<!-- end of social media icons -->

<!-- Right Sidebar -->
<?php include('layout/sidenav_right.php'); ?>
<!-- End Right Sidebar -->


<!-- Footer --> 
<?php include('layout/footer.php'); ?>
<!-- End Footer -->
<!-- Susie double check style container-->

</div>
</div>

</body>
</html>
