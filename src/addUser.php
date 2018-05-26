<?php
  header("Progma:no-cache");
  header("Cache-Control:no-cache,must-revalidate");
  require_once("dbconfig.php");

  if($name = trim($_POST["name"])) {
    $phoneNumber = $_POST["phoneNum"];
    $query = "INSERT INTO `userlist` (`user_name`, `phone_number`) VALUES ('".$name."', '".$phoneNumber."')";

    mysqli_begin_transaction($conn, MYSQLI_TRANS_START_READ_WRITE);
    mysqli_query($conn, $query);
    $result =mysqli_commit($conn);
  }
  if($result) {
    header("Location: userManageList.php");
  }
  else {
    echo "Failed to insert data into database<br>";
    echo "Error: ".mysqli_error($conn); 
  }
?>