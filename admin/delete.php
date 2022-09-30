<?php

if(isset($_GET['id'])){
$id=$_GET['id'];

include 'dbconnect.php';


$qry="delete from donor where id=$id";
$result=mysqli_query($conn,$qry);

if($result){
    echo"<script>alert('Record Deleted Successfully');window.location='viewdonor.php';</script>";
}else{
    echo"ERROR!!";
}
}
?>