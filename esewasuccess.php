<?php 
$orderid=$_GET['oid'];
$amount=$_GET['amt'];
$reference=$_GET['ref'];
include'config.php';

$sql= "UPDATE checkout SET paymentstatus='paid',amount='$amount' WHERE productid=$orderid";
if(mysqli_query($conn,$sql))
header('location:account.php?alert=payment_succesful');
else
	header('location:account.php?alert=payment_not_succesful');

 ?>