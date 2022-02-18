<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>
	<h1>Send an Omikuji!</h1>

	<form action="/submit" method="post">
		<div>
			<label for="years">Pick any number from 5 to 25</label> 
			<input type="number" name="years" min="5" max="25">
		</div>
		<div>
			<label for="city">Any real city:</label> 
			<input type="text" name="city">
		</div>
		<div>
			<label for="person">Any real person's name:</label> 
			<input type="text" name="person">
		</div>
		<div>
			<label for="activity">Professional endeavor or hobby:</label> 
			<input type="text" name="activity">
		</div>
		<div>
			<label for="creature">Any type of living thing:</label> 
			<input type="text" name="creature"> 
		</div>
		<div>
			<label for="comment">Something nice to say to someone:</label>
		</div>
			<textarea name="comment" cols="40" rows="10"></textarea>

		<p>Send and show a friend</p>
		<input type="submit" value="Send">
	</form>
</body>
</html>