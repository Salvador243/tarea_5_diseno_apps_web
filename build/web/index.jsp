<%-- 
    Document   : index
    Created on : Mar 5, 2022, 7:22:47 PM
    Author     : salva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Generador de RFC</h2>

        <c:if test="${ requestScope.rfc != null }">
            <c:out value = "${requestScope.rfc}"/>
        </c:if>        
        <form action="rfc" method="post">
            <h3>Escribe tu nombre:</h3>

            <label>Nombre: </label> <input type="text" name="nombre"> <br>
            <label>Primer apellido: </label> <input type="text" name="primero"> <br>
            <label>Segundo apellido: </label> <input type="text" name="segundo"> <br>

            <h3>Escribe tu fecha de nacimiento:</h3>

            <label>A&nacute;o: </label> <input type="number" name="anio" min="1" max="99"> <br>
            <label>Mes: </label> <input type="number" name="mes" min="1" max="12"> <br>
            <label>Dia: </label> <input type="number" name="dia" min="1" max="31"> <br>

            <button type="submit">Enviar</button>
        </form>
    </body>
</html>
