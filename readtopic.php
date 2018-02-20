<?php
  include('layout_manager.php');
  include('content_function.php');
?>
<html>
<head><title>online question answer platform</title></head>
<link href="/forum-tutorial/styles/main.css" type="text/css" rel="stylesheet"/>
<body bgcolor="lightblue">
   <div class="pane">
      <div class="header"><h1><a href="/forum-tutorial"><font face="Tahoma" color="red"><center>ONLINE QUESTION ANSWER PLATFORM</center></font></a></h1></div>
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
	      replylink($_GET['cid'], $_GET['scid'], $_GET['tid']);
	   ?>
	   
      </div
	  
      <?php 
	     disptopic($_GET['cid'], $_GET['scid'], $_GET['tid']);
		 echo "<div class='content'><p>ALL REPLIES</p></div>";
		 dispreplies($_GET['cid'], $_GET['scid'], $_GET['tid']);
	  ?>
   </div>	  
</body>
</html>