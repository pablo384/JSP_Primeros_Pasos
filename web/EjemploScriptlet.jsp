<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 26/2/2017
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejemplo Scriptlet</title>
</head>
<body>
<h1>
    Ejemplo Scriptlet
</h1>

<%
    for (int i=0; i<10; i++){
        out.println("<br> Este es el mensaje "+i);
    }
%>

</body>
</html>
