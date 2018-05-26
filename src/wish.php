<?php
    require_once("dbconfig.php");
    $user_id = $_GET["id"];
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

    <div class="container">
      <form class="form-horizontal" action="wish_process.php" method="post">
        <div class="form-group">
          <label class="col-md-2 control-label">신청할 책 제목</label>
          <div class="col-md-10">
            <input class="form-control" type="text" name="title" required placeholder="Enter the title">
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-2 control-label">작가</label>
          <div class="col-md-10">
            <input class="form-control" type="text" name="writer" required placeholder="Enter within 30 characters.">
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-md-offset-2 col-md-10">
            <button class="btn btn-default" type="submit">신청하기</button>
          </div>
        </div>

        <input type="hidden" name="id" value=<?php echo $user_id ?>>
      </form>
    </div>

		<script>
			
		</script>
	</body>
</html>