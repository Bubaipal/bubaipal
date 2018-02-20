<?php
  include('layout_manager.php');
  include('content_function.php');
?>
<html>
<head><title>online question answer platform</title></head>
<link href="/forum-tutorial/styles/main.css" type="text/css" rel="stylesheet"/>
<body bgcolor="khaki">
   <div class="pane">
      <div class="header"><h1><a href="/forum-tutorial"><center><font face="Tahoma" color="red"><b>ONLINE QUESTION ANSWER PLATFORM</font></b></center ></a></h1></div>
	  <div class="loginpane">
          <?php 
		       session_start();
		      if(isset($_SESSION['username']))
			  {
				  logout();
				  
			  }	else{
				  if(isset($_GET['status'])){
					  if($_GET['status'] =='reg_success'){
						  echo "<h1 style='color: violet;'>New user registered successfully!</h1>";
					  }else if($_GET['status'] == 'login_fail') {
						  echo "<h1 style='color: red;'>Invalid username or password!</h1>";
					  
					  }	
				  }
				  loginform();
			  }		  
		  ?>
	  </div>
	  <div class="forumdesc">
	   <i><p>WELCOME TO THE ONLINE COMMENT TABLE</P></i>
      </div>
      <div class="content">
           <?php dispcategories(); ?>
      </div>
   </div>	  
</body>
</html>