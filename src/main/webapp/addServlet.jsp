<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "mb" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
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
	
	<h3>This is to explain SQL using JSTL</h3>
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
                         url="jdbc:mysql://localhost:3306/mobiles" 
                         user="root" password="root"/>
     ${db}
     <br>
     <sql:query dataSource="${db}" var="rs">
         SELECT * FROM mobiles;
      </sql:query>
      <mb:forEach var="mobile" items="${rs.rows}">
         ${mobile.mobileId}:  ${mobile.mobileName}<br>
      </mb:forEach>
                         	
</body>
</html>