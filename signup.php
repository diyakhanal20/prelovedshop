<!DOCTYPE html>
<html>
<head>
	<title>PreLoved Shop</title>
</head>
<?php 
include'config.php';
$sqlcategory = "SELECT * FROM category ";
$recordcategory = mysqli_query($conn,$sqlcategory);
$sqlstore = "SELECT * FROM users ";
$recordstore = mysqli_query($conn,$sqlstore);

?>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<style type="text/css">
  .login{
    min-height:500px;
    margin-top:30px;
    margin-bottom: 30px;
  }
  .alert{
    margin-top:30px;
  }
</style>
<body>
	<!--navbar-->
	<?php include'navbar.php';?>
<div class="container alert">
  <div class="row">
    <div class="col-lg-12">
      <?php 
                                if (isset($_GET['alert'])) {
                                 if ($_GET['alert']=='success') {
                                   ?>
                                   <div class="alert alert-primary" role="alert" id="alert">
                                  Registration Succesful Please Login Now
                                </div>
                                <?php
                                 }
                                 
                                 else if ($_GET['alert']=='usertaken') {
                                ?>
                                   <div class="alert alert-primary" role="alert" id="alert">
                                  Phone Number Already Registered Choose Another Number
                                </div>
                                <?php
                                 }
                                 else if ($_GET['alert']=='error') {
                                ?>
                                   <div class="alert alert-primary" role="alert" id="alert">
                                  Error While Registration Please Try Again !
                                </div>
                                <?php
                                 }
                                 else{
                                ?>
                                   <div class="alert alert-danger" role="alert" id="alert">
                                  Error
                                </div>
                                <?php
                                 }


                                }
                                   ?>
    </div>
  </div>
</div>

<div class="container login">
  <div class="row">
    <div class="col-lg-6">
      <h6><center>Customer Signup</center></h6>
          <form method="POST" action="buyersignup.php">
              <div class="form-group">
                <label for="exampleInputEmail1">Phone Number</label>
                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="phonenumber" required>
                <small id="emailHelp" class="form-text text-muted">We'll never share your phone number with anyone else.</small>
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="password" required>
              </div>
              <button type="submit" class="btn btn-primary" name="signup">Customer Signup</button>
            </form>
    </div>
    <div class="col-lg-6">
      <h6><center>Merchant Signup</center></h6>
          <form method="POST" action="usersignup.php">
              <div class="form-group">
                <label for="exampleInputEmail1">Phone Number</label>
                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="phonenumber" required>
                <small id="emailHelp" class="form-text text-muted">We'll never share your phone number with anyone else.</small>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Store Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="storename" required>
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" name="password" required>
              </div>
              <button type="submit" class="btn btn-primary" name="signup">Merchant Signup</button>
            </form>
    </div>
  </div>
</div>

<?php include'footer.php';?>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>