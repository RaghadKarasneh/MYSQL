<?php
include_once './config/connection.php';
echo $servername;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Live Code</title>
</head>
<body>
    <?php
        $name=$_POST['name'];
        $email=$_POST['email'];
        $salary=$_POST['salary'];

    $sql="INSERT INTO livecode (emp_name, email, salary)
    VALUES ('$name', '$email', '$salary'); ";
    
    if(mysqli_query($con,$sql)){
        echo 'new record created sucessfuly ';
    }
    else{
        echo "error:". $sql."<br>". mysqli_error($con);
    }
    $sql1="SELECT * FROM livecode ;";
    $result= mysqli_query($con , $sql1) ;
    $result_check= mysqli_num_rows($result);

    if ($result_check > 0) {
        while ($row=mysqli_fetch_assoc($result)) {
          echo $row['id']."<br>";
        }
    }
    ?>
</body>
</html>