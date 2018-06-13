<?php
include("header.php");
include("menu.php");
 ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />

    <title>DataTable|TJ Admin</title>


<div class="container_12">
<div class="grid_10">
    <div class="box round first grid">
        <h2>Upload Lists  </h2>
        <div class="block">
<table class="data display datatable" id="example">

  <thead>
    <tr>
      <th>Table Name</th>
      <th>Function</th>
      <th>Uploader Name</th>
      <th>Upload DB</th>
      <th>data</th>
    </tr>
  </thead
  <tbody>
  <?php
$conn = mysqli_connect('localhost','root','','test');
$database = mysqli_query($conn,"SELECT * FROM `database`");

while($fet_database = mysqli_fetch_array($database)){
//  print_r($fet_database);
  ?>
    <tr class="odd gradeX">
      <td><?php echo $fet_database['table_name']; ?></td>
      <td><?php echo $fet_database['function']; ?></td>
      <td><?php echo $fet_database['creater_name']; ?></td>
      <td class="center"><?php echo $fet_database['db_name']; ?></td>
      <td class="center"><?php echo $fet_database['added_date']; ?></td>
    </tr>
  <?php } ?>
  </tbody>
</table>
        </div>
    </div>
  </div>
</div>
