<?php
	require_once("dbconfig.php");
?>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="main.css">
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
		<h3><strong>Choose a user to borrow books!</strong></h3>

	<table class="table table-hover">
        <thead>
          <tr>
            <th id="userID">userID</th>
            <th id="userName">userName</th>
            <th id="phoneNum">phoneNum</th>
			<th id="borrowed_book_number">borrowed_book_number</th>
			<th id="overdue">overdue</th>
          </tr>
        </thead>
        <tbody>

	<?php

		$query = "SELECT user_id, user_name, phone_number, borrowed_book_number, overdue_sum FROM userlist natural join useroverdue_view natural join userborrowedbooknumber_view";
		$result = mysqli_query($conn, $query);

		while($row = mysqli_fetch_array($result)) {
			
			echo "<tr>";
			echo "<td>".$row["user_id"]."</td>";
			echo "<td>".$row["user_name"]."</td>";
			echo "<td>".$row["phone_number"]."</td>";
			echo "<td>".$row["borrowed_book_number"]."</td>";
			echo "<td>".$row["overdue_sum"]."</td>";
			echo "</tr>";		
		  }	
	?>
	</tbody>
	  </table>	
	  
	</div>
	
		<script>
			$(function() {
        	  	$("table > tbody > tr").click(function() {
					var number = $(this).find("td").eq(0).text();
					location.href = "userDetail.php?id="+number;
    	      	});
			});
		</script>
	</body>
</html>