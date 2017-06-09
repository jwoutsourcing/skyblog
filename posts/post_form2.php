<?php include_once ('C:\xampp/htdocs/BlogPHP/login/is_loggedin.php');?>

<!DOCTYPE html>
<div class = "col-sm-7 pull-right">
    
<div class = "panel panel-default transparent">
<div class = "panel-body text-left">
        
<h3 class = "rebellion"> <?php echo $row['title']; ?></h3>
    
    <p> <?php echo $row['description']; ?> </p>
    <p> <em> Posted: <?php echo date('jS M Y', strtotime($row['date'])); ?> </em> </p> <br>
    
    <article> 
    <p> <?php echo $row['content'];?> </p> 
    </article>
       
    <!--<a class = " rebellion btn-default btn-blog pull-right" href=" "> Comment </a>-->
    
    <div id = 'disqus_thread'> </div>
        <script type = 'text/javascript'>
          
            var disqus_shortname = 'localhost-blogphp';
                (function() {
                    var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
                    dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
                    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
                })();
        </script>

    <?php if (isset($_SESSION['user_session'])): ?>
        
    <?php include('is_admin.php');?>
    
    <?php endif; ?>
    
    </div>
    </div> 
    
</div> 