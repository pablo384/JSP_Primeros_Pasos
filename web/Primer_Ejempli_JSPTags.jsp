<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 27/2/2017
  Time: 12:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String alumnos[]={"antonio","sandra","pablo","matias"};

    pageContext.setAttribute("losAlumnos", alumnos);

%>
<html>
<head>
    <title>Tag</title>
</head>
<body>

<c:forEach var="tempAlum" items="${losAlumnos}">
    ${tempAlum}<br>
</c:forEach>

</body>
</html>
