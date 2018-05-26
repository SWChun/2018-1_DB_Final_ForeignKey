<?php
	require_once("dbconfig.php");
?>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
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
        <h3><strong>Book Request Manage List</strong></h3>
    </div>

 <table class="table table-hover">
        <thead>
          <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Wish Count</th>
          </tr>
        </thead>
        <tbody>

<?php

    $query = "SELECT * FROM wishbook";
    $result = mysqli_query($conn, $query);

    while($row = mysqli_fetch_array($result)) {
        
        echo "<tr>";
        echo "<td>".$row["wish_id"]."</td>";
        echo "<td>".$row["book_name"]."</td>";
        echo "<td>".$row["author"]."</td>";
        echo "<td>".$row["wish_cnt"]."</td>";
        echo "</tr>";		
        }	
?>
	    </tbody>
      </table>	

	</body>
</html>