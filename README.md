# Introduction
-	We're developing Web Application ‘ERICAST’ for sharing and distributing 'Card news' contents.
-	This app is applying Apache License 2.0.
-	You can check software [license](https://github.com/hd132506/OSS-3rd-project/tree/master/license) if you want to get more information.
----
### What is 'Card news'?
 - A trendy form of news which consists of some images like 'Card'.
 - It is simple enough to be shared via SNS like facebook, twitter and so on.
 - Reference : [here](http://www.hanyang.ac.kr/web/eng/card-news)
----
# For developers       
### Language & Environment
  - Web server : Apache
  - Front-end : html5(+css framework including bootstrap), javascript, jquery
  - Back-end : PHP5.6
  - Database : MySQL
 
### What to do
  - Create, Upload (We temporarily linked a meme URL on Create button)
  - Additional function of Login (Checking password, Email verification, Finding password)
  - Managing user's own contents(Delete, Edit, and so on)
  - Searching by keywords
  - Complete the DB
  
### Code Convention
  - Indentation
  <br/>html : 2 spaces
  <br/>php : 1 tab
  - We would follow the HTML style guide at [w3schools](https://www.w3schools.com/html/html5_syntax.asp) and PHP at [mediawiki](https://www.mediawiki.org/wiki/Manual:Coding_conventions/PHP)
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
1. Download this
2. Set a server and database by ericast.sql file, and edit db_info.php as your status
3. You can send email to ch20792457@gmail.com or use GitHub issue.
4. We'll welcome Any feedback.
