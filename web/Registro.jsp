<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 26/2/2017
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registro</title>
</head>
<body>
<h1>Usuarios Registrados</h1>

Usuario confirmado: <br> <br>
Nombre: <%= request.getParameter("nombre")%> &nbsp; Apellido: <%= request.getParameter("apellido")%>

<br> <br> <br>
<jsp:include page="Fecha.jsp"></jsp:include>
</body>
</html>
