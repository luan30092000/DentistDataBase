<!doctype html>\
<!-- (C)Luan Nguyen May 2022 -->
<html>
<head>
    <title>Delete a record of a table</title>
    <link rel="stylesheet" href="../css/style.css" />
</head>
<body>
    <?php
    $servername = "localhost";
    $dbname = "PillowTeethCompany";
    $username = "root";
    $password = "root";
    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "<p style='color:green'>Connection Was Successful</p>";
    } catch (PDOException $err) {
        echo "<p style='color:red'> Connection Failed: " . $err->getMessage() . "</p>\r\n";
    }
    try {
        $sql = "DELETE FROM $dbname.Patient WHERE PatientID = :patientID";
        $stmnt = $conn->prepare($sql); 
        $stmnt->bindParam(':patientID', $_POST['patientID']); 
        $stmnt->execute();
        echo "<p style='color:green'>Record Deleted Successfully</p>";
    } catch (PDOException $err) {
        echo "<p style='color:red'>Record Delete Failed: " . $err->getMessage() . "</p>\r\n";
    }
    // Close the connection
    unset($conn);
    echo "<a href='../index.html'>Back to the Homepage</a>";
    ?>

</body>

</html>