<?php
    function loginform(){
		echo "<form action='/forum-tutorial/validatelogin.php' method='POST'>
		   <p> Username:<input type='text' id='usernameinput' name='usernameinput' required/></p>
			
		    <p>password:<input type='password' id='passwordinput' name='passwordinput' required/></p>
			
		            <input type='submit' value='Login'/>
		  <button type='button' onclick='location.href=\"/forum-tutorial/register.html\";'>Register</button>
		  </form>";
	}
	function logout() {
		echo nl2br("<p>WELCOME TO ".$_SESSION['username']." PROFILE</p>
		       <form action='/forum-tutorial/logout.php' method='GET'>
			    <input type='submit' value='Logout'/></form>");
	}
?>