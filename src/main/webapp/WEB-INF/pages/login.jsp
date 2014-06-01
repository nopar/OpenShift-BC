<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title>Login Page</title>

    <link rel="shortcut icon" type="image/x-icon" href="<c:url value='/resources/img/favicon.ico'/>" />
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css"/>

<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}

html, body {
    background-image: url('resources/img/bg_shadow.png'), url('resources/img/bg_pattern.png');
    background-repeat: repeat-x, repeat;
    background-position: top center, top center;
}
</style>
</head>
<body onload='document.loginForm.username.focus();'>

<center>
	<h1>Národná Transfúzna Stanica <BR /> (Database Authentication)</h1>
</center>
	<div id="login-box">

		<center><h3>Prihlasvací formulár</h3></center>

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name='loginForm'
			action="<c:url value='/j_spring_security_check' />" method='POST'>

			<table>
				<tr>
					<td>Login:</td>
                                        <td><input type='text' 
                                                   name='username' 
                                                   value="nopar"
                                                   placeholder="nick alebo email"></td>
				</tr>
				<tr>
					<td>Heslo:</td>
                                        <td><input type='password' 
                                                   name='password' 
                                                   value="root"
                                                   placeholder="zadaj heslo"/></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit"
						value="submit" /></td>
				</tr>
			</table>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

		</form>
	</div>

</body>
</html>