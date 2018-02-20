<?php
  include('layout_manager.php');
  include('content_function.php');
?>
<html>
<head><title>Inki's php forum tutorial</title></head>
<link href="/forum-tutorial/styles/main.css" type="text/css" rel="stylesheet"/>
<body>
   <div class="pane">
      <div class="header"><h1><a href="/forum-tutorial">ONLINE QUESTION ANSWER PLATFORM</a></h1></div>
	  <div class="loginpane">
          <?php 
		       session_start();
		      if(isset($_SESSION['username']))
			  {
				  logout();
				  
			  }	else{
				  if(isset($_GET['status'])){
					  if($_GET['status'] =='reg_success'){
						  echo "<h1 style='color: green;'>new user registered successfully!</h1>";
					  }else if($_GET['status'] == 'login_fail') {
						  echo "<h1 style='color: red;'>invalid username or password</h1>";
					  }
				  }
				  loginform();
			  }		  
		  ?>
	  </div>
	  <div class="forumdesc">
	   <p>WELCOME TO THE ONLINE DISCUSSION TABLE</p>
	   <?php 
	      if (!isset($_SESSION['username'])){
			  echo "<p>please login first or <a href='/forum-tutorial/register.html'>click here</a> to register.</p>";
		  }
	   ?>
	   
      </div
	  <?php 
	  if(isset($_SESSION['username'])){
		  replytopost($_GET['cid'], $_GET['scid'], $_GET['tid']);
	  }
	  ?>
      <div class="content"> 
	    <?php disptopic($_GET['cid'], $_GET['scid'], $_GET['tid']);?>
	  </div>
   </div>	  
</body>
</html>