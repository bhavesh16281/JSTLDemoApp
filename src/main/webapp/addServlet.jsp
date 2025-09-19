<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "mb" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Practice</title>
</head>
<body>
	<h1>JSTL Practice</h1>
	<h3>This is printed using EL- Expression language method</h3>
	${result}
	
	<h3>This is printed using JSTL tags method</h3>
	<mb:out value="${result}"></mb:out>
	
</body>
</html>