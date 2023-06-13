<!DOCTYPE html>
<html>
<head>
    <title>Ecommerce</title>
    <script src="https://khalti.s3.ap-south-1.amazonaws.com/KPG/dist/2020.12.17.0.0.0/khalti-checkout.iffe.js"></script>
</head>
<style type="text/css">
  .design{
    background-color: #F5F4F4;
    padding:80px;
    min-height: 500px;

  }
</style>
<?php 

include'config.php';
$sqlcategory = "SELECT * FROM category ";
$recordcategory = mysqli_query($conn,$sqlcategory);
$quantity=$_POST['qty'];
$amount=$_POST['amount'];
$orderid=$_POST['orderid'];
$userid=$_POST['userid'];
$totalamount=$amount*$quantity;
$sqlstore = "SELECT * FROM users ";
$recordstore = mysqli_query($conn,$sqlstore);

$sqlesewa = "SELECT * FROM esewacode WHERE userid='$userid'";
$recordesewa = mysqli_query($conn,$sqlesewa);
while($rowesewa=mysqli_fetch_array($recordesewa)){
$code=$rowesewa['code'];
}






?>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<body>
    <!--navbar-->
    <?php include'navbar.php'; ?>
  
  <?php if(!empty($code)){ ?>
    <div class="container design">
      <br><br>
      <div class="row">
        <div class="col-lg-3"></div>
      <div class="col-lg-3"><img class="img-fluid" src="img/esewa.png"></div>
      <div class="col-lg-6">
        <br>
        <form action="https://uat.esewa.com.np/epay/main" method="POST">
    <input value="<?php echo $totalamount;?>" name="tAmt" type="hidden">
    <input value="<?php echo $totalamount;?>" name="amt" type="hidden">
    <input value="0" name="txAmt" type="hidden">
    <input value="0" name="psc" type="hidden">
    <input value="0" name="pdc" type="hidden">
    <input value="<?php echo $code;?>" name="scd" type="hidden">
    <input value="<?php echo $orderid; ?>" name="pid" type="hidden">
    <input value="http://localhost/ecommerce/esewasuccess.php" type="hidden" name="su">
    <input value="http://localhost/ecommerce/esewafailure.php" type="hidden" name="fu">
    <input class="btn btn-success" value="Pay With Esewa" type="submit">
    </form>
      </div>
      </div>
    </div>
    <?php }else{?>
    <br><br><br>
      <div class="container design">
      
      <div class="col-lg-12">
        <div class="alert alert-primary" role="alert">
        This Account Is Not Connected To Online Payment Please Try Cash On Delivery System &nbsp;&nbsp;&nbsp;&nbsp;<a href="index.php"><button class="btn btn-danger btn-md">Return To Home Page</button></a>
      </div>
      </div>
    </div>
    <?php }?>
   

<?php include'footer.php';?>



<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>