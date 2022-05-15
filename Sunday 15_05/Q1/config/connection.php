<?php
$servername='localhost';
$dbusername='root';
$password='';
$database='sunday 15_05';

//Create connection
$con=mysqli_connect($servername,$dbusername,$password,$database);

//Check connection
if(!$con){
    die("Connection falied: ".mysqli_connect_error()) ;//echo this statment then break from the code, nothing after it will be used
}
echo "Connected Successfully";
?>