<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario Omikuji</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>

	<div class="container">
		<h1>Send an Omikuji!</h1>
		
		<div class="container">
			<form action="/submit" method="POST">
			
				<div>
					<p>Pick any number from 5 to 25</p>
					<select name="number">
						<c:forEach var="i" items="${lista_5_to_25}">
							<option  value="${i}"><c:out value="${i}"/></option>
						</c:forEach>
					</select>
				</div>
				<div>
					<p>Enter the name of any city</p>
					<input type="text" name="city">
				</div>
				<div>
					<p>Enter the name of any person</p>
					<input type="text" name="person">
				</div>
				<div>
					<p>Enter professional endeawor or hobby</p>
					<input type="text" name="hobby">
				</div>
				<div>
					<p>Enter any type of living thing</p>
					<input type="text" name="thing">
				</div>
				<div>
					<p>Say something nice to someone</p>
					<textarea rows="5" cols="30" name="message">nice</textarea>
				</div>
				<p>Send and show a friend</p>
				
				<input type="submit" value="Send" class="btn btn-success">
			
			</form>
		</div>
	</div>
	
</body>
</html>