<?php
    require_once("dbconfig.php");
    $book_id = $_GET["bookId"];
	$user_id = $_GET["userId"];
	
	$query = "SELECT * FROM booklist WHERE book_id=".$book_id;
	$result = mysqli_query($conn, $query);
	$row = mysqli_fetch_array($result);
	$book_name = $row["book_name"];
	$thumbnail = $row["thumbnail"];
	$publisher = $row["publisher"];
	$author = $row["author"];
	$summary = $row["summary"];
	$quantity = $row["quantity"];

	$query = "SELECT borrowed_book_number, overdue_sum FROM useroverdue_view natural join userborrowedbooknumber_view WHERE user_id=".$user_id;
	$result = mysqli_query($conn, $query);
	$row = mysqli_fetch_array($result);
	$borrowed_book_num = $row["borrowed_book_number"];
	$user_overdue = $row["overdue_sum"];
?>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="table.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</head>

	<body>

	<div>
      <header class="jumbotron">
        <h1><a href="index.html">Library Management System</a></h1>
		<h4>Library management with PHP and MySQL</h4>
	</header>
	</div>

	<div> 
		<h4>제목 : <?php echo $book_name ?></h4>
		<h4>출판사 : <?php echo $publisher ?><h4>
		<h4>작가 : <?php echo $author ?><h4>
	</div>

	<div>
		<img src=<?php echo $thumbnail ?> style="margin-left:auto; margin-right:auto; display:block; max-width:100%;" >
		<p class="text-center"><?php echo $summary ?><p>
	</div>

    <div>
	<button id="borrow" <?php if($borrowed_book_num>=5 || $quantity<=0 || $user_overdue>0) echo "disabled"?> class="btn btn-default" type="button">대여</button>
    </div>

<div>
	<h2><strong>Reviews</strong></h2>;
	<?php 
	$query = "SELECT user_name, review_text from userlist NATURAL JOIN reviewlist WHERE book_id=".$book_id;
	
	$result = mysqli_query($conn, $query);
	
	while( ($row = mysqli_fetch_array($result)) ) {
		echo "<h4>작성자 : ".$row["user_name"]."</h4>";
		echo "<p>".$row["review_text"]."</p>";
		echo "<br>";
	}
?>
</div>

 <div class="container">
      <form class="form-horizontal" action="review_process.php" method="get">

		<div class="form-group">
          	<label class="col-md-2 control-label">Review 작성</label>
          	<div class="col-md-10">
            <textarea class="form-control" name="content" required rows="10" placeholder="Enter the content"></textarea>
          </div>
    	</div>
	
		<div class="form-group">
	        <div class="col-md-offset-2 col-md-10">
            	<button  class="btn btn-default" type="submit">Write</button>
        	</div>
    	</div>
		<input type="hidden" name="user_id" value=<?php echo $user_id ?>>
		<input type="hidden" name="book_id" value=<?php echo $book_id ?>>
	</form>
</div>
		<script>
            $("#borrow").click(function() {
                location.href = "borrow_process.php?userId="+<?php echo $user_id ?>+"&bookId="+<?php echo $book_id ?>;
            });
		</script>
	</bod
</html>