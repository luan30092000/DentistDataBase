<!doctype html>
<!-- (C)Luan Nguyen May 2022 -->
<html>
<head>
	<title>Insert Data Into a Database</title>
	<link rel="stylesheet" href="../css/style.css" />
</head>
<body>

<?php
$servername ="localhost";
$dbname = "PillowTeethCompany";
$username = "root";
$password = "root";

// Connecting
try {
	$conn = new PDO("mysql:host=$servername;dbname=$dbname",$username, $password );
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Sets the error mode of PHP engine to Exception to display all the errors
	echo "<p style='color:green; font-weight:bold'>Connection Was Successful Test2</p>";
}
catch (PDOException $err) {
	echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";
}

// Prepare statement
// https://www.w3schools.com/php/php_mysql_prepared_statements.asp
try {
	$sql="INSERT INTO Staff(Name, DOB, Department, Phone, Address) 
			VALUES (:sname, :sdob, :sdept, :sphone, :saddr);";
	$stmnt = $conn->prepare($sql);
	$stmnt->bindParam(':sname', $_POST['staffName']);
	$stmnt->bindParam(':sdob', $_POST['staffDOB']);
	$stmnt->bindParam(':sdept', $_POST['staffDepartment']);
	$stmnt->bindParam(':sphone', $_POST['staffPhone']);
	$stmnt->bindParam(':saddr', $_POST['staffAddress']);
	$stmnt->execute();
	echo "<p style='color:green'>New staff is inserted to Staff table</p>";
}
catch (PDOException $err ) {
	echo "<p style='color:red'>Data Insertion Failed: " . $err->getMessage() . "</p>\r\n";
}
// Close the connection
unset($conn);
echo "<a href='../HTMLs/addStaff.html'>Insert another staff</a> <br />";
echo "<a href='../index.html'>Homepage</a>";
?>

</body>
</html>