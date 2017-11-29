<?php
  include_once('db_info.php');
  session_start();

  $id = $_POST['userid'];
  $pw = md5($_POST['userpw']);

  $q = "SELECT * FROM member WHERE id = '$id'";

  $result = $mysqli->query($q);

  if($result) {
    if($result->num_rows == 1) {
      $row = mysqli_fetch_array($result);
      if($row['password'] == $pw) {
        $_SESSION['is_logged'] = 'YES';
        $_SESSION['userid'] = $id;
        echo("<script>
        opener.window.location.replace('membership.html');
        self.window.close();
        </script>");
      }
      else {
        echo 'fail..';
      }
    }
  }
  else {
    echo 'fail..' . '<br/>' . $mysqli->error;
  }

 ?>
