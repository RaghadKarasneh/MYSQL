<?php
session_start();
include_once '../config/connection.php';
if (isset($_POST['submit'])){
     
    $loginEmail=$_POST['loginEmail'];
    $_SESSION['email']=$loginEmail;
    $loginPassword=$_POST['loginPassword'];
    $adminEmail_correct=true;
    $adminPass_correct=true;
    $loginEmail_correct =true;
    $loginPassword_correct=true;
    $sql1="SELECT * FROM phpform WHERE email='$loginEmail' and delete_col='0';";
    $result= mysqli_query($con , $sql1);
    $result_check= mysqli_num_rows($result);
    // print_r ($result);
    print_r($result);
    if ($result_check > 0) {
       
        while ($row=mysqli_fetch_assoc($result)) {
        //Check Email
        //$_SESSION['id']=$row['id'];
           
                        //Check Password
            if($loginEmail==($row['email'])){
                $loginEmail_correct =true;
            }else{
                $loginEmail_result="<span style=' color:green'>Incorrect Email</span><br>";
                $loginEmail_correct =false;
            }}
                if(($password==$row['user_password'])){
                    $loginPassword_result="<span style=' color:green'>Correct Password</span><br>";
                    $loginPassword_correct=true;

                }else{
                    $loginPassword_result="<span style=' color:red'>Incorrect Password</span><br>";
                    $loginPassword_correct=false;
                    print_r($row['user_password']);
            }
            
            //echo $loginEmail_correct;
        }
        
    
    
    if($loginEmail_correct && $loginPassword_correct)
    {
        header('location:welcome.php');
        $row['last-login']= date("d-m-Y - h:i:sa");
        
        // $_SESSION["array"];
    }else
   { echo '<script language="javascript">';
    echo 'alert("Incorrect Information")'; 
    echo '</script>';
}
    // cHeck Admin information 
    if($loginEmail=="admin@gmail.com"){
		if($loginPassword== "Admin*1234"){
            $loginEmail_result="<span style=' color:green'>Correct Email</span><br>";
			$adminEmail_correct=true;
			$adminPass_correct=true;
	
		}else{
			$loginPassword_result="<span style=' color:red'>Incorrect Password</span><br>";
	    	$adminPass_correct=false;
		}
	}else{
		$loginEmail_result="<span style=' color:red'>Incorrect Email or Password</span><br>";
		$adminEmail_correct=false;
	}
	if ($adminEmail_correct && $adminPass_correct ){
		header('location:admin.php');
	}}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <div class="container">
        <form method="post" class="login_form">
            <div class="login-fields">
                <h1 class="text-center">Login</h1>
                <p class="text-center">Welcome back! Login with your credentials</p>
                <label for="loginEmail">Email</label>
                <br>
                <!--Email-->
                <input type="email" name="loginEmail" id="loginEmail" class="form-control"  placeholder="Your Email" required>
                <?php if(isset($loginEmail_result)){echo $loginEmail_result;}?>
                <br>
                <!--Password-->
                <label for="loginPassword">Password</label>
                <br>
                <input type="password" name="loginPassword" id="loginPassword" class="form-control"  placeholder="Password" required>
                <?php if(isset($loginPassword_result)){echo $loginPassword_result;}?>
                <br>
                <input type="submit" value="Submit" name="submit" class="login-btn btn btn-outline-primary col-lg-12">
                <div class="have_no_account text-center">Don't have an account? <a href="signUp.php">Sign Up</a></div>
            </div>
        </form>
    </div>
</body>
</html>