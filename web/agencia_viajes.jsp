<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 27/2/2017
  Time: 12:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Agencia viajes</title>
</head>
<body>
<h1 style="text-align: center">Agencia de viajes</h1>

<%
    //valor por defecto
    String ciudad_Favorita="Madrid";

    //Lee la cookie de la peticion del navegador
    Cookie[] lascookies=request.getCookies();

    //buscar las preferencias. en este caso la ciudad favorita

    if (lascookies!=null){
        for (Cookie coktemp:lascookies){
            if ("agencia_viajes.ciudad_favorita".equals(coktemp.getName())){
                ciudad_Favorita=coktemp.getValue();
                break;
            }
        }
    }

%>

<h3>Vuelos a <%= ciudad_Favorita%></h3>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>


<h3>Hoteles en <%= ciudad_Favorita%></h3>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
</body>
</html>
