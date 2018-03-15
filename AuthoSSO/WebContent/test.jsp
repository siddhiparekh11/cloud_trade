<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="/css/jquery.growl.css"/>
    <script src="http://code.jquery.com/jquery.js"></script>
  
    <script src="/js/jquery.growl.js" type="text/javascript"></script>
</head>
<body>

<script src="https://cdn.auth0.com/js/lock/10.15/lock.min.js"></script>
<script>
var options = {
		  allowedConnections: ['Username-Password-Authentication']
		};
var lock = new Auth0Lock('', '',options);
 
</script>
<button id="loginbutton"  onclick="lock.show()">Login</button>
</body>
</html>