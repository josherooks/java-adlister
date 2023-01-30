
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Iterating using JSP and JSTL</title>
</head>
<body>
<%! String[] nationalParks = new String[] {"Everglades NP", "Zion NP", "Yosemite NP", "Banff NP", "White Sands NP"};%>

<% request.setAttribute("parks", nationalParks); %>

<ul>
  <c:forEach var="park" items="${parks}">
    <li>${park}</li>
  </c:forEach>
</ul>

</body>
</html>