<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %><%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 26/2/2017
  Time: 11:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Recoge Datos</title>
</head>
<body>
<%
    String nombre=request.getParameter("nombre");
    String apellido=request.getParameter("apellido");
    String usuario=request.getParameter("usuario");
    String contra=request.getParameter("contra");
    String pais=request.getParameter("pais");
    String tecnologia=request.getParameter("tecnologias");
    Class.forName("com.mysql.jdbc.Driver");

    try {
        Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
        Statement miStatement = miConexion.createStatement();
        String instruccionSQL = "INSERT INTO USUARIOS (Nombre, Apellido, Usuario, Contrasena, Pais, Tecnologia) VALUES ('" + nombre + "','" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','" + tecnologia + "')";
        miStatement.executeUpdate(instruccionSQL);

        out.println("Registrado con exito");
    }catch (Exception e){
        e.printStackTrace();
        out.println("A habido un Error");
    }
%>
</body>
</html>
