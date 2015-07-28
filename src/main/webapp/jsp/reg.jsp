<%--
  Created by IntelliJ IDEA.
  User: rolex
  Date: 2015/7/27
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="${pageContext.request.contextPath}/signIn" method="post">
  username:<input type="text" name="username"><br>
  password:<input type="password" name="password"><br>
  repassword:<input type="password" ><br>
  email:<input type="text" name="email"><br>
  <input type="submit" value="reg">

</form>
</body>
</html>
