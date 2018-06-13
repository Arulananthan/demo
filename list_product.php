<?php
session_start();
include "header.php";
include "menu.php";
include "db.php";
 ?>
<div class="container_12">
  <div class="grid_9">
      <div class="box round">
          <h2>Product Lists</h2>
          <div class="block">
  <table><tr><td>
  <?php
  $product_list = mysqli_query($con,"select * from product");
  while($fet_prod_list = mysqli_fetch_array($product_list)){


   ?>

    <div class="grid_3">
        <div class="box round">
            <h2><?php echo $fet_prod_list['product_name'];?></h2>
            <div class="block">

             <p class="start"><img src="../product_image/<?php echo $fet_prod_list['product_image']; ?>" alt="Ginger" class="left" />$<?php echo $fet_prod_list['product_price']; ?></p>
                <p>Quality:<?php echo $fet_prod_list['product_qty']; ?></p>
                <p>Categoty:<?php echo $fet_prod_list['product_category']; ?></p>
            </div>

        </div>
    </div>
    <?php
  }
    ?></td></tr>
  </table>
</div></div></div>
</div>
