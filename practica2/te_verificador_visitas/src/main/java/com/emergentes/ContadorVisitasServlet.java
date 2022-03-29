
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gualbert
 */
@WebServlet(name = "ContadorServlet", urlPatterns = {"/ContadorServlet"})
public class ContadorVisitasServlet extends HttpServlet {

    
    

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int contador = 0;
        Cookie[] cukis = request.getCookies();
        
        if(cukis!=null){
            for(Cookie c :cukis){
                if(c.getName().equals("webMaster")){
                    contador = Integer.parseInt(c.getValue());
                }
            }
        }
        contador++;
        
        Cookie c = new Cookie("webMaster",Integer.toString(contador));
        c.setMaxAge(200);
        response.addCookie(c);
        //generar contenido a partir del servlet
        response.setContentType("text/html");
        PrintWriter out =response.getWriter();
        
        if(contador>1){
            out.print("Gracias por visitarnos nuevamente");
        }
        else{
            out.print("Bienvenido a nuestro sitio web");
        
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    
}
