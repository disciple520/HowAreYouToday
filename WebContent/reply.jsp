<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reply</title>
</head>
<body>
	${message}
	${name}
	<br><br>
	See ya next time!
	<br><br>
	Oh, by the way...
	<br>
	<form action=MyLastControllerServlet method="post">
		What is your first name again? <input type="text" name="firstName"> <BR>
		And your last name? <input type="text" name="lastName"> <BR>
		<input type="submit" value="continue"/>
	</form>
</body>
</html>