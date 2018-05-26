<?php
	require_once("dbconfig.php");
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
        <h3><strong>Book Manage List</strong></h3>
    </div>

    <table class="table table-hover">
        <thead>
          <tr>
            <th>ID</th>
            <th>Category</th>
            <th>Title</th>
            <th>Author</th>
            <th>Publisher</th>
			<th>Quantity</th>
          </tr>
        </thead>
        <tbody>

<?php

    $query = "SELECT * FROM bookList";
    $result = mysqli_query($conn, $query);

    while($row = mysqli_fetch_array($result)) {
        echo "<tr>";
        echo "<td>".$row["book_id"]."</td>";
        echo "<td>".$row["category_id"]."</td>";
        echo "<td>".$row["book_name"]."</td>";
        echo "<td>".$row["publisher"]."</td>";
        echo "<td>".$row["author"]."</td>";
        echo "<td>".$row["quantity"]."</td>";
        echo "</tr>";		
        }	
?>
	    </tbody>
      </table>	
      <button class="btn btn-default" id="addBook">신규도서 추가</button>

      <script>
			$(function() {
                $("table > tbody > tr").click(function() {
	        	    var number = $(this).find("td").eq(0).text();
					location.href = "bookManageDetail.php?id="+number;
    	      	});
                $("#addBook").click(function() {
                location.href = "addBook.html";
              });
			});					
		</script>
	</body>
</html>