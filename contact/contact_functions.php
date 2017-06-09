
<?php
	
$result = $name = $email = $message = $human = "";
$errName = $errEmail = $errMessage = $errHuman = "";

if (isset($_POST["submit"])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $human = intval($_POST['human']);

$from = 'skytravelblog@gmail.com'; 
$to = 'jwoutsourcing@outlook.com'; 
    $subject = 'MESSAGE FROM YOUR TRAVEL BLOG';
    $headers =  'From: $from' . "\r\n" .
                'Reply-To: $email' . "\r\n" ;
    $body = "From: $name \n E-Mail: $email \n Message: $message ";
    
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    $data = (filter_var($data, FILTER_SANITIZE_STRING));
return $data;
}

if (empty($_POST["name"])) {
        $errName = "Please enter your name.";
    }else{
        $name = test_input($_POST["name"]);
    }

if (empty($_POST["email"])) {
        $errEmail = "Please enter your email address.";
    }else{
        $email = test_input($_POST["email"]);
    
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errEmail = "This is not the email format we are looking for.";
    }
}

if (empty($_POST["message"])) {
        $errMessage = "Please enter your message.";
    }else{
        $message = test_input($_POST["message"]);
}

if (empty($_POST["human"])) {
        $errHuman = "Please enter the sum.";
    }else{
        if ($human !== 49) {
            $errHuman = 'Wrong answer. Prove you are not a droid. Try again.';
        }
    }

if (!$errName && !$errEmail &&  !$errMessage && !$errHuman) {
    if (mail ($to, $subject, $body, $headers)) {
        $result = '<div class = "alert alert-success"> <h2> <span class = "glyphicon glyphicon-ok"> </span> '
                . 'Message sent! </h2> <h3> Thanks for the message. I will try to reply soon.</h3> </div>';
    }else{
        $result = '<div class = "alert alert-danger"> <h2> <span class = "glyphicon glyphicon-warning-sign"> </span> '
                . 'Sorry there was a form processing error.</h2> <h3> Please try again later.</h3> </div>';
    }
}
}