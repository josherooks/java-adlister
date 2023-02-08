<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login</title>
</head>
<body>
<%--<c:choose>--%>
<%--  <c:when test="${param.username.equals('admin') && param.password.equals('password')}">--%>
<%--    <% response.sendRedirect("/profile.jsp"); %>--%>
<%--  </c:when>--%>
<%--  <c:when test="${param.username != null && param.password != null}">--%>
<%--    <% response.sendRedirect("/login.jsp"); %>--%>
<%--  </c:when>--%>
<%--</c:choose>--%>
<%
  if(request.getMethod().equalsIgnoreCase("post")) {
    if (request.getParameter("username").equals("admin") && request.getParameter("password").equals("password")) {
      response.sendRedirect("/profile.jsp");
    } else{
      response.sendRedirect("/login.jsp");
    }
  }
%>

<form action="/login.jsp" method="post">
  <label for="username">Username</label>
  <input type="text" id="username" name="username">
  <label for="password">Password</label>
  <input type="password" id="password" name="password">
  <button type="submit">Sign In</button>
</form>
</body>
</html>