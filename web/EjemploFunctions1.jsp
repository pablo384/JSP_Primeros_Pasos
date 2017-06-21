<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 21/6/2017
  Time: 5:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Functions</title>
</head>
<body>

    <c:set var="datos" value="Ana,Lopez,Directora,75000"/>
    <c:set var="datosArray" value="${fn:split(datos,',')}"/>



    <input type="text" value="${datosArray[0]}"><br>
    <input type="text" value="${datosArray[1]}"><br>
    <input type="text" value="${datosArray[2]}"><br>
    <input type="text" value="${datosArray[3]}">


</body>
</html>
