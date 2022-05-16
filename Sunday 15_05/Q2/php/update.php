<?php
     include_once '../config/connection.php';
?>

<div class="container-fluid">

    <!-- DataTales Example -->
 
        <?php

            if(isset($_POST['edit_btn']))
            {
                $id = $_POST['edit_id'];
                
                $query = "SELECT * FROM phpform WHERE id='$id' ";
                $query_run = mysqli_query($con, $query);

                foreach($query_run as $row)
                {
                    ?>
                <!DOCTYPE html>
                <html lang="en">
                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Sign up</title>
                    <link rel="stylesheet" href="../css/bootstrap.css">
                    <link rel="stylesheet" href="../css/style.css">
                </head>
                <body>
                        <form action="code.php" method="POST" class="update-input">

                            <input type="hidden" name="edit_id" value="<?php echo $row['id'] ?>">

                            <div class="form-group">
                                <label> Username </label>
                                <input type="text" name="edit_username" class="form-control update-input" value="<?php echo $row['first_name'] ?>" class="form-control"
                                    placeholder="Enter Username">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" name="edit_email" value="<?php echo $row['email'] ?>" class="form-control update-input"
                                    placeholder="Enter Email">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="edit_password" value="<?php echo $row['password'] ?>"
                                    class="form-control update-input" placeholder="Enter Password">
                            </div>

                            <a href="admin.php" class="btn btn-danger"> CANCEL </a>
                            <button type="submit" name="updatebtn" class="btn btn-primary"> Update </button>

                        </form>
                        <?php
                }
            }
        ?>
        </div>
    </div>
</div>

</div>