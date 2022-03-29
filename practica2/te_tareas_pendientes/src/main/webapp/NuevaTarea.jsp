<%-- 
    Document   : NuevaTarea
    Created on : Mar 29, 2022, 2:31:53 PM
    Author     : Gualbert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuava Tarea:</h1>
        <form action="MainServlet" method="POST">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="0" /></td>
                </tr>
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea" value="" /></td>
                </tr>
                
                <tr></tr>
                <td></td>
                <td> <input type="submit" value="Guardar" /> </td>
            </table>
    </body>
</html>
