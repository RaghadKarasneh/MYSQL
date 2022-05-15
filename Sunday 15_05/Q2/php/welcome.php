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
              $sql1="SELECT * FROM phpform ;";
              $result= mysqli_query($con , $sql1);
              $result_check= mysqli_num_rows($result);
          
              if ($result_check > 0) {
                  while ($row=mysqli_fetch_assoc($result)) {
                   
                echo $row['first_name']. "  ". $row['middle_name']."  ".$row['last_name']." ".$row['final_name']; ?> To Your Home Page! </h1>
                <p class="text-center"> We want to remind you that your email is: <?php echo $row['email']; ?>, and your phone number is: <?php echo $row['phone_number']; }}?> </p>
    </div>
</video>
</body>
</html>