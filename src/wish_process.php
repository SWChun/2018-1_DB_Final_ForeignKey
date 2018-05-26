<?php
  header("Pragma:no-cache");
  header("Cache-Control:no-cache,must-revalidate");
  require_once("dbconfig.php");

  $user_id = $_POST["id"];
  $title = mysqli_real_escape_string($conn, $_POST["title"]);
  $author = mysqli_real_escape_string($conn, $_POST["writer"]);

  if($title==""){
    header("Location: list.php");
    exit();
  }
  if(trim($title)==""){
    header("Location: list.php");
    exit();
  }

  $query = "INSERT INTO wishbook (book_name, author, wish_cnt)
            VALUES ('".$title."','".$author."',1)  ON DUPLICATE KEY UPDATE wish_cnt = wish_cnt + 1 ";
  $result = mysqli_query($conn,$query);
  
  if ($result == FALSE) {
    echo "Failed to insert data into database<br>";
    echo "Error: ".mysqli_error($conn);
  }
  else {
    header("Location: bookList.php?id=".$user_id);
  }
?>

