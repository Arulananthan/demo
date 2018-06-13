<?php
session_start();

error_reporting(0);
include("header.php");
include("menu.php");
include("db.php");
//print_r($_SESSION);
?>
<div class="container_12">
<div class="grid_10">
  <div class="box round first">
              <h2> Add Product</h2>
  <div class="block">
    <form name="form1" action="" method="post" class="animate" enctype="multipart/form-data" >
      <table border="1">
        <tr>
        <td><b>Product Name</b></td>
        <td><input type="text" name="pnm" class="form-control" ></td>
        </tr>
        <tr>
        <td><b>Product Price</b></td>
        <td><input type="text" name="pprice" class="form-control" ></td>
        </tr>
        <tr>
        <td><b>Product Quantity</b></td>
        <td><input type="text" name="pqty" class="form-control" ></td>
        </tr>
        <tr>
        <td><b>Product Image</b></td>
        <td><input type="file" name="pimage" class="form-control" ></td>
        </tr>
        <tr><td></td><td></td></tr>
        <tr>
        <td><b>Product Categoty</b></td>
        <td>
        <select name="pcategory" class="form-control" >
        <option value="Gents_Clothes">Gents Clothes</option>
        <option value="Ladies_Clothes">Ladies Clothes</option>
        <option value="Gents_Shoes">Gents Shoes</option>
        <option value="Ladies_Shoes">Ladies Shoes</option>
        </select>
        </td>
        </tr>
      </br>
        <tr>
          <tr colspan="2"><td colspan="2"></td><td></td></tr>
        <td><b>Product Description</b></td>
        <td>
        <textarea cols="30" rows="8" name="pdesc" ></textarea>
        </td>
        </tr>
        <tr>
        <td colspan="2" align="center"><input type="submit" class="btn btn-blue" name="submit1" value="upload"></td>
        </tr>
      </table>
    </form>
    <div class="success"></div>
    <div class="error"></div>

<?php
if(isset($_POST["submit1"]))
{
            $file =$_FILES["pimage"]["name"];
            $desn = "./product_image/".$file;
          //$desn1 = "".$file;
            move_uploaded_file($_FILES["pimage"]["tmp_name"],$desn);
          //  echo "insert into product values('','$_POST[pnm]',$_POST[pprice],$_POST[pqty],'$desn1','$_POST[pcategory]','$_POST[pdesc]')";
            $product = mysqli_query($con,"insert into product values('','$_POST[pnm]',$_POST[pprice],$_POST[pqty],'$file','$_POST[pcategory]','$_POST[pdesc]')");

}
 ?>
  </div>
  </div>
  </div>
</div>
<?php
//include("footer.php");

?>
<style>
/* Selects any optional <input> */
input:required {
  border: 1px dashed black;
}
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 10px 15px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
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
}
</style>
