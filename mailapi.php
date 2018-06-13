
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


		<label for="uname"><b>Email</b></label><br>
		<input type="email" placeholder="Please Include country code your phone no" name="email" required><br>
		<label for="uname"><b>Subject</b></label><br>
		<input type="text" placeholder="Please Include country code your phone no" name="sub" required><br>
	<label for="psw"><b>Message</b></label>
	<br>
	<textarea name="message" id="message" style="width: 324px;
	height: 139px;"></textarea><br>
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
	$url = 'https://api.elasticemail.com/v2/email/send';
	echo $url;

			try{
			$post = array('from'=>'support@mapme.in',
			'fromName' => 'mapme',
			'apikey' => '8cb82ab1-e968-435a-83b0-ffd140877ee9',
			'subject' => 'hi',
			'to' => 'arulanandham.it@gmail.com',
			'bodyHtml' => 'hi welcome to all',
			'bodyText' => '',
			'isTransactional' => false);

			$ch = curl_init();
			curl_setopt_array($ch, array(
			CURLOPT_URL => $url,
			CURLOPT_POST => true,
			CURLOPT_POSTFIELDS => $post,
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_HEADER => false,
			CURLOPT_SSL_VERIFYPEER => false
			));

			$result=curl_exec ($ch);
			curl_close ($ch);

			echo $result;
			}
			catch(Exception $ex){
			echo $ex->getMessage();
			}

}
?>



</body>
</html>





<?php



//	define(ADMIN_EMAIL, "support@mapme.in");
//	define(MAP_EMAIL_API,"8cb82ab1-e968-435a-83b0-ffd140877ee9");
//	define(INS_EMAIL_API,"8cb82ab1-e968-435a-83b0-ffd140877ee9");
