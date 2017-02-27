<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 26/2/2017
  Time: 10:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejemplo Objetos</title>
</head>
<body>
<h1 style="align-content: center">Objetos Predefinidos JSO</h1>

pericion datos del navegador: <%= request.getHeader("User-Agent")%>
<br><br>

Peticion de idioma utilizado: <%= request.getLocale() %>
</body>
</html>
