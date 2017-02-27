<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 27/2/2017
  Time: 12:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Comprueba Usuario</title>
</head>
<body>
<%

    String usuario=request.getParameter("usuario");
    String contra=request.getParameter("contra");
    Class.forName("com.mysql.jdbc.Driver");

    try {
        Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
        PreparedStatement cpreparada=miConexion.prepareStatement("SELECT * FROM USUARIOS WHERE USUARIO=? AND CONTRASENA=?");
        cpreparada.setString(1,usuario);
        cpreparada.setString(2,contra);
        ResultSet miResulset=cpreparada.executeQuery();

        if (miResulset.absolute(1)) out.println("Usuario Aurotizado");
        else out.println("No hay Usuarios con esos datos");

    }catch (Exception e){
        e.printStackTrace();
        out.println("A habido un Error");
    }
%>
</body>
</html>
