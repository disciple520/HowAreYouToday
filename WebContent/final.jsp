<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="person" scope="application" class="com.jerimiahwoods.howareyoutoday.PersonModel"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Goodbye!</title>	
</head>
<body>
	Thank you for your time.
	<br>
	${person}
	<br>
	Goodbye <jsp:getProperty name="person" property="firstName"/> 
	
	<jsp:getProperty name="person" property="lastName"/>!
	
</body>
</html>