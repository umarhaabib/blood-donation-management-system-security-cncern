<?php 

if(isset($_POST['name'])){
$name = $_POST["name"];    
$guardiansname = $_POST["guardiansname"];
$gender = $_POST["gender"];
$dob = $_POST["dob"];
$weight = $_POST["weight"];
$bloodgroup = $_POST["bloodgroup"];
$email = $_POST["email"];
$address = $_POST["address"];
$contact = $_POST["contact"];
$username = $_POST["username"];
$password = $_POST["password"];

include 'dbconnect.php';
//code after connection is successfull
$qry = "insert into donor(name,guardiansname,gender,dob,weight,bloodgroup,email,address,contact,username,password) values ('$name','$guardiansname','$gender','$dob','$weight','$bloodgroup','$email','$address','$contact', '$username', '$password')";
$result = mysqli_query($conn,$qry); //query executes

if(!$result){
    echo"ERROR";
}else {
    echo"<script>
    alert('REGISTERD SUCCESSFULLY')
    window.location.href='../userlog/userlogin.php';
    
    </script>";

}

}else{
    echo"<h3>YOU ARE NOT AUTHORIZED TO REDIRECT THIS PAGE. GO BACK to <a href='index.php'> DASHBOARD </a></h3>";
}


?>
             