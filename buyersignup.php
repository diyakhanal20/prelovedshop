<?php 
include_once "config.php";
if(isset($_POST['submit'])){
	$fname=$_POST['first'];
	$lname=$_POST['second'];
	$pass=$_POST['pass'];
	$email=$_POST['email'];
	$number=$_POST['txtEmpPhone'];
	$address=$_POST['address'];
    $hashedPwd = password_hash($pass,PASSWORD_DEFAULT);
	
}

						

 
 $result = mysqli_query($conn,"INSERT INTO buyer(fname,lname,password,email,address,phone) VALUES('$fname','$lname','$hashedPwd','$email','$address','$number')");

 if($result){
 	header("location:login.php");

 }
 else{
 	echo "fail";
 }

?>
