<?php
  header("Progma:no-cache");
  header("Cache-Control:no-cache,must-revalidate");
  require_once("dbconfig.php");

  if($id = trim($_GET["id"])) {

    $query = "DELETE FROM `userlist` WHERE `user_id`='$id'";

    mysqli_begin_transaction($conn, MYSQLI_TRANS_START_READ_WRITE);

    mysqli_query($conn, $query);
    $result =mysqli_commit($conn);
  }
  if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}
  else {
    header("Location: userManageList.php");
  }
?>