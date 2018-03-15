
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Login</title>
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

<button onclick="lock.show({callbackURL: 'http://localhost:8080/AuthoSSO/home.jsp'})">Login</button>

</body>
</html>