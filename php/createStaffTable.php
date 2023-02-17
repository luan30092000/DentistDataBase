<!doctype html>
<!-- (C)Luan Nguyen May 2022 -->
<html>
<head>
	<title>Create a Table</title>
	<link rel="stylesheet" href="../css/style.css" />
</head>

<body>

	<?php
	$servername = "localhost";
	$dbname = "PillowTeethCompany";
	$username = "root";
	$password = "root";

	try {
        $conn = new PDO("mysql:host=$GLOBALS[servername];dbname=$GLOBALS[dbname]", $GLOBALS['username'], $GLOBALS['password']);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		echo "<p style='color:green'>Connection Was Successfulasdas</p>";
	} catch (PDOException $err) {
		echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";
	}
	$sql = "CREATE TABLE Staff (
		Name 		VARCHAR(30),
		DOB 		DATE,
		Department 	CHAR(4),
		Phone 		VARCHAR(12),
		PRIMARY KEY (Name));";
	try {
		$conn->exec($sql);
		echo "<p style='color:green'>Table Created Successfully</p>";
	} catch (PDOException $err) {
		echo "<p style='color:red'>Table Creation Failed: " . $err->getMessage() . "</p>\r\n";
	}

	// Close the connection
	unset($conn);

	echo "<a href='../index.html'>Back to the Homepage</a>";

	?>

</body>

</html>