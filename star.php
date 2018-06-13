<?php
$member_id = 1;
require_once ("Rate.php");
$rate = new Rate();
$result = $rate->getAllPost();

if (! empty($result)) {
    $i = 0;
    foreach ($result as $tutorial) {
        $ratingResult = $rate->getRatingByTutorialForMember($tutorial["id"], $member_id);
        $ratingVal = "";
        if (! empty($ratingResult[0]["rating"])) {
            $ratingVal = $ratingResult[0]["rating"];
        }
        ?>
<tr>
                <td valign="top">
                    <div class="feed_title"><?php echo $tutorial["title"]; ?></div>
                    <div id="tutorial-<?php echo $tutorial["id"]; ?>"
                        class="star-rating-box">
                        <input type="hidden" name="rating" id="rating"
                            value="<?php echo $ratingVal; ?>" />
                        <ul
                            onMouseOut="resetRating(<?php echo $tutorial["id"]; ?>);">
  <?php
        for ($i = 1; $i <= 5; $i ++) {
            $selected = "";
            if (! empty($ratingResult[0]["rating"]) && $i <= $ratingResult[0]["rating"]) {
                $selected = "selected";
            }
            ?>
  <li class='<?php echo $selected; ?>'
                                onmouseover="highlightStar(this,<?php echo $tutorial["id"]; ?>);"
                                onmouseout="removeHighlight(<?php echo $tutorial["id"]; ?>);"
                                onClick="addRating(this,<?php echo $tutorial["id"]; ?>);">★</li>
  <?php }  ?>
</ul>
                        <div
                            id="star-rating-count-<?php echo $tutorial["id"]; ?>"
                            class="star-rating-count">
                                <?php

        if (! empty($tutorial["rating_total"])) {
            $average = round(($tutorial["rating_total"] / $tutorial["rating_count"]), 1);
            echo "Average Star Rating is " . $average . " from the Total " . $tutorial["rating_count"] . " Ratings";
            ?>

                                <?php } else { ?>
                                No Ratings
                                <?php  } ?>
                                </div>

                    </div>
                    <div><?php echo $tutorial["description"]; ?></div>
                </td>
            </tr>
<?php
    }
}
?>
