<?php
    include '../includes/dbconn.php';

    $sql = "SELECT id FROM userregistration";
                $query = $mysqli->query($sql);
                echo "$query->num_rows"; // The num_rows property of the result set is used to get the number of rows returned by the query. 
?>