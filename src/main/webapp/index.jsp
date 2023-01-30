<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%@include file="navbar.jsp"%>
<c:if test="${param.name.equals('Bubba') && param.color.equalsIgnoreCase('yellow')}">
    <h1>Variable names should be very descriptive</h1>
</c:if>
<c:if test="false">
    <h1>single letter variable names are good</h1>
</c:if>

<%--<%! String[] nationalParks = new String[] {"Everglades NP", "Zion NP", "Yosemite NP", "Banff NP", "White Sands NP"};%>--%>
<%--<%! String[] nationalParks = new String[] {};%>--%>
<%! String[] nationalParks;%>

<% request.setAttribute("parks", nationalParks); %>

<c:choose>
    <c:when test="${parks == null}">
        <h1>You have not visited any National Parks yet!</h1>
    </c:when>
    <c:otherwise>
        <h3>Parks You Have Visited:</h3>
        <ul>
            <c:forEach var="park" items="${parks}">
                <li>${park}</li>
            </c:forEach>
        </ul>
    </c:otherwise>
</c:choose>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>