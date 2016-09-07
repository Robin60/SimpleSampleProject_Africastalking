<?php

// Be sure to include our gateway class
require_once('AfricasTalkingGateway.php');
// Specify your login credentials
$username   = "Robin_Owino";
$apikey     = "807cc1da513537401b392e551783984b6cc46fece42cf8a48e6c1f30c1cd94aa";
// Specify your Africa's Talking phone number in international format
$from = "+254715548920";
// Specify the numbers that you want to call to in a comma-separated list
// Please ensure you include the country code (+254 for Kenya in this case)
$to   = "+254709494703";
// Create a new instance of our awesome gateway class
$gateway = new AfricasTalkingGateway($username, $apikey);
// Any gateway errors will be captured by our custom Exception class below,
// so wrap the call in a try-catch block
try
{
    // Make the call
    $results = $gateway->call($from, $to);
    //This will loop through all the numbers you requested to be called
    foreach($results as $result) {
        //Only status "Queued" means the call was successfully placed
        echo $result->status;
        echo $result->phoneNumber;
        echo "<br/>";
    }

}
catch ( AfricasTalkingGatewayException $e )
{
    echo "Encountered an error while making the call: ".$e->getMessage();
}