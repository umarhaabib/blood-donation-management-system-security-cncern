<?php

$servername="localhost";
$uname="root";
$pass="";
$db="blood_donor";

$conn=mysqli_connect($servername,$uname,$pass,$db);

if(!$conn){
    die("Connection Failed");
}

?>