<?php
  header("Progma:no-cache");
  header("Cache-Control:no-cache,must-revalidate");
  require_once("dbconfig.php");

  if($title = trim($_POST["title"])) {
    $author = $_POST["author"];
    $publisher = $_POST["publisher"];
    $summary = $_POST["summary"];
    $thumnail = $_POST["thumnail"];
    $category = $_POST["category"];
    $query = "INSERT INTO `booklist` (`book_name`, `author`, `publisher`, `summary`, `thumbnail`, `category_id`) VALUES ('$title', '$author', '$publisher', '$summary', '$thumnail', '$category')";

    mysqli_begin_transaction($conn, MYSQLI_TRANS_START_READ_WRITE);
    mysqli_query($conn, $query);
    $result =mysqli_commit($conn);
  }
  if($result) {
    header("Location: bookManageList.php");
  }
  else {
    echo "Failed to insert data into database<br>";
    echo "Error: ".mysqli_error($conn); 
  }
?>