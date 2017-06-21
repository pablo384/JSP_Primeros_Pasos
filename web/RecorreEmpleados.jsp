<%@ page import="java.util.ArrayList" %>
<%@ page import="pablo384.com.jsptags.Empleado" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 27/2/2017
  Time: 1:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    ArrayList<Empleado> datos=new ArrayList<Empleado>();

    Class.forName("com.mysql.jdbc.Driver");
    try {
        Connection miConexion= DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
        Statement miStatement=miConexion.createStatement();
        String instruccion="SELECT * FROM EMPLEADOS";
        ResultSet rs=miStatement.executeQuery(instruccion);

        while (rs.next()){
            datos.add(new Empleado(rs.getString(2),rs.getString(3),rs.getString(4), rs.getDouble(5)));
        }
        rs.close();
        miConexion.close();

    }catch (Exception e){
        e.printStackTrace();
        out.print(e.getMessage());
    }

    pageContext.setAttribute("losEmpleados",datos);
%>
<html>
<head>
    <title>Empleados</title>
    <style>
        .cabecera{
            font-weight: bold;
        }
    </style>
</head>
<body>
<table border="1">
<tr class="cabecera"><td>Nombre</td><td>Apellido</td><td>Puesto</td><td>Salario</td><td>Bonus</td></tr>
<c:forEach var="empTm" items="${losEmpleados}">
    <tr>
        <td>${empTm.nombre}</td> <td>${empTm.apellido}</td> <td>${empTm.puesto}</td> <td>${empTm.salario}</td>
        <td><c:if test="${empTm.salario<3000}">5000</c:if></td>
    </tr>
</c:forEach>
</table>
</body>
</html>
