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

try {
	$conn = new PDO("mysql:host=$servername;dbname=$dbname",$username, $password );
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Sets the error mode of PHP engine to Exception to display all the errors
	echo "<p style='color:green; font-weight:bold'>Connection Was Successful Test2</p>";
}
catch (PDOException $err) {
	echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";
}

try {
	$sql="INSERT INTO Student (StdID, SName, BirthDate, Gender, Department) VALUES (:stid, :sn, :bd, :gen, :dpt);";   // all the variable names must start with a colon (:)
	$stmnt = $conn->prepare($sql);    // read about prepared statement here: https://www.w3schools.com/php/php_mysql_prepared_statements.asp
	$stmnt->bindParam(':stid', $_POST['stdId']);   // stdId in $_POST['stdId'] in the exact name of the input element in HTML. if any typo, your code does not work   
	$stmnt->bindParam(':sn', $_POST['sname']);   // note the single quotes, If you forget to put single quotes, your code does not work.
	$stmnt->bindParam(':bd', $_POST['bdate']);
	$stmnt->bindParam(':gen', $_POST['gender']);
	$stmnt->bindParam(':dpt', $_POST['dept']);

	$stmnt->execute();

	echo "<p style='color:green'>Data Inserted Into Table Successfully</p>";
}
catch (PDOException $err ) {
	echo "<p style='color:red'>Data Insertion Failed: " . $err->getMessage() . "</p>\r\n";
}
// Close the connection
unset($conn);

echo "<a href='../insertData.html'>Insert More Values</a> <br />";

echo "<a href='../index.html'>Back to the Homepage</a>";

?>

</body>
</html>