<?php
session_start(); ob_start();
include('constant.php');

if(array_key_exists('UserLogin',$_POST)){
//extract($_POST);
$email = $_POST['email'];
$password = md5($_POST['password']);
$sql = $db->query("SELECT * FROM user WHERE email='$email' AND password='$password' ");
if(mysqli_num_rows($sql) == 1){
    $row = mysqli_fetch_assoc($sql);
    $_SESSION['user'] = $row['sn'];
    header('location: sales.php'); exit;
}
else{echo 'Error'; }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
<div class="container">
  
    <form method="post">
    <div class="row pt-4">
        <center>
            <h3><?php if(isset($_COOKIE['biztitle'])){ echo $_COOKIE['biztitle']; } ?><br>POS SOFTWARE<br><br></h3>
        </center>

        <div class="col-md-4" > </div>  <div class="col-md-4" >
            <div class="card">
                <div class="card-header">
                    <h5>Login</h5>
                </div>
                <div class="card-body">
                    <label>Email:</label>
                    <input type="text" name="email" placeholder="Enter email" class="form-control" >
                    <label>Password</label>
                    <input type="password" name="password" placeholder="Enter password" class="form-control" >
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary" name="UserLogin" >Login</button>
                </div>
            </div>
        </div>
    </div>
    </form>
</div>









<script src="js/bootstrap.bundle.min.js"></script>  

</body>
</html>

























