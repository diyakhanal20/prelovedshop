<?php 
	session_start();
	if (isset($_POST['signup'])){
		include 'config.php';
		$uid = $_POST['phonenumber'];
		$storename=addslashes($_POST['storename']);
		$pwd = $_POST['password'];
		
		
		//Error Handlers
		//Check For Empty Fields

		if (empty($uid) || empty($pwd)){
			header("Location: signup.php?alert=empty");
			exit();
		}
				else{
					$sql = "SELECT * FROM users WHERE phonenumber='$uid'";
					$result = mysqli_query($conn, $sql);
					$resultCheck = mysqli_num_rows($result);

					if($resultCheck > 0){
						header("Location: signup.php?alert=usertaken");
						exit();
					}
					else{
						//Hashing the password
						$hashedPwd = password_hash($pwd,PASSWORD_DEFAULT);

						
						
						//Insert the register into the database
						$sql = "INSERT INTO users (phonenumber,storename,password) VALUES ('$uid','$storename','$hashedPwd');";
						mysqli_query($conn, $sql);
						header("Location:signup.php?alert=success");
						exit();
					}
				}
			}
	else{
		header("Location:signup.php?alert=error");
		exit();
		}
?>