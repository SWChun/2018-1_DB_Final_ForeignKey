<?php
    require_once("dbconfig.php");
    if(isset($_GET["id"])) {
        $id = $_GET["id"];
        $query = "SELECT user_name, phone_number, borrowed_book_number, overdue_sum FROM userlist natural join useroverdue_view natural join userborrowedbooknumber_view where user_id=".$id;
        $result = mysqli_query($conn, $query);
        if (!$result) {
            printf("Error: %s\n", mysqli_error($conn));
            exit();
        }
        $row = mysqli_fetch_array($result);
            
        $name = $row["user_name"];
        $phoneNum = $row["phone_number"];
        $borrowed = $row["borrowed_book_number"];
        $overdue = $row["overdue_sum"];
    }
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
    <h3><strong>User Detail Page</strong></h3>
    <button class="btn btn-default" id="dbtn">삭제</button>
  </div>
			
    <div class="container">
      <form class="form-horizontal" action="updateUser.php?id=<?php echo $id; ?>" method="post">

        <div class="form-group">
          <label class="col-md-2 control-label">ID</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="id" value="<?php echo $id; ?>" disabled>
          </div>
          <label class="col-md-2 control-label">Name</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="name" value="<?php echo $name; ?>" required>
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-2 control-label">PhoneNumber</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="phoneNum" value="<?php echo $phoneNum; ?>" required>
          </div>
          <label class="col-md-2 control-label">Overdue</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="overdue" value="<?php echo $overdue; ?>" disabled>
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-2 control-label">Borrowed Number</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="borrowed" value="<?php echo $borrowed; ?>" disabled>
          </div>
          <div class="col-md-offset-2 col-md-10">
          <button class="btn btn-default" type="submit">변경</button>
          </div>
        </div>
      </form>
    </div>

    <h4>Rental Status</h4>
    <table class="table table-hover">
        <thead>
          <tr>
            <th>rentalID</th>
            <th>제목</th>
            <th>작가</th>
            <th>출판사</th>
            <th>대여일</th>
            <th>연체일</th>
            <th>반납</th>
          </tr>
        </thead>
        <tbody>
          
<?php
  $query = "SELECT rental_id, book_name, author, publisher, rent_time, book_overdue, return_time from rental NATURAL JOIN booklist WHERE user_id=$id AND (return_time is null OR book_overdue > 0)";
  $result = mysqli_query($conn, $query);

  while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>".$row["rental_id"]."</td>";
    echo "<td>".$row["book_name"]."</td>";
    echo "<td>".$row["author"]."</td>";
    echo "<td>".$row["publisher"]."</td>";
    echo "<td>".$row["rent_time"]."</td>";
    echo "<td>".$row["book_overdue"]."</td>";
    echo "<td><button class ='btn btn-default'";
    if($row["return_time"] != null) {echo " disabled";}
    echo ">반납</button></td>";
    echo "</tr>";		
  }	
?>

		</tbody>
    </table>
    
    <script>
        $(function() {
             $("#dbtn").click(function() {
               if(<?php echo $borrowed; ?> > 0) {
                 if(confirm("이 유저는 현재 반납하지 않은 책이 있습니다! 정말 삭제하시겠습니까?")) {
                  location.href = "deleteUser.php?id="+<?php echo $id; ?>;
                 }
               }              
            });
            $("table > tbody > tr > td > button").click(function() {
              var number = $(this).parents("tr").find("td").eq(0).text();
              location.href = "returnBook.php?id="+number;
            });
        });					
    </script>
	</body>
</html>