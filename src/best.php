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
		<table class="table table-hover">
        <thead>
          <tr>
                        <th>월간 순위</th>
                        <th>Book ID</th>
						<th>책 제목</th>
                        <th>월간 대여 회수</th>
						<th>작가</th>
						<th>출판사</th>
						<th>Category</th>
						<th>남은 수량</th>
                        <th>리뷰 수</th>
          </tr>
        </thead>
        <tbody>
		
		<?php
			$query = "SELECT * from booklist ORDER BY mon_cnt DESC LIMIT 10";

			$result = mysqli_query($conn, $query);
		
            $i=1;
			while($row = mysqli_fetch_array($result)) {
					
                echo "<tr>";
                echo "<td>".$i."</td>";
                echo "<td>".$row["book_id"]."</td>";
                echo "<td>".$row["book_name"]."</td>";
                echo "<td>".$row["mon_cnt"]."</td>";
				echo "<td>".$row["author"]."</td>";
				echo "<td>".$row["publisher"]."</td>";
				echo "<td>".$row["category_id"]."</td>";
				echo "<td>".$row["quantity"]."</td>";
				echo "<td>".$row["review_cnt"]."</td>";
                echo "</tr>";		
                $i = $i + 1;
			}	
			
		?>

		</tbody>
		</table>
