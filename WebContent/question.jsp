<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Question</title>
</head>
<body>
	Well, hello ${name}!
	<br><br>
	How are you today?
	<br><br>
	<form action=MyOtherControllerServlet method="post">
		<input type="radio" name="status" value="good" >I'm doing great today!
		<br>
		<input type="radio" name="status" value="okay" >I'm having an 'ok' day.
		<br>
		<input type="radio" name="status" value="bad" >	I'm not doing well today.
		<br><br>
		<input type="submit" value="Reply">
	</form>
	
</body>
</html>