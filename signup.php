<?php

include("db.php");

?>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" /> -->
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 30.5%;
padding: 7px 10px;
margin: 6px 0;
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
    width: 30%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    /* width: auto; */
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
   background-color:0;
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
/* validation */
#commentForm {
		width: 500px;
	}
	#commentForm label {
		width: 250px;
	}
	#commentForm label.error, #commentForm input.submit {
		margin-left: 253px;
    color:red;
	}
	#signupForm {
		width: 670px;
	}
	#signupForm label.error {
		margin-left: 10px;
		width: auto;
		display: inline;
    color:red;
	}
	#newsletter_topics label.error {
		display: none;
		margin-left: 103px;
	}
</style>
</head>
<body>
<!-- <form class="modal-content animate" action="" method="post" enctype="multipart/form-data"> -->
  <form class="modal-content animate" id="signup" name="signup" action="" method="post" enctype="multipart/form-data" autocomplete="off">
    <div class="imgcontainer">
    <!--  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>-->
      <img src="arul.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="fname"><b>First Name</b></label><br>
      <input type="text" placeholder="Enter Username" name="fname" id="fname" ><br>

      <label for="lname"><b>Last Name</b></label><br>
      <input type="text" placeholder="Enter Password" name="lname" id="lname"><br>

      <label for="email"><b>Email ID</b></label><br>
      <input type="email" placeholder="Enter Email ID" name="email" id="email"><br>

      <label for="psw"><b>Password</b></label><br>
      <input type="password" placeholder="Enter Password" name="psw" id="psw"><br>

      <label for="cpsw"><b>Conform Password</b></label><br>
      <input type="password" placeholder="Enter Conform Password" name="cpsw" id="cpsw"><br>

      <label for="psw"><b>Mobile no</b></label><br>
      <input type="text" placeholder="Enter Mobile" name="mobile_no" id="mobile_no"><br>

      <label for="lucky"><b>Your LuckNo</b></label><br>
      <input type="text" placeholder="Enter Lucky No" name="lucky" id="lucky"><br>

      <button type="submit" name="submit" id="submit">Register</button>
    </div>

     <div class="container" >
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <!-- <span class="psw">Forgot <a href="#">password?</a></span><br> -->

    </div>
    <a href="login.php">Already Account?</a>
  </form>

<?php

if(isset($_POST["submit"])){
$fname = $_POST["fname"];
$lname = $_POST["lname"];
$email = $_POST["email"];
$password = $_POST["psw"];
$cpassword = $_POST["cpsw"];
$mobile_no= $_POST["mobile_no"];
$lucky = $_POST["lucky"];
echo "insert into login (first_name,last_name,email,password,cpassword,mobile_no,lucky_no) values('".$fname."','".$lname."','".$email."','".$password."','".$cpassword."','".$mobile_no."','".$lucky."')";
$sign = mysqli_query($con,"insert into login (first_name,last_name,email,password,cpassword,mobile_no,lucky_no) values('".$fname."','".$lname."','".$email."','".$password."','".$cpassword."','".$mobile_no."','".$lucky."')");

  ?>
  <?php
if(!empty($sign)){
?>
<script>
window.location="login.php";
</script>
<?php
}
}
 ?>

<script>
// Get the modal
var modal = document.getElementById('id01');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<script language="javascript" type="text/javascript" src="js/js/jquery.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script language="javascript" type="text/javascript" src="js/js/jquery.validate.js"></script>
<script>
 $(document).ready(function(){
   $.validator.setDefaults({
 			submitHandler: function () {
		alert( "submitted!" );
	}
		});
  $( "#signup" ).validate( {
  				rules: {
  					fname: "required",
            lname: "required",
  					psw: {
   						required: true,
  						minlength: 5
   					},
  					cpsw: {
  						required: true,
  						minlength: 5,
  						equalTo: "#psw"
  					},
  					email: {
   						required: true,
   						email: true
  					},
   					mobile_no: "required",
            lucky :"required"
  				},
  				messages: {
  					fname: "Please enter your firstname",
            lname: "Please enter your lastname",

  					psw: {
  						required: "Please provide a password",
              minlength: "Your password must be at least 5 characters long"
  					},
   					cpsw: {
   						required: "Please provide a password",
   						minlength: "Your password must be at least 5 characters long",
  						equalTo: "Please enter the same password as above"
  					},
  					email1: "Please enter a valid email address",
  					mobile_no: "Please accept our policy",
            lucky:"Please enter a your lucky no"
  				},
  				errorElement: "em",
  				errorPlacement: function ( error, element ) {
  					// Add the `help-block` class to the error element
  					error.addClass( "help-block" );

					// Add `has-feedback` class to the parent div.form-group
  					// in order to add icons to inputs
					element.parents( ".col-sm-3" ).addClass( "has-feedback" );

  					if ( element.prop( "type" ) === "checkbox" ) {
   						error.insertAfter( element.parent( "label" ) );
   					} else {
   						error.insertAfter( element );
   					}

   					// Add the span element, if doesn't exists, and apply the icon classes to it.
   					if ( !element.next( "span" )[ 0 ] ) {
   						$( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
   					}
   				},
   				success: function ( label, element ) {
   					// Add the span element, if doesn't exists, and apply the icon classes to it.
  					if ( !$( element ).next( "span" )[ 0 ] ) {
  						$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
  					}
   				},
   				highlight: function ( element, errorClass, validClass ) {
   					$( element ).parents( ".col-sm-3" ).addClass( "has-error" ).removeClass( "has-success" );
   					$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
   				},
   				unhighlight: function ( element, errorClass, validClass ) {
   					$( element ).parents( ".col-sm-3" ).addClass( "has-success" ).removeClass( "has-error" );
  					$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
   				}
   			} );
 });
</script>
</body>
</html>
