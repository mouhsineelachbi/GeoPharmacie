<%-- 
    Document   : AfficherDateGarde
    Created on : 27 janv. 2019, 04:14:56
    Author     : Hamza
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.DateGarde"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Geophar</title>
    </head>
    <body>
        <h1>AfficherDateGARDE</h1>
        
       
        <table border="">
            <tr>
                <td> LE JOUR DE GARDE</td>
               <td> L'HEURE DE DEBUT DU MATAIN </td> 
                <td> L'HEURE DE fin DU MATAIN </td> 
               <td> L'HEURE DE DEBUT DU SOIRE </td> 
                <td> L'HEURE DE fin DU SOIRE </td> 
              
            </tr>
             <%
            
            baseD op = new baseD();
            int idpharmacie;
                    idpharmacie =(Integer)request.getAttribute("idpharmacie");
             LinkedList<DateGarde> gardes = op.AfficherDateGarde(idpharmacie);
             
                                System.out.println("hhhhh"+gardes.size());
             for(DateGarde f: gardes){
            
            %>
            <tr>
            <td> <%=f.getJourGarde()%></td>
               <td> <%=f.getHeureDM() %></td> 
                <td><%=f.getHeureFM() %> </td> 
               <td> <%=f.getHeureDS() %> </td> 
                <td> <%=f.getHeureFS() %></td> 
              </tr>
              <% }
              
              %>
        </table>
              
                  
    </body>
</html>
