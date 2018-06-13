<?php include("header.php");
include("menu.php"); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>

<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
 <script type="text/javascript" src="js/jquery.multi-select.js"></script>
<script>
$('#multiselect').multiselect();
</script>
<head>
<style>
.col-xs-2 {
    width: -3.333333%;
}
</style>
<div class="row">
  <div class="col-xs-5">
    <select name="from" id="multiselect" class="form-control" size="8" multiple="multiple" style="width: 75%;">
      <option value="1">C++</option>
      <option value="2">C#</option>
      <option value="3">Haskell</option>
      <option value="4">Java</option>
      <option value="5">JavaScript</option>
      <option value="6">Lisp</option>
      <option value="7">Lua</option>
      <option value="8">MATLAB</option>
      <option value="9">NewLISP</option>
      <option value="10">PHP</option>
      <option value="11">Perl</option>
      <option value="12">SQL</option>
      <option value="13">Unix shell</option>
    </select>
  </div>
  <div class="col-xs-2" style="width: -3.333333%;">
    <button type="button" id="multiselect_rightAll" class="btn btn-block"><i class="glyphicon glyphicon-forward"></i></button>
    <button type="button" id="multiselect_rightSelected" class="btn btn-block"><i class="glyphicon glyphicon-chevron-right"></i></button>
    <button type="button" id="multiselect_leftSelected" class="btn btn-block"><i class="glyphicon glyphicon-chevron-left"></i></button>
    <button type="button" id="multiselect_leftAll" class="btn btn-block"><i class="glyphicon glyphicon-backward"></i></button>
  </div>
  <div class="col-xs-5">
    <select name="to" id="multiselect_to" class="form-control" size="8" multiple="multiple" style="width: 75%;">
    </select>
  </div>
</div>
<br>
<br>
<br>
<br>
<script src="//code.jquery.com/jquery-3.1.1.slim.min.js"></script>
<script>
$('#languages').multiSelect();
$('#languages').multiSelect({
  containerHTML: '<div class="multi-select-container">',
  menuHTML: '<div class="multi-select-menu">',
  buttonHTML: '<span class="multi-select-button">',
  menuItemHTML: '<label class="multi-select-menuitem">',
  activeClass: 'multi-select-container--open',
  placeholderText: '-- Select --'
});
</script>
<style>
.multi-select-container {
  display: inline-block;
  position: relative;
}

.multi-select-menu {
  position: absolute;
  left: 0;
  top: 0.8em;
  float: left;
  min-width: 100%;
  background: #fff;
  margin: 1em 0;
  padding: 0.4em 0;
  border: 1px solid #aaa;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
  display: none;
}

.multi-select-menu input {
  margin-right: 0.3em;
  vertical-align: 0.1em;
}

.multi-select-button {
  display: inline-block;
  font-size: 0.875em;
  padding: 0.2em 0.6em;
  max-width: 20em;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  vertical-align: -0.5em;
  background-color: #fff;
  border: 1px solid #aaa;
  border-radius: 4px;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
  cursor: default;
}

.multi-select-button:after {
  content: "";
  display: inline-block;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 0.4em 0.4em 0 0.4em;
  border-color: #999 transparent transparent transparent;
  margin-left: 0.4em;
  vertical-align: 0.1em;
}

.multi-select-container--open .multi-select-menu { display: block; }

.multi-select-container--open .multi-select-button:after {
  border-width: 0 0.4em 0.4em 0.4em;
  border-color: transparent transparent #999 transparent;
}
</style>
<select id="languages" name="languages" multiple>
  <option value="JavaScript">JavaScript</option>
  <option value="C++">C++</option>
  <option value="Python">Python</option>
  <option value="Ruby">Ruby</option>
  <option value="PHO">PHP</option>
  <option value="Pascal">Pascal</option>
</select>
