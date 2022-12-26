<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Spring MVC login example.</title>
  </head>

  <body>
    <form action="login" method = "post">

        Please enter your login
    	<input type="text" name="login" required="required"/>
    	<br>

    	Please enter your password
    	<input type="password" name="password" required="required"/>

    	<input type="submit" value="login">
        <p style="color:red">${errorMessage}</p>
    </form>
  </body>
</html>