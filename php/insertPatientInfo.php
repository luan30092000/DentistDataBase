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
	$sql="INSERT INTO Patient(Name, DOB, Gender, Address, Phone, Credit, ExpiredDate) 
			VALUES (:name, :dob, :gend, :addr, :phone, :cred, :expc);";
	$stmnt = $conn->prepare($sql);
	$stmnt->bindParam(':name', $_POST['name']); 
	$stmnt->bindParam(':dob', $_POST['dob']);
	$stmnt->bindParam(':gend', $_POST['gender']);
	$stmnt->bindParam(':addr', $_POST['address']);
	$stmnt->bindParam(':phone', $_POST['phone']);
	$stmnt->bindParam(':cred', $_POST['credit']);
	$stmnt->bindParam(':expc', $_POST['expiredDate']);

	$stmnt->execute();

	echo "<p style='color:green'>Data Inserted Into Table Successfully</p>";
}
catch (PDOException $err ) {
	echo "<p style='color:red'>Data Insertion Failed: " . $err->getMessage() . "</p>\r\n";
}
// Close the connection
unset($conn);
echo "<a href='../HTMLs/addPatient.html'>Insert another patient information</a> <br />";
echo "<a href='../index.html'>Back to the Homepage</a>";
?>

</body>
</html>