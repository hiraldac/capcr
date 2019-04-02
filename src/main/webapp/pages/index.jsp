<%-- 
    Document   : index
    Created on : 1/04/2019, 06:24:10 PM
    Author     : labtw04
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto UNSIS Clinica</title>
    </head>
    <body>
        <h1>Proyecto UNSIS Clinica</h1>
        <%System.out.println("Hola Mundo");%>
        
        <form action="index.jsp" method="GET">
            <p>
                Número:<input type="text" name="x" />
                <input type="submit" name="Aceptar" />                
            </p>            
        </form>
        
        <%
            int numero=Integer.parseInt(request.getParameter("x"));
            
            Long factorial=new Long(1);
            
            if (numero>=0) {
                for (int i = 1; i <= numero; i++) {
                        factorial*=i;
                }
                out.println("<p>El resultado de "+numero+"! = "+factorial+"</p>");
            } else {
                out.println("<p>Ingrese un numero mayor o igual a cero</p>");
            }
        %>
    </body>
</html>
