<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Omikuji</title>
</head>
<body>
	
	<div class ="container" >
		<h3>
			In <c:out value="${number}"/> years, you will <br>
			 live in <c:out value="${city}"/> with <br>
			  <c:out value="${person}"/> as roommate, <c:out value="${hobby}"/> <br>
			  for a living. <br>
			  the next time you see a <c:out value="${thing}"/><br>
			  you will a good luck. Also <c:out value="${message}"/>.
			  
		</h3>
		<a href="/omikuji" class="btn btn-primary">Go back</a>
	</div>

</body>
</html>