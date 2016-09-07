<?php
$text= $_REQUEST["text"];
//CONNECT TO THE DATABASE
mysql_connect("localhost","root","");
mysql_select_db("sports");
$res=mysql_query("SELECT * FROM 'table_sports' order by 'category'");
$rows = mysql_num_rows($res);

$response="";


//$sessionId   = $_POST["200"];
//$serviceCode = $_POST["+254"];
//$phoneNumber = $_POST["706494703"];
//$text        = $_POST["Welcome to Spots Gaming where sport is culture"];

if ( $text == "" ) {
    // home menu for sports covered
    $response  = "CON Select the gaming of interest \n";
    $response .= "1. Football \n";
    $response .= "2. Rugby";
    $response .= "3. Basket ball";
}
else if ( $text == "1" ) {
    // services for each of the sports
    $response = "CON Choose Sevice \n";
    $response .= "1. Table \n";
    $response .= "2. Breaking news \n";
    $response .= "3. Transfers\n";
    $response .= "4. Gossip \n";

}
else if ( $text == "1*1" ) {
    // list of football leagues covered
    $response = "CON Choose League \n";
    $response .= "1. Premier league \n";
    $response .= "2. La liga \n";
    $response .= "3. Seria A \n";
    $response .= "4. Bundesliga \n";

}
// result table of league standings
else if ( $text == "1*1*1" ) {
    $res =mysql_query("SELECT * FROM premier order by position");
}
// result table of league standings
else if ( $text == "1*1*2" ) {
    $res =mysql_query("SELECT * FROM premier order by position");
}
else if ($text == "2"){
    $response = "CON rugby gaming iss currently on hold till summer";
    $response .= "1. World series \n";
    $response .= "2. London series \n";
    $response .= "2. Tokyo series \n";
}

else if($text == "3") {
    $res =mysql_query("select * from sports.table_sports WHERE code=600");
}


header('Content-type: text/plain');
echo $response;

?>