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
<?php 
include_once "config.php";
if(isset($_POST['submit'])){
	$first=$_POST['first'];
	$last=$_POST['second'];
	$password=$_POST['pass'];
	$email=$_POST['email'];
	$number=$_POST['txtEmpPhone'];
	$address=$_POST['address'];
	$storename=$_POST['storename'];
    $hashedPwd = password_hash($pass,PASSWORD_DEFAULT);
	
}

						

 
 $result = mysqli_query($conn,"INSERT INTO users(first,last,password,email,address,phone,storename) VALUES('$first','$last','$hashedPwd','$email','$address','$number','$storename')");

 if($result){
 	header("location:loginmerchant.php");

 }
 else{
 	echo "fail";
 }

?>
