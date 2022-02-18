<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show</title>
</head>
<body>
	<h1>Here's your Omikuji!</h1>

	<h2>
		In <c:out value="${years}"/>
		years, you will live in
		<c:out value="${city}"/>
		with
		<c:out value="${person}"/>
		as your room mate, 
		<c:out value="${activity}"/> 
		for a living. 
		The next time you see a
		<c:out value="${creature}"/>, 
		you will have good luck. Also, 
		<c:out value="${comment}"/>
	</h2>

	<a href ="/">Home</a>

</body>
</html>