<?php
// When you have your own client ID and secret, put them down here:
$CLIENT_ID = "FREE_TRIAL_ACCOUNT";
$CLIENT_SECRET = "PUBLIC_SECRET";
// Specify your translation requirements here:
$postData = array(
  'fromLang' => "en",
  'toLang' => "ta",
  'text' => "Let's have some fun!"
);
$headers = array(
  'Content-Type: application/json',
  'X-WM-CLIENT-ID: '.$CLIENT_ID,
  'X-WM-CLIENT-SECRET: '.$CLIENT_SECRET
);
$url = 'http://api.whatsmate.net/v1/translation/translate';
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($postData));
$response = curl_exec($ch);
echo "Response: ".$response;
curl_close($ch);
?>
<!-- var country =91;
var x=
narr= [];
var aer =phone_nos.split(',');
$.each(function(k,val){
arr.push('91'+val);

}); -->
