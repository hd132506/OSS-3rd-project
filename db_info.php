<?php
  $host = 'localhost';
  $user = 'root';
  $pw = '';
  $dbname = 'ericast';
  
  $mysqli = new mysqli( $host, $user, $pw, $dbname );
  if ( !$mysqli ) {
    $error_no = mysqli_connect_errno();
    $connect_error = mysqli_connect_error();
    exit("Connect Error ({$error_no}) : {$connect_error}");
  }
 ?>
