<%-- 
    Document   : AfficherDateGardePharmacien
    Created on : 27 janv. 2019, 15:31:28
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.DateFerie"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.DateGarde"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AfficherDateGarde</title>
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
                <th> MODIFIER</th>
            </tr>
             <%
            
            baseD op = new baseD();
            int idpharmacie;
            idpharmacie =(Integer)request.getAttribute("idpharmacie");
                
            LinkedList<DateGarde> gardes = op.AfficherDateGarde(idpharmacie);
            DateFerie d=new DateFerie();
            d =(DateFerie)request.getAttribute("ferie");
                                System.out.println("hhhhh"+gardes.size());
             for(DateGarde f: gardes){
            
            %>
            <tr>
            <td> <%=f.getJourGarde()%></td>
               <td> <%=f.getHeureDM() %></td> 
                <td><%=f.getHeureFM() %> </td> 
               <td> <%=f.getHeureDS() %> </td> 
                <td> <%=f.getHeureFS() %></td> 
                <td> <a href="ModifierFerie.jsp">MODIFIER</a></td>
              </tr>
              <% }
              
              %>
        </table>
              
                  
    </body>
</html>
