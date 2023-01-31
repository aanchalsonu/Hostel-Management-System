<?php
function check_login()
{
if(strlen($_SESSION['id'])==0) // checks the session array, if length is zero which means user is not yet login then following code is executed 
	{	
		$host = $_SERVER['HTTP_HOST']; //stores the host name of server
		$uri  = rtrim(dirname($_SERVER['PHP_SELF']), '/\\'); //Stores the value of current script directory 
		$extra="index.php";	 //Stored string file name	
		$_SESSION["id"]="";
		header("Location: http://$host$uri/$extra"); // Moves back to current page itself if user not yet registered
	}
}
?>