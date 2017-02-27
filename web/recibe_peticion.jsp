<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 27/2/2017
  Time: 11:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Peticion recibida</title>
</head>
<body>
<%
    //leyendo datos del formulario
    String ciudadFav=request.getParameter("ciudad_favorita");

    //crear la cookie
    Cookie miCookie=new Cookie("agencia_viajes.ciudad_favorita",ciudadFav);

    //vida de la cookie
    miCookie.setMaxAge(365*24*60*60); //un ano segun calculod el parametro


    //enviar a usuario
    response.addCookie(miCookie);

%>

Gracias por enviar tus preferencias

<a href="agencia_viajes.jsp">Ir a la agencia de viajes</a>
</body>
</html>
