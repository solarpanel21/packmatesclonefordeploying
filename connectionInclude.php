<?php
$mysqli = new mysqli("db", "root", "root", "packmates");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    exit();
} else {
   //print("Connected to MySQL")
}
?>