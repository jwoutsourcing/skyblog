<!DOCTYPE html>

<!-- NavBar -->

<nav class = "navbar navbar-default">
    <div class = "container-fluid">
    <div class = "navbar-header">
        
        <button type = "button" class = "navbar-toggle" data-toggle = "collapse" data-target = "#myNavbar">
            <span class = "icon-bar"> </span>
            <span class = "icon-bar"> </span>
            <span class = "icon-bar"> </span>
            <span class = "icon-bar"> </span>
        </button>
      
        <a class = "navbar-brand" href = "index.php"> 
            <img style = "width: 75px;" src = "imgs/logo/ReyLogo.png" alt = "Blog Logo"> </a>
    </div>
        
    <div id = "myNavbar" class = "collapse navbar-collapse">
        
        <ul class = "nav navbar-nav navbar-right rebellion">
            <li> <a href = "aboutme.php"> <span class = "glyphicon glyphicon-star small"> </span> About Me </a> </li>
            <li> <a href = "contact.php"> <span class = "glyphicon glyphicon-envelope"> </span> Contact </a> </li>
            <li> <a href = "FAQ.php"> <span class = "glyphicon glyphicon-education small"> </span> FAQ </a> </li>
        <?php if (!isset($_SESSION['user_session'])) :?>
            <li> <a href = "login.php"> <span class = "glyphicon glyphicon-log-in small"></span> Login </a> </li>           
        <?php endif; ?>
        <?php if (isset($_SESSION['user_session'])) :?>
            <li> <a href = "login/logout.php?logout=true"> <span class = "glyphicon glyphicon-log-out small"></span> Logout </a> </li>
        <?php endif; ?>
        </ul>
        
    </div>
  </div>
</nav>

<!-- End NavBar -->