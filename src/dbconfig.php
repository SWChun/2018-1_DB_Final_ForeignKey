<?php
  error_reporting(E_ALL);
  ini_set("display_errors", 1);

  $db_host = "localhost";
  $db_user = "root";
  $db_password = "021291cjstjddn";  // your password
  $db_name = "test";
  $conn = mysqli_connect($db_host, $db_user, $db_password, $db_name);
  if (mysqli_connect_errno($conn)) {
    echo "Database connection failed: ".mysqli_connect_error();
  }
  

  
?>