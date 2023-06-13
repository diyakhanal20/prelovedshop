<?php 
	session_start();
	if(isset($_POST['add'])){
		include'config.php';
		$code = $_POST['code'];
		$userid=$_POST['userid'];		

		//error handlers

		$sql = "INSERT INTO esewacode SET password='$hashedPwd' WHERE id=$id";
		
	//execute the query
		if (mysqli_query($conn,"INSERT INTO esewacode (userid,code) VALUES ('$userid','$code')")) {
            header("location: esewaintegration.php?alert=inserted");
                }
            else{
            header("location: esewaintegration.php?alert=not_inserted");
            exit();                 
    }
		}

?>