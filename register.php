<?php
  include_once( 'db_info.php' );

  $id = $_POST['usrid'];
  $pw = md5( $_POST['usrpw'] );
  $email = $_POST['useremail'];
  $q = "INSERT INTO member (id, password, email, permission) VALUES('$id', '$pw', '$email', 'user')";

  if( $mysqli->query( $q ) ) {
      echo("<script>location.replace('welcome.html');</script>");
  }
  else {
    echo 'fail..' . '<br/>' . $mysqli->error;
  }
?>
