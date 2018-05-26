<?php
  header("Progma:no-cache");
  header("Cache-Control:no-cache,must-revalidate");
  require_once("dbconfig.php");

  if($id = trim($_GET["id"])) {
    mysqli_begin_transaction($conn, MYSQLI_TRANS_START_READ_WRITE);
    $query = "UPDATE `rental` SET `return_time`=NOW() WHERE `rental_id`='$id'"; 
    $result = mysqli_query($conn, $query);
    $query = "UPDATE `booklist` SET `quantity` = `quantity` + 1 WHERE `book_id`=(SELECT book_id FROM rental WHERE rental_id=$id);";
    $result = mysqli_query($conn, $query);
    $query = "SELECT `user_id` FROM rental WHERE rental_id=$id";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_array($result);
    $user_id = $row["user_id"];
    $result =mysqli_commit($conn);
  }
  if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}
  else {
    header("Location: userManageDetail.php?id=$user_id");
  }
?>