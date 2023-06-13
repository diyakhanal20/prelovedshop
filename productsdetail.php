<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<style type="text/css">
	.card img{
		height:250px;
	}
	@media (max-width:780px) {
    .carousel{
         display:none;
       }
}
.description{
  min-height:400px;
  margin-top:80px;
  margin-bottom:80px;
}
</style>
<body>
<?php 
session_start();
include'config.php';
$sqlcategory = "SELECT * FROM category ";
$recordcategory = mysqli_query($conn,$sqlcategory);

$id=$_GET['id'];
$sqlproducts = "SELECT * FROM products WHERE id='$id'";
$recordproducts = mysqli_query($conn,$sqlproducts);

$sqlstore = "SELECT * FROM users ";
$recordstore = mysqli_query($conn,$sqlstore);
?>
<?php include 'navbar.php'; ?>
<br><br>
<div class="container description">
  <div class="row">
    <?php while($rowproducts=mysqli_fetch_array($recordproducts)){
      $productid=$rowproducts['id'];
      $user=$rowproducts['userid'];
      $storename=$rowproducts['storename'];
      $productname=$rowproducts['name'];
      $productcategory=$rowproducts['category'];
      $price=$rowproducts['price'];
    ?>
    <div class="col-lg-6">
      <img class="card-img-top" src="<?php echo $rowproducts['location'] ; ?>">
    </div>
    <div class="col-lg-6">
      
      <h5><?php echo $rowproducts['name'] ; ?></h5>
      <p>Orignal Price Rs:<?php echo $rowproducts['price'] ; ?></p>
      <p>Discounted Price Rs:<?php echo $rowproducts['discount'] ; ?></p>
      <h5>Description</h5>
      <p><?php echo $rowproducts['description'] ; ?></p>
      <h5>Store Name</h5>
      <p><?php echo $storename ; ?></p>
      <?php
      if(isset($_SESSION['buyerid'])){
        $uid = $_SESSION['buyerid'];
        $sql = "SELECT * FROM buyer where id='$uid'";
        $record = mysqli_query($conn,$sql);
        $row = mysqli_fetch_array($record);
        $buyerid=$row['id'];
        $buyernumber=$row['phonenumber'];

        ?>
      <a href="addtocart.php?id=<?php echo $productid;?>&user=<?php echo $productid;?>&buyerid=<?php echo $buyerid;?>&storename=<?php echo $storename;?>" class="btn btn-danger">Add To Cart</a>
      <a href="checkout.php?id=<?php echo $productid;?>&user=<?php echo $productid;?>&buyerid=<?php echo $buyerid;?>&buyernumber=<?php echo $buyernumber;?>&storename=<?php echo $storename;?>" class="btn btn-primary">Checkout</a>
      <?php }
      else {?>
      <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
        Add To Cart
      </button>
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Checkout
      </button>
      <?php }?>
    </div>
    <?php }?>
  </div>  
</div>
<div class="container">
  <h3><center>Recommended</center></h3>
  <hr>
  <div class="row">
    <?php
     
     $sqlproductssearch = "SELECT * FROM products where name LIKE '%$productname%' or category LIKE '%$productcategory%' or price LIKE '%$price%'";
     $recordproductssearch = mysqli_query($conn,$sqlproductssearch);
     while($rowproductssearch=mysqli_fetch_array($recordproductssearch)){
      $productidsearch=$rowproductssearch['id'];
    ?>
    <div class="col-lg-4">
        <div class="card">
          <img class="card-img-top" src="<?php echo $rowproductssearch['location'] ; ?>">
          <div class="card-body">
            <a href="productsdetail.php?id=<?php echo $productidsearch ?>"><h5 class="card-title">
              <center><?php echo $rowproductssearch['name'] ; ?></center></h5></a>
              <hr>
            <p>Rs <?php echo $rowproductssearch['discount'] ; ?><span style="float:right;"><s>Rs <?php echo $rowproductssearch['price'] ; ?></s></span></p>
            
            <p>Product From <?php echo $rowproductssearch['storename'] ; ?></p>
          </div>
        </div>
        <br>
    </div>
    <br><br>
  <?php }?>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Enter Your Login Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" action="buyerlogin.php">
              <div class="form-group">
                <label for="exampleInputEmail1">Phone Number</label>
                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="phonenumber">
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="password">
              </div>
              <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
              </div>
              <button type="submit" class="btn btn-primary" name="login">Login</button>
            </form>
      </div>
    </div>
  </div>
</div> 









<!-- Footer starts -->
<?php include 'footer.php'; ?>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>