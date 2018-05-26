<?php
  header("Pragma:no-cache");
  header("Cache-Control:no-cache,must-revalidate");
  require_once("dbconfig.php");

  $content = mysqli_real_escape_string($conn, $_GET["content"]);
  $book_id = $_GET["book_id"];
  $user_id = $_GET["user_id"];

  if($content==""){
    header("Location: bookDetail.php?userId=".$user_id."&bookId=".$book_id);
    exit();
  }
//   if(trim($title)==""){
//     header("Location: list.php");
//     exit();
//   }

  mysqli_query($conn,"START TRANSACTION");
  $query = "INSERT INTO reviewlist (user_id, book_id, review_text)
            VALUES ('".$user_id."','".$book_id."','".$content."')";
  $result = mysqli_query($conn, $query);
  $query = "UPDATE booklist SET review_cnt = review_cnt + 1 WHERE book_id=".$book_id; 
  mysqli_query($conn,$query);
  mysqli_query($conn,"COMMIT");
  
  
  header("Location: bookDetail.php?userId=".$user_id."&bookId=".$book_id);
?>