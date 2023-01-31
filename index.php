<?php
    session_start();
    include('includes/dbconn.php');
    //post is used to pass data from web form to server side , it is used for confidential data 
    if(isset($_POST['login'])) //Checks if login Key exists and is set to some value other than null
    {
    $email=$_POST['email'];
    $password=$_POST['password'];
    $password = md5($password); //md5 function converts the password into cipher form
    $stmt=$mysqli->prepare("SELECT email,password,id FROM userregistration WHERE email=? and password=? ");//qury to select password ,email and id for further processing 
        $stmt->bind_param('ss',$email,$password); //Bindes the parameters to the specified statement. s : String
        $stmt->execute(); //Executing the statement , sends the statement to the database to be executed and returns true or false
        $stmt -> bind_result($email,$password,$id); // To retrive the result of the sql statement 
        $rs=$stmt->fetch(); // It is used to retrive the results of next row one by one until no rows are left 
        $stmt->close();
        $_SESSION['id']=$id; // creates a session variable id , which can be used in subsequent scripts. SESSION is a global array that allows you to store data across the Multiple request in sessions
        $_SESSION['login']=$email;
        $uip=$_SERVER['REMOTE_ADDR']; // to access the IP address of the current user. SERVER is a global array which stores information about Server
        $ldate=date('d/m/Y h:i:s', time());
         if($rs){
            $uid=$_SESSION['id'];
            $uemail=$_SESSION['login'];
        $ip=$_SERVER['REMOTE_ADDR'];
        // $geopluginURL='http://www.geoplugin.net/php.gp?ip='.$ip;
        // $addrDetailsArr = unserialize(file_get_contents($geopluginURL));
        // $city = $addrDetailsArr['geoplugin_city'];
        // $country = $addrDetailsArr['geoplugin_countryName'];
        $log="INSERT into userLog(userId,userEmail,userIp) values('$uid','$uemail','$ip')"; // query to be executed 
        $mysqli->query($log); //The query string is stored in the variable "$log" and is being passed as an argument to the "query()" method of the MySQLi object "$mysqli".
        if($log){
            header("location:student/dashboard.php"); // if true then go to student dashboard page
                 }
        } else { // Display an error messages
            echo "<script>alert('Sorry, Invalid Username/Email or Password!');</script>";
               }
   }
?>
<!DOCTYPE html>
<html dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    
    <title>Hostel Management System</title>
    <!-- Custom CSS -->
    <link href="dist/css/style.min.css" rel="stylesheet">

    <script type="text/javascript">
    function valid() {
    if(document.registration.password.value!= document.registration.cpassword.value){
        alert("Password and Re-Type Password Field do not match  !!");
    document.registration.cpassword.focus();
    return false;
        }
    return true;
        }
    </script>

</head>



<body>
    <div class="main-wrapper">
       
        <div class="preloader">
            <div class="lds-ripple">
                <div class="lds-pos"></div>
                <div class="lds-pos"></div>
            </div>
        </div>
        
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center position-relative"
            >
            <div class="auth-box row">
                <div class="col-lg-7 col-md-5 modal-bg-img" style="background-image: url(assets/images/hostelman.jpg);">
                </div>
                <div class="col-lg-5 col-md-7 bg-white">
                    <div class="p-3">
                        <div class="text-center">
                            <img src="assets/images/big/icon.jpg" alt="wrapkit" style="width: 62px;">
                        </div>
                        <h2 class="mt-3 text-center">Student Login</h2>
                        
                        <form class="mt-4" method="POST">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label class="text-dark" for="uname">Email</label>
                                        <input class="form-control" name="email" id="uname" type="email"
                                            placeholder="Enter your email" required>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label class="text-dark" for="pwd">Password</label>
                                        <input class="form-control" name="password" id="pwd" type="password"
                                            placeholder="Enter your password" required>
                                    </div>
                                </div>
                                <div class="col-lg-12 text-center">
                                    <button type="submit" name="login" class="btn btn-block btn-dark">LOGIN</button>
                                </div>
                                <div class="col-lg-12 text-center mt-5">
                                   <a href="admin/index.php" class="text-danger">Go to Admin Panel</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    
    <script src="assets/libs/jquery/dist/jquery.min.js "></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/libs/popper.js/dist/umd/popper.min.js "></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js "></script>
    
    <script>
        $(".preloader ").fadeOut();
    </script>
</body>

</html>