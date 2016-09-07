<?php
/**
 * Created by PhpStorm.
 * User: ROBIN2013
 * Date: 9/7/2016
 * Time: 2:28 PM
 */

    require_once('AfricasTalkingGateway.php');

    $username   = "Robin_OWino";
    $apikey     = "807cc1da513537401b392e551783984b6cc46fece42cf8a48e6c1f30c1cd94aa";

    $recipients = "+254706494703";

    $message    = "Robin you have a message from africalstalking";

    $gateway    = new AfricasTalkingGateway($username, $apikey);

    try
    {

        $results = $gateway->sendMessage($recipients, $message, "AFRICASTALKING");

        foreach($results as $result) {
            // status is either "Success" or "error message"
            echo " Number: " .$result->number;
            echo " Status: " .$result->status;
            echo " MessageId: " .$result->messageId;
            echo " Cost: "   .$result->cost."\n";
        }
    }
    catch ( AfricasTalkingGatewayException $e )
    {
        echo "Encountered an error while sending: ".$e->getMessage();
    }
// DONE!!!
