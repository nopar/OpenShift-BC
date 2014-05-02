<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<html>
 
<head>
<title>Login Page</title>
</head>
<body>
    <h3>Login with Username and Password</h3>

    <form action="/postar/j_spring_security_check" method="POST">
        <label for="username">User Name:</label>
        <input id="username" name="j_username" type="text"/>
        <label for="password">Password:</label>
        <input id="password" name="j_password" type="password"/>
        <input type="submit" value="Log In"/>
      </form>
</body>
</html>