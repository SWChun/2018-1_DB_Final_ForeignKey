<?php
    require_once("dbconfig.php");
    $user_id = $_GET["id"];

    $query = "SELECT user_name FROM userlist WHERE user_id=".$user_id;
    $result = mysqli_query($conn, $query);
    $user_name = mysqli_fetch_array($result)[0];
    
    $query = "SELECT book_name, thumbnail from notreturned_view NATURAL JOIN booklist WHERE user_id=".$user_id;
    $res = mysqli_query($conn, $query);	
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

    <h2><?php echo $user_name ?>의 Page</h2>

    <h3>내가 빌린 책 :  </h3>

<div style="display:inline">
    <?php
    	while( ($row = mysqli_fetch_array($res)) ) {
            echo '<div style="display:inline; float:left;">';
            echo "<img src=".$row["thumbnail"].">";
            echo "<h4>".$row["book_name"]."</h4>";   
            echo '</div>';
        }    
    ?>
</div>
<div class="col-md-offset-2 col-md-10">
<button id="borrow" class="btn btn-default" type="button">책 목록 보기</button>
</div>
		<script>
            $("#borrow").click(function() {
                location.href = "bookList.php?id="+<?php echo $user_id ?>;
            });
		</script>
	</body>
</html>