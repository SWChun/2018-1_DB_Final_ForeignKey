<?php
	require_once("dbconfig.php");
		
	if(!isset($_GET["show"]))
	 	$show =  10;
   	else
	 	$show = $_GET["show"];

	if(!isset($_GET["show2"]))
		 $show2 =  "book_id";
   	else
		 $show2 = $_GET["show2"];

	$user_id = $_GET["id"];

	if (isset($_GET["page"])){
		$page = (int)$_GET["page"] ; 
	  }
	  else
		$page = 1 ;
	
	  if(isset($_GET["search"])){
	  
		$search_key = $_GET["search"];
		if( mb_strlen($search_key,"UTF-8") < 2){
		  echo '
		  <script> 
			alert("more than 2 letters required!");
			location.href = "bookList.php?id="$user_id;
		  </script> 
		  ';
		}
		$search_option = $_GET["select"];
	
		  $condition = $search_option." LIKE '%".$search_key."%'";
		  $query = "SELECT * FROM booklist"." WHERE ".$condition." ORDER BY ".$show2." DESC LIMIT 10 OFFSET ".($page-1)*$show;
		}
		else{
		  $query = "SELECT * FROM booklist"." ORDER BY ".$show2." DESC LIMIT ".$show." OFFSET ".($page-1)*$show;
		}
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
          <form action="" method="get">
            <select name="select">
              <option name="book_name" selected="selected">book_name</option>
              <option name="publisher">publisher</option>        
            </select>
            <input type="text" placeholder="Search.." name="search">
			<input type="hidden" name="id" value=<?php echo $user_id ?>>
            <button type="submit">Search</button>
          </form>


          
          <form action="" method="get">
            <select name="show" onchange="this.form.submit()">
              <option name="five" value=5 <?php if($show==5) echo "selected='selected'";  ?>>five</option>
              <option name="ten" value=10 <?php if($show==10) echo "selected='selected'";  ?>>ten</option>
              <option name="fifteen" value=15 <?php if($show==15) echo "selected='selected'";  ?>>fifteen</option>
            </select>
			<input type="hidden" name="id" value=<?php echo $user_id ?>>
          <form>

		  <form action="" method="get">
            <select name="show2" onchange="this.form.submit()">
              <option name="id" value="book_id" <?php if($show2=="book_id") echo "selected='selected'";  ?>>신간 순으로 조회</option>
              <option name="review_cnt" value="review_cnt" <?php if($show2=="review_cnt") echo "selected='selected'";  ?>>리뷰 순으로 조회</option>
            </select>
          <form>

        </div>
		

		<table class="table table-hover">
        <thead>
          <tr>
            <th>Book ID</th>
						<th>책 제목</th>
						<th>작가</th>
						<th>출판사</th>
						<th>Category</th>
						<th>남은 수량</th>
            <th>리뷰 수</th>
          </tr>
        </thead>
        <tbody>
		
		<?php
			$result = mysqli_query($conn, $query);
		
			while($row = mysqli_fetch_array($result)) {
					
				echo "<tr>";
				echo "<td>".$row["book_id"]."</td>";
				echo "<td>".$row["book_name"]."</td>";
				echo "<td>".$row["author"]."</td>";
				echo "<td>".$row["publisher"]."</td>";
				echo "<td>".$row["category_id"]."</td>";
				echo "<td>".$row["quantity"]."</td>";
				echo "<td>".$row["review_cnt"]."</td>";
				echo "</tr>";		
			}	
			
		?>

		</tbody>
		</table>

		<!-- <button id="borrow" class="btn btn-default" type="button">borrow</button> -->
		
		<div class="text-center">
        <ul class="pagination col-md-12">
          <?php
            $query = "SELECT book_id FROM booklist";
            $result = mysqli_query($conn, $query);
            $rows = mysqli_num_rows($result);
            if (!($rows <= $show)) {
              if ($page == 1)
                echo "<li class='disabled'><a href='#'><span>&laquo;</span></a></li>";
              else
                echo "<li><a href='bookList.php?page=".($page - 1)."&show=".$show."&id=".$user_id."'><span>&laquo;</span></a></li>";
              for ($i = 1; $i <= (int)($rows / $show + 1); $i++) {
                if ($page == $i)
                  echo "<li class='active'><a href='bookList.php?page=".$i."&show=".$show."&id=".$user_id."'>".$i."</a></li>";
                else
                  echo "<li><a href='bookList.php?page=".$i."&show=".$show."&id=".$user_id."'>".$i."</a></li>";
              }
              if ($page == (int)($rows / $show + 1))
                echo "<li class='disabled'><a href='#'><span>&raquo;</span></a></li>";
              else
                echo "<li><a href='bookList.php?page=".($page + 1)."&show=".$show."&id=".$user_id."'><span>&raquo;</span></a></li>";
            }
          ?>
        </ul>

				<button id="best" class="btn btn-default" align-right type="button">월간 베스트 조회</button>
				<button id="wish" class="btn btn-default" align-right type="button">도서 신청</button>
      </div>
			
		<script>
			$(function() {
        	  	$("table > tbody > tr").click(function() {
	        	    var number = $(this).find("td").eq(0).text();
					location.href = "bookDetail.php?userId="+<?php echo $user_id ?>+"&bookId="+number;
    	      	});
			});
			$("#best").click(function() {
                location.href = "best.php";
            });
						$("#wish").click(function(){
            location.href = "wish.php?id="+<?php echo $user_id; ?>
      });
		</script>
	</body>
</html>