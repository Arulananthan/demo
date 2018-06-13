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

    <form action="" name="sms" method="post" enctype="multipart/form-data" class="animate" >
      <label for="fname"><b>Phone no</b></label><br>
      <input type="text" id="fname" name="firstname" placeholder="Please enter the phone no"><br>
      <label for="subject"><b>Message</b></label><br>
      <textarea id="Message" name="Message" placeholder="Write something.." style="height:180px"></textarea><br>
  <span>
      <input type="submit" value="Submit" name="submit" style="margin-left: 172px;"></span>
    </form>
  </div>

  <?php
  if(isset($_POST["submit"])){


    $curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => "https://control.msg91.com/api/postsms.php",
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "POST",
      CURLOPT_POSTFIELDS => "<MESSAGE> <AUTHKEY>185673Ah8Bfl3v7H75a1bfa61</AUTHKEY><UNICODE>1</UNICODE> <SENDER>Mapme</SENDER> <ROUTE>4</ROUTE> <CAMPAIGN>TRIAL</CAMPAIGN> <COUNTRY>91</COUNTRY> <SMS TEXT=\"hi\" > <ADDRESS TO=\"8012669450\"></ADDRESS> <ADDRESS TO=\"9655430007\"></ADDRESS> </SMS> <SMS TEXT=\"hi test message\" > </SMS> </MESSAGE>",
      CURLOPT_SSL_VERIFYHOST => 0,
      CURLOPT_SSL_VERIFYPEER => 0,
      CURLOPT_HTTPHEADER => array(
        "content-type: application/xml"
      ),
    ));

    $response = curl_exec($curl);
    $err = curl_error($curl);

    curl_close($curl);

    if ($err) {
      echo "cURL Error #:" . $err;
    } else {
      echo $response;
    }

  }
  ?>
  </body>
  </html>
