<?php
    require_once("dbconfig.php");
    if(isset($_GET["id"])) {
        $id = $_GET["id"];
        $query = "SELECT * FROM booklist WHERE book_id=".$id;
        $result = mysqli_query($conn, $query);
        if (!$result) {
            printf("Error: %s\n", mysqli_error($conn));
            exit();
        }
        $row = mysqli_fetch_array($result);
            
        $title = $row["book_name"];
        $author = $row["author"];
        $publisher = $row["publisher"];
        $quantity = $row["quantity"];
        $category = $row["category_id"];
        $thumnail = $row["thumbnail"];
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


    <div class="container">
    <div class="col-md-offset-2 col-md-10"> 
        <h3><strong>Book Detail Page</strong></h3>
    </div>
    <div class="col-md-offset-2 col-md-10">
        <img src="<?php echo $thumnail; ?>" class="img-thumbnail">
    </div>
      <form class="form-horizontal" action="updateBook.php?id=<?php echo $id; ?>" method="post">

        <div class="form-group">
          <label class="col-md-2 control-label">ID</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="id" value="<?php echo $id; ?>" disabled>
          </div>
          <label class="col-md-2 control-label">Title</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="title" value="<?php echo $title; ?>" required>
          </div>
          <label class="col-md-2 control-label">Author</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="author" value="<?php echo $author; ?>" required>
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-2 control-label">publisher</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="publisher" value="<?php echo $publisher; ?>" required>
          </div>
          <label class="col-md-2 control-label">Quantity</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="quantity" value="<?php echo $quantity; ?>" required>
          </div>
          <label class="col-md-2 control-label">Category</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="category" value="<?php echo $category; ?>" required>
          </div>
        </div>

        <div class="form-group">
        <label class="col-md-2 control-label">ThumbnailURL</label>
          <div class="col-md-2">
            <input class="form-control" type="text" name="thumnail" value="<?php echo $thumnail; ?>" required>
          </div>
        </div>
            <div class="col-md-offset-2 col-md-10">
            <button class="btn btn-default" type="submit">변경</button>
          </div>
      </form>      
      <div class="col-md-offset-2 col-md-10">
      <button class="btn btn-default" id="bdbtn">삭제</button>
    </div>
    </div>

    <script>
        $(function() {
             $("#bdbtn").click(function() {
            location.href = "deleteBook.php?id="+<?php echo $id; ?>;
            });
        });					
    </script>
	</body>
</html>