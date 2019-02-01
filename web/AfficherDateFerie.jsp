<%-- 
    Document   : AfficherDateFerie
    Created on : 27 janv. 2019, 02:04:46
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.Pharmacien"%>
<%@page import="GeoPharmacie.DateFerie"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
        <link href="PgC.css" rel="stylesheet" media="all"/>
    </head>
    <body>
        <% 
            baseD op=new baseD();
            int idpharmacie;
                    idpharmacie =(Integer)request.getAttribute("idpharmacie");
             Pharmacien cl= op.selectPharmacien(idpharmacie);
            %>
        <h1>AfficherDateFerie</h1>
        
       
        <table border="">
            <tr>
                <td> LE JOUR DE FERIE</td>
               <td> L'HEURE DE DEBUT DU MATAIN </td> 
                <td> L'HEURE DE fin DU MATAIN </td> 
               <td> L'HEURE DE DEBUT DU SOIRE </td> 
                <td> L'HEURE DE fin DU SOIRE </td> 
               
            </tr>
             <%
            
            
             LinkedList<DateFerie> feries = op.AfficherDateFeries(idpharmacie);
             
                                System.out.println("hhhhh"+feries.size());
             for(DateFerie f: feries){
            
            %>
            <tr>
            <td> <%=f.getJourFerie() %></td>
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
