<?php
session_start();
session_unset();
session_destroy(); 
if($_SESSION["admin"] == ""){
  ?>
<script type="text/javascript">
window.location="login.php";
</script>
<?php
}
 ?>
