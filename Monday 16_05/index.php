<?php
$servername = "localhost";
$username = "root";
$password = "";

try {
  $conn = new PDO("mysql:host=$servername;dbname=monday_16_05", $username, $password);
  echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}

$sql = "INSERT INTO livecode (id,name, job_title) VALUES ('10','Marwa','Coffee girl')";
$sql2="DELETE FROM livecode WHERE id='7'";
$sql3="UPDATE livecode SET name = 'Aya' WHERE id='6'";
$sql4="CREATE TABLE new_table (
    id INT(14) NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    salary FLOAT(14,10) NOT NULL
);";
$conn->exec($sql4);

?>