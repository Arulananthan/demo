<?php
include("header.php");
include("menu.php");
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
  .CodeMirror-scroll {
    overflow: scroll !important;
    /* margin-bottom: -30px; */
    margin-right: -30px;
    padding-bottom: 30px;
    height: 100%;
    outline: none;
    position: relative;
}
fieldset, .preview_sql {
    margin-top: 1em;
    border-radius: 4px 4px 0 0;
    -moz-border-radius: 4px 4px 0 0;
    -webkit-border-radius: 4px 4px 0 0;
    border: #aaa solid 1px;
    padding: 0.5em;
    background: #eee;
    text-shadow: 1px 1px 2px #fff inset;
    -moz-box-shadow: 1px 1px 2px #fff inset;
    -webkit-box-shadow: 1px 1px 2px #fff inset;
    box-shadow: 1px 1px 2px #fff inset;
}
user agent stylesheet
fieldset {
    display: block;
    -webkit-margin-start: 2px;
    -webkit-margin-end: 2px;
    -webkit-padding-before: 0.35em;
    -webkit-padding-start: 0.75em;
    -webkit-padding-end: 0.75em;
    -webkit-padding-after: 0.625em;
    min-width: -webkit-min-content;
    border-width: 2px;
    border-style: groove;
    border-color: threedface;
    border-image: initial;
}
</style>
</head>
<body>
<!-- <form class="modal-content animate" action="" method="post" enctype="multipart/form-data"> -->
  <form class="modal-content animate" id="signup" name="signup" action="" method="post" enctype="multipart/form-data" autocomplete="off">
    <fieldset class="preview_sql">
    <!-- <div class="imgcontainer">
    <!--  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>-->
      <!-- <img src="arul.png" alt="Avatar" class="avatar">
    </div>  -->

    <div class="container">
      <label for="fname"><b>Table Name</b></label><br>
      <input type="text" placeholder="Enter the Table Name" name="t_name" id="t_name" ><br>

      <label for="lname"><b>Function Name</b></label><br>
      <input type="text" placeholder="Please enter the function name" name="f_name" id="f_name"><br>

      <label for="lname"><b>Query</b></label><br>
      <textarea name="query" id="query" placeholder="Please Writte the Query..." style="width: 347px;height: 187px;" class="CodeMirror-scroll"></textarea><br>
<br>
      <select name="d_name[]" id="d_name" style="width: 345px;height: 107px;" multiple>

          <?php
           $connn = mysqli_connect('localhost','root','','test');
           $databases = mysqli_query($connn,"show DATABASES");
           while($fet_databases = mysqli_fetch_array($databases)){?>
         <option value="<?php echo $fet_databases['Database']; ?>"><?php echo $fet_databases['Database']; ?></option>
         <?php }?>
      </select><br><br>

      <!-- <input type="checkbox" name="d_name[]" id="d_name" value="<?php //echo $fet_databases['Database']; ?>" > <?php //echo $fet_databases['Database']; ?> </input><br> -->


      <button type="submit" name="excute" id="excute">Excute</button>
    </div>

     <!-- <div class="container" >
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <!-- <span class="psw">Forgot <a href="#">password?</a></span><br>  ->

    </div> -->
  </fieldset>
  </form>

<?php
	echo "<pre>";
if(isset($_POST["excute"])){
    $t_name  = $_POST["t_name"];
    $f_name  = $_POST["f_name"];
    $query   = $_POST["query"];
          //$d_base  = $_POST["d_name"];
    if($_POST["d_name"] !=''){
            $d_base= $_POST["d_name"];
    }
    $base_imp = implode(',',$d_base);
          // $base_imp = implode(',',$d_base);
           $exp_base = explode(',',$base_imp);
           //print_r($d_base);
        //  print_r($exp_base);
          //print_r($d_base);

          //$db_name = $_POST["db_name"];

          $conn = mysqli_connect('localhost','root','','test');
          if($conn ->connect_errno){
              	echo "database not connected";
              	die($conn ->connect_error);
          }
          else{
          	//echo "database connected...";
          }
         $sql = "$query";
      //  print_r($sql);
          $create = mysqli_query($conn,$sql);

          if($create){
                    	  // $output=fopen('/tmp/dumpfile.csv','w+');//echo "table inserted successfully..";
                    	 $database = mysqli_query($conn,"SHOW DATABASES");

                       while($fet_database = mysqli_fetch_array($database)){
                         // print_r($fet_database);
                        // echo "<pre>";
                        // print_r($fet_database['Database']);
                            //print_r($exp_base);
                          if($fet_database['Database'] == $exp_base){
                              //  print_r($exp_base);
                                       //echo "equal database..";
                                    		$db_name = $fet_database['Database'];
                                    		$conn = mysqli_connect('localhost','root','',$db_name);
                                    		$data = mysqli_query($conn,$sql);
                                      //  fputcsv( $output, $data, ',', '"');
                                      //  print_r($data);
                                    // if($conn){
                                    // 			echo "sub database table inserted..";
                                    // 		}
                                    // else{
                                    // 			echo "not insert sub database ";
                                      		}

                                       $sign = mysqli_query($conn,"INSERT INTO `database` (`table_name`, `function`, `query`, `creater_name`, `db_name`, `added_date`) VALUES ('$t_name', '$f_name', '$query', 'arul', '$base_imp', CURRENT_TIMESTAMP);");

                      // }
                    }


                    ?>

          <!-- <script>
          window.location="list.php";
          </script> -->
          <?php
          }
          else{
               echo "Already exist...";
          }
}
 ?>

<script>
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
</script>


</body>
</html>
