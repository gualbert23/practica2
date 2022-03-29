<%-- 
    Document   : index
    Created on : Mar 29, 2022, 12:22:55 PM
    Author     : Gualbert
--%>

<%@page import="com.emergentes.Tarea"%>
<%@page import="java.util.ArrayList"%>
<%
    if(session.getAttribute("tareas")== null){
        ArrayList<Tarea> lisaux = new ArrayList<Tarea>();
        session.setAttribute("tareas", lisaux);
    }
    
    ArrayList<Tarea> tareas = (ArrayList<Tarea>) session.getAttribute("tareas");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <h1>Tareas Pendientes</h1>
        <a href="/te_tareas_pendientes/NuevaTarea.jsp"> Nuevo</a> 
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th></th>
            </tr>
            
            <%
                if(tareas != null){
                  for(Tarea t : tareas){
                  
                  
                
            %>
            <tr>
                <td> <%= t.getId() %> </td>
                <td> <%= t.getTarea() %> </td>
                <td> <input type="checkbox" name="completado" value="ON" /><%  %> </td>
                
                <td> <a href="MainServlet?op=eliminar&id=<%= t.getId() %>"> Eliminar </a></td>
            </tr>
            <%
                    }
                } 
            %>
            
            
            
        </table>
        
     </body>
</html>
