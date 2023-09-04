<?php
include_once "config.php";
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

function sendMail($email, $v_code)
{
	require 'PHPMailer/PHPMailer.php';
	require 'PHPMailer/SMTP.php';
	require 'PHPMailer/Exception.php';
	$mail = new PHPMailer(true);
	try {
		//Server settings
		$mail->isSMTP(); //Send using SMTP
		$mail->Host = 'smtp.gmail.com'; //Set the SMTP server to send through
		$mail->SMTPAuth = true; //Enable SMTP authentication
		$mail->Username = 'nisha.181221@ncit.edu.np'; //SMTP username
		$mail->Password = 'Sweet12345*#'; //SMTP password
		$mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS; //Enable implicit TLS encryption
		$mail->Port = 587; //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

		//Recipients
		$mail->setFrom('nisha.181221@ncit.edu.np', 'Nisha');
		$mail->addAddress($email); //Add a recipient

		//Content
		$mail->isHTML(true); //Set email format to HTML
		$mail->Subject = 'Email Verification from Nisha';
		$mail->Body = "Thanks For registration!Click the link below to verify this email
		 <a href='http://http://localhost/shop/Ecommerce_Project/verify.php?email=$email&v_code=$v_code'>Verify</a>";


		$mail->send();
		return true;
	} catch (Exception $e) {
		//echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
		return false;
	}

}
if (isset($_POST['submit'])) {
	$first = $_POST['first'];
	$last = $_POST['second'];
	$password = $_POST['pass'];
	$email = $_POST['email'];
	$number = $_POST['txtEmpPhone'];
	$address = $_POST['address'];
	$storename = $_POST['storename'];
	$hashedPwd = password_hash($password, PASSWORD_DEFAULT);


	$sqlCheckEmail = "SELECT * FROM users WHERE email = '$email'";
	$resultCheckEmail = mysqli_query($conn, $sqlCheckEmail);

	if (mysqli_num_rows($resultCheckEmail) > 0) {
		// Email already exists, redirect with an error alert
		echo "<script>
            alert('Email Already Taken');
            window.location.href='loginmerchant.php'
            </script>";

	} else {
		$v_code = bin2hex(random_bytes(16));
		// Proceed with the registration process
		// Insert the user's details into the database
		$query = "INSERT INTO users (first, last, password, email, address,phone,storename,verification_token, is_verified) VALUES ('$first', '$last', '$hashedPwd', '$email',  '$address','$number','$storename','$v_code','0')";
		if (mysqli_query($conn, $query) && sendMail($email, $v_code)) {
			// Registration successful, redirect with success alert
			// header("Location: loginmerchant.php?alert=success");
			// exit();
			echo "<script>
            alert('Registration Successful');
            window.location.href='loginmerchant.php'
            </script>";
		} else {
			// Error while inserting into the database, redirect with error alert
			echo "<script>
            alert('server down');
            window.location.href='registermerchant.php'</script>";
		}
	}
}
?>