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
//Insrt Records
$sql = "INSERT INTO livecode (id,name, job_title) VALUES ('10','Marwa','Coffee girl')";
//Delete Records
$sql2="DELETE FROM livecode WHERE id='7'";
//Update Records
$sql3="UPDATE livecode SET name = 'Aya' WHERE id='6'";
//Create Table
$sql4="CREATE TABLE new_table (
    id INT(14) NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    salary FLOAT(14,10) NOT NULL
);";
//Join Statment
$sql5 = "INSERT INTO new_table (id,user_name,salary) VALUES ('1','samar','700');";
$sql6="SELECT * FROM livecode
INNER JOIN new_table ON livecode.id=new_table.id;";
//Execute Statment
// $conn->exec($sql6);
$users=$conn->query($sql6);

foreach ($users as $row) {
    print $row["user_name"] . " - " . $row["id"] . "<br/>"; // To print values after join from 2 tables
}

?>