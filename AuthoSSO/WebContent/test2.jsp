<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
  <title>Login</title>
  <link rel="stylesheet" type="text/css" href="/css/bootstrap.css"/>
  <link rel="stylesheet" type="text/css" href="/css/jquery.growl.css"/>
  <script src="http://code.jquery.com/jquery.js"></script>
  <script src="https://cdn.auth0.com/js/lock/10.15/lock.min.js"></script>
  <script src="/js/jquery.growl.js" type="text/javascript"></script>
</head>
<body>
  <div class="container">
    <script type="text/javascript">
      $(function () {
        $.growl({title: "Welcome!", message: "Please log in"});
      });

      $('#loginbutton').('click',function (e) {
    	  
        e.preventDefault();
        var lock = new Auth0Lock('', '', {
          auth: {
            params: {
              state: '${state}',
              // change scopes to whatever you like, see https:///scopes
              // claims are added to JWT id_token - openid profile gives everything
              scope: 'openid user_id name nickname email picture'
            },
            responseType: 'code',
            redirectUrl: '${fn:replace(pageContext.request.requestURL, pageContext.request.requestURI, '')}' + '/callback'
          }
        });
        lock.show();
      });
    </script>
    <button id="loginbutton">Login</button></div>
</body>
</html>
