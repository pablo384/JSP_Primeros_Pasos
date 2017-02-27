<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 26/2/2017
  Time: 10:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejemplo Declaraciones</title>
</head>
<body>

<h1 style="text-align: center"> Ejemplo Declaraciones </h1>

<%!

    private int resultado;
    public int metodoSuma(int num1, int num2){
        return resultado=num1+num2;
    }

    public int metodoResta(int num1, int num2){
        return resultado=num1-num2;
    }

    public int metodoMultiplica(int num1, int num2){
        return resultado=num1*num2;
    }

%>

El resultado de la suma es: <%= metodoSuma(7,5)%>
<br>
El resultado de la resta es: <%= metodoResta(7,5)%>
<br>
El resultado de la multiplicacion es: <%= metodoMultiplica(7,5)%>


</body>
</html>
