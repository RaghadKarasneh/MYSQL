<?php
 include_once '../config/connection.php';

//Update Code
if(isset($_POST['updatebtn']))
{
    $id = $_POST['edit_id'];
    $username = $_POST['edit_username'];
    $email = $_POST['edit_email'];
    $password = $_POST['edit_password'];

    $query = "UPDATE phpform SET first_name='$username', email='$email', user_password='$password' WHERE id='$id' ";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Your Data is Updated";
        $_SESSION['status_code'] = "success";
        header('Location: admin.php'); 
    }
    else
    {
        $_SESSION['status'] = "Your Data is NOT Updated";
        $_SESSION['status_code'] = "error";
        header('Location: admin.php'); 
    }{

    }
}

//Delete Code
if(isset($_POST['delete_btn'])){
    $id = $_POST['delete_id'];
    $queryDelete = "UPDATE phpform SET delete_col='1' WHERE id='$id' ";
    $query_run = mysqli_query($con, $queryDelete);
    header('Location: admin.php'); 
}
?>