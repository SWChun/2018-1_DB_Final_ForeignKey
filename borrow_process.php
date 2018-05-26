<?php
    require_once("dbconfig.php");

    $user_id = $_GET["userId"];
    $book_id = $_GET["bookId"];

    $query = "SELECT borrowed_book_number FROM userborrowedbooknumber_view WHERE user_id=".$user_id;
    $result = mysqli_query($conn, $query);
    if (!$result) {
        printf("Error: %s\n", mysqli_error($conn));
        exit();
    }
    $row = mysqli_fetch_array($result);
    $borrowed_book_num = $row[0];

    $query = "SELECT quantity FROM booklist WHERE book_id=".$book_id;
    $result = mysqli_query($conn, $query);
    if (!$result) {
        printf("Error: %s\n", mysqli_error($conn));
        exit();
    }
    $row = mysqli_fetch_array($result);
    $book_quantity = $row[0];

    $query = "SELECT overdue_sum FROM useroverdue_view WHERE user_id=".$user_id;
    $result = mysqli_query($conn, $query);
    if (!$result) {
        printf("Error: %s\n", mysqli_error($conn));
        exit();
    }
    $row = mysqli_fetch_array($result);
    $user_overdue = $row[0];


    if($borrowed_book_num<5 && $book_quantity>0 && $user_overdue==0){

        mysqli_query($conn, "START TRANSACTION");
        $query = "INSERT INTO rental(user_id, book_id) VALUES (".$user_id.",".$book_id.")";
        mysqli_query($conn,$query);
        $query = "UPDATE booklist SET quantity = quantity - 1, acc_cnt = acc_cnt + 1, mon_cnt = mon_cnt + 1 WHERE book_id=".$book_id;
        mysqli_query($conn,$query);
        mysqli_query($conn,"COMMIT");
    }

    header("Location: bookList.php?id=".$user_id);
    
?>