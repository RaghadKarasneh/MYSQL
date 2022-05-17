<?php
session_start();
include_once '../config/connection.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <div class="user-welcome">
        
        <h1 class="text-center"> Welcome
             <?php
            $email= $_SESSION['email'];
           print_r( $email);
              $sql1="SELECT * FROM phpform WHERE email='$email';";
              $result= mysqli_query($con , $sql1);
              $result_check= mysqli_num_rows($result);
          
              if ($result_check > 0) {
                while ($row=mysqli_fetch_assoc($result)) {
                //   $row=mysqli_fetch_assoc($result);
                //  print_r($row['first_name']);
                   
                  echo"<br> <h5> Welcome ". $row['first_name']. "  ". $row['middle_name']."  ".$row['last_name']." ".$row['final_name']."<br>";
                  echo "<div><h5> Your Email is : </h5>".$row['email'] ;
                  echo "<h5> Your Mobile Phone is :</h5> ".$row['phone_number']."<br>";
                }
            }?> 
    </div>
</body>
</html>