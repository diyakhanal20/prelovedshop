<?php 
  session_start();
  if(isset($_POST['login'])){
    include'config.php';

    $uid = $_POST['phonenumber'];
    $pwd = $_POST['password'];    

    //error handlers

    if(empty($uid) || empty($pwd)){
      header("location:login.php?alert=empty");
      exit();
    }else{
      $sql = "SELECT * FROM users WHERE phonenumber='$uid' ";
      $result = mysqli_query($conn,$sql);
      $resultCheck = mysqli_num_rows($result);
      if($resultCheck < 1) {
        header("Location: login.php?alert=nosuchuser");
        exit();
      }else {
        if ($row = mysqli_fetch_assoc($result)){
          //dehashing password
          $hashedPwdCheck = password_verify($pwd, $row['password']);
          if($hashedPwdCheck == false){
            header("Location: login.php?alert=password_error");
            exit();
          }elseif($hashedPwdCheck == true){


            //login User her
            $_SESSION['id'] = $row['id'];
              header("Location:userdashboard.php?alert=success");
            exit();
            
          }
        }
      }
    }
  }else{
    header("Location: login.php?alert=login_error");
    exit();
  }

?>