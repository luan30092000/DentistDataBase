<!doctype html>
<!-- (C)Luan Nguyen May 2022 -->
<html>
<head>
	<title>Connect to a Database</title>
	<link rel="stylesheet" href="../css/style.css" />
</head>
<body>
	<?php
	$servername = "localhost";   
	$username = "root";          
	$password = "root";			   
	try {
		$conn = new PDO("mysql:host=$servername", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		echo "<p style='color:green'>Connection Was Successful</p>"; // generates HTML code to display success message
	} catch (PDOException $err) {
		echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";   // displays message for the error that has happened
	}
	unset($conn);  // Always close the connection, when not needed any more.
	echo "<a href='../index.html'>Back to the Homepage</a>";
	?>
</body>
</html>