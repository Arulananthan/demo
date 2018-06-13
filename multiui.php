<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Selectable - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">

  <style>
  #feedback { font-size: 1.4em; }
  #selectable .ui-selecting { background: #FECA40; }
  #selectable .ui-selected { background: #F39814; color: white; }
  #selectable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
  #selectable li { margin: 3px; padding: 0.4em; font-size: 1.4em; height: 18px; }
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#selectable" ).selectable();
  } );
  </script>
</head>
<body>

<!-- <ol id="selectable">
  <li class="ui-widget-content">Item 1</li>
  <li class="ui-widget-content">Item 2</li>
  <li class="ui-widget-content">Item 3</li>
  <li class="ui-widget-content">Item 4</li>
  <li class="ui-widget-content">Item 5</li>
  <li class="ui-widget-content">Item 6</li>
  <li class="ui-widget-content">Item 7</li>
</ol> -->
<form id="form" name="form" action="" method="post">
<select name="demo[]" id="demo" id="selectable" multiple style="width:300px;height:100px">
  <option  value="1">Item 1</option>
  <option value="2">Item 2</option>
  <option value="3">Item 3</option>
  <option value="4">Item 4</option>
  <option value="5">Item 5</option>
  <option value="6">Item 6</option>
  <option value="7">Item 7</option>
  <option value="8">Item 8</option>
  <option value="9">Item 9</option>
  <option value="10">Item 10</option>
  <option value="11">Item 11</option>
  <option value="12">Item 12</option>
</select>
<input type="submit" name="submit" id="submit" value="save">
</form>
<?php
if(isset($_POST['submit'])){
   $demo = $_POST['demo'];
  echo  $imp_demo = implode(',',$demo);
  print_r($demo);
}

 ?>

</body>
</html>
