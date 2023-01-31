<?php
    session_start();
    unset($_SESSION['id']);
    session_destroy(); // End of thse session 
    header('Location:../index.php');
?>
