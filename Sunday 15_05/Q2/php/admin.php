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
    <title>Welcome Admin</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <h1 class="text-center admin-h1"> Welcome  Admin To Your Control Page! </h1>
    <p class="text-center"> The following table contains the user information: </p>
    <!--The information in a table -->  
    <table class="table table-striped admin-table">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Password</th>
                <th scope="col">Date Created</th>
                <th scope="col">Date Last Login</th>
                <th scope="col">Update</td>
                <th scope="col">Delete</td>
            </tr>
        </thead>
        <tbody>
                <?php
                     $id= 1;
                     $sql1="SELECT * FROM phpform ;";
                     $result= mysqli_query($con , $sql1);
                     $result_check= mysqli_num_rows($result);
                 
                     if ($result_check > 0) {
                         while ($row=mysqli_fetch_assoc($result)) {
                         echo "<tr>
                                 <td>".$id."</td>
                                 <td>".$row['first_name']."</td>
                                 <td>".$row['email']."</td>
                                 <td>".$row['user_password']."</td>
                                 <td>".$row['date_create']."</td>
                                 <td>".$row['last_login']."</td>
                                 <td>"."<input type='submit' value='Update' name='update'> <br>"."</td>
                                 <td>"."<input type='submit' value='Delete' name='delete'> <br>"."</td>
                             </tr>";
                         $id++;  
                    }
                }
                if(isset($_POST['update'])){
                    $row['first_name']=  "<input type='submit' value='Update' name='update'>";
                }
                     ?>
        </tbody>
    </table>
</body>
</html>