<?php 
session_start();
    session_unset();
    session_destroy();
    header('location:superadmin.php?alert=loggedout');
exit();

?>