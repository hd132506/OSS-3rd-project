# Introduction
-	We are developing Web Application ‘ERICAST’ for sharing and distributing card news contents.
-	This app is Open source software that has Apache License 2.0.
-	You can check software guarantee and [license](https://github.com/hd132506/OSS-3rd-project/tree/master/license) if you want to get more information.

# For developer       
### language
  - Front-end : html5(+css framework), javascript
  - Back-end : php
  - Database : MySQL
 
### What to do
  - Create, Upload (We temporarily linked a meme URL on Create button)
  - Additional function of Login (Checking password, Email verification, Finding password)
  - Managing user's own contents(Delete, Edit, and so on)
  - Searching by keywords
  
### Code Convention
  - Indentation
  <br/>html : 2 spaces
  <br/>php : 1 tab
  - Example
~~~
<body>
<div class="login-page">
  <div class="form">
    <form class="login-form" method="POST" action="login.php">
      <input type="text" placeholder="id" name="userid"/>
      <input type="password" placeholder="password" name="userpw"/>
      <button>login</button>
      <p class="message">Not registered?
        <a href="register.html">Create an account</a>
      </p>
    </form>
  </div>
</div>
~~~

~~~
<?php
  include_once( 'db_info.php' );
  $id = $_POST['usrid'];
  $pw = md5( $_POST['usrpw'] );
  $email = $_POST['useremail'];
  $q = "INSERT INTO member (id, password, email, permission) VALUES('$id', '$pw', '$email', 'user')";
~~~

### How to contribute
  - Email or GitHub pull request
  - We'll welcome Any feedback <3
