<?php
  header("Progma:no-cache");
  header("Cache-Control:no-cache,must-revalidate");
  require_once("dbconfig.php");

  if($id = trim($_GET["id"])) {
    $title = $_POST["title"];
    $author = $_POST["author"];
    $publisher = $_POST["publisher"];
    $quantity = $_POST["quantity"];
    $category = $_POST["category"];
    $thumnail = $_POST["thumnail"];
    $query = "UPDATE `booklist` SET `book_name`='$title', `author`='$author', `publisher`='$publisher', `quantity`='$quantity', `category_id`='$category', `thumbnail`='$thumnail' WHERE `book_id`='$id'";

    mysqli_begin_transaction($conn, MYSQLI_TRANS_START_READ_WRITE);
    mysqli_query($conn, $query);
    $result =mysqli_commit($conn);
  }
  if (!$result) {
    printf("Error: %s\n", mysqli_error($conn));
    exit();
}
  else {
    header("Location: bookManageList.php");
  }
?>