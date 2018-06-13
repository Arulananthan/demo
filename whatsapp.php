<?php error_reporting(0);
//include("header.php");
//include("menu.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 20px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 28%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}

@keyframes animatezoom {
    from {transform: scale(0)}
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
<!-- <form class="modal-content animate" action="" method="post" enctype="multipart/form-data"> -->
  <form class="modal-content animate" action="" method="post" enctype="multipart/form-data" autocomplete="off">
    <div class="imgcontainer">
    <!--  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>-->
      <img src="arul.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>Phone Number</b></label>
      <input type="text" placeholder="Please Include country code your phone no" name="pno" id="pno" required>

    <label for="psw"><b>Message</b></label>
    <br>
    <textarea name="message" id="message" style="width: 324px;
    height: 139px;"></textarea>
  <!-- <a href="whatsapp://send?text=Hello World!&phone=+918012669450">Ping me on WhatsApp</a>-->
<a href="https://app.chat-api.com" target="_blank">	Click to WhatsApp Chat</a>
      <button type="button" name="submit" id="submit">Send</button>
    </div>


  </form>

<?php
//     $phone = $_POST["pno"];
//     $user = explode(',',$_POST["pno"]);
//   //print_r($user);
//     echo "<pre>";
// //echo $imp = implode('","',$user);'<br>';
//   // $contry = 91;
//    $imp = implode("','",$user);
//    echo $arul = "'$contry$imp'";
//
// if(isset($_POST["submit"]))
// {                                  //Send a message
//                $data = [
//                   'phone' =>"'91$imp'", // Receivers phone
//                    //'phone' =>'918012669450',
//                    'body' => $_POST["message"], // Message
//                ];
//               echo $data['phone'];
//               print_r($date['phone']);
//                $json = json_encode($data); // Encode data to JSON
//                                                 // URL for request POST /message
//                $url = 'https://eu4.chat-api.com/instance3883/message?token=im7s0yq77xa8d7sk';
//                                                  // Make a POST request
//               $options = stream_context_create(['http' => [
//                        'method'  => 'POST',
//                        'header'  => 'Content-type: application/json',
//                        'content' => $json
//                    ]
//                ]);
//                                                 // Send a request
//               echo $result = file_get_contents($url, false, $options);

//}

?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
 $(document).ready(function()
{

$("#submit").click(function(){
	var phone_nos = $("#pno").val();
  exp = [];
  var exp = phone_nos.split(',');
  $.each(function(k,val){
  var asd = exp.push('91'+val);
});
console.log(exp);



	var msg = $("#message").val();

    var url = 'https://eu4.chat-api.com/instance3883/message?token=im7s0yq77xa8d7sk';
    var data = {
    phone: exp, // Receivers phone
    body: msg, // Message
};

// Send a request
$.ajax(url, {
    data : JSON.stringify(data),
    contentType : 'application/json',
    type : 'POST'
});
    alert("Your message has been sent");
});

});

</script>















</body>
</html>
