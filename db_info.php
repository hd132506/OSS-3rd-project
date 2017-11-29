<?php
  $host = 'localhost';
  $user = 'root';
  $pw = '';
  $dbname = 'ericast';

  $mysqli = new mysqli($host, $user, $pw, $dbname);

  if (!$mysqli) {
    exit('Connect Error (' . mysqli_connect_errno() . ') '. mysqli_connect_error());
  }
  
 ?>
