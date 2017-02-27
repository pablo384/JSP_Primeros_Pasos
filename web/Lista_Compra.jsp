<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 27/2/2017
  Time: 12:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista de la compra</title>
</head>
<body>
<form name="Formulario_Compra" action="Lista_Compra.jsp" method="post">

    <p>Artículos a comprar:</p>
    <p>
        <label>
            <input type="checkbox" name="articulos" value="agua " >
            Agua </label>
        <br>
        <label>
            <input type="checkbox" name="articulos" value="leche" >
            Leche </label>
        <br>
        <label>
            <input type="checkbox" name="articulos" value="pan" >
            Pan </label>
        <br>
        <label>
            <input type="checkbox" name="articulos" value="mazanas" >
            Manzanas </label>
        <br>
        <label>
            <input type="checkbox" name="articulos" value="carne" >
            Carne </label>
        <br>
        <label>
            <input type="checkbox" name="articulos" value="pescado" >
            Pescado </label>
    </p>
    <p>
        <input type="submit" name="button" id="button" value="Enviar">
        <br>
    </p>
</form>
<h2>Carro de la Compra:</h2>

<ul>
<%
    List<String> listaElementos= (List<String>) session.getAttribute("misElementos");

    if (listaElementos==null){
        listaElementos=new ArrayList<String>();
        session.setAttribute("misElementos", listaElementos);

    }


    String[] elementos=request.getParameterValues("articulos");

    if (elementos!=null){
        for (String el:elementos){
            //out.println("<li>"+el+"</li>");
            listaElementos.add(el);
        }
    }
    for (String elt:listaElementos){
        out.println("<li>"+elt+"</li>");
    }

%>
</ul>
</body>
</html>
