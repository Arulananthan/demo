<?php
//session_start();
include "header.php";
include "menu.php";
include "db.php";
//sesssion_start();
 ?>



<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}
}
body {font-family: Arial, Helvetica, sans-serif;}

input[type=text], select, textarea {
    width: 35%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 13px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>
<body>
<div class="container_10">

  <form action="" name="mail" method="post" enctype="multipart/form-data" class="animate" >
    <label for="fname"><b>First Name</b></label><br>
    <input type="text" id="fname" name="firstname" placeholder="Your name.."><br>

    <label for="lname"><b>Last Name</b></label><br>
    <input type="text" id="lname" name="lastname" placeholder="Your last name.."><br>

    <label for="email"><b>Email ID</b></label><br>
    <input type="text" id="email" name="email" placeholder="Your Email ID.."><br>

    <label for="country"><b>Country</b></label><br>
    <select id="country"  name="country">
      <option value="">Select the Countries</option>
      <?php
      $country = mysqli_query($con,"select * from Countries");
    while($fet_country = mysqli_fetch_array($country)){
        ?>
      <option value="<?php echo $fet_country['cid'];?>"><?php echo $fet_country['countries_name'];?></option>
      <?php }?>
    </select><br>

    <label for="subject"><b>Subject</b></label><br>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:180px"></textarea><br>
<span>
    <input type="submit" value="Submit" name="submit" style="margin-left: 172px;"></span>
  </form>
</div>
<?php
//
// $to = "arulanandhan.it@gmail.com";
// $subject = "My subject";
// $txt = "Hello world!";
// echo $headers = "From: arulanantham.it@gmail.com" . "\r\n" .
// "CC: ar08jt@gmail.com";
//
// mail($to,$subject,$txt,$headers);
?>
<?php
if(isset($_POST["submit"])){


   echo $to = $_POST["email"];
   $subject = $_POST["subject"];
   $body =$_POST["firstname"];
   $headers = "From: arulanandhan.it@gmail.com" . "\r\n" . "CC: ar08jt@gmail.com";
   if (mail($to, $subject, $body, $headers)) {
    echo "message sent!";
    }
    else {
        echo "failed";
    }
  // mail($to,$subject,$body,$header);
   //echo "Mail sented successfully...";
}
?>



</body>
</html>
