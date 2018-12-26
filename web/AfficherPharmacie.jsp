<%-- 
    Document   : AfficherPharmacie
    Created on : 15 déc. 2018, 21:51:48
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.Pharmacie"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LES PHARMACIES</title>
    </head>
    <body>
        <%
            
            baseD op = new baseD();
            
            %>
            <table border="" >
                
                <tr>
                    <th>NOM PHARMACIE</th>
                
                    <th>ADRESSE : </th>
                
                    <th>TEL : </th>
                </tr>
                <tr>
                    <%
                                LinkedList<Pharmacie> Pharmacies = op.AfficherPharmacie();                                
                                System.out.println("hhhhh"+Pharmacies.size());
             for(Pharmacie p: Pharmacies){
                
                // n'est pas terminé
                %>
                    <th><%=p.getNomPharmacie() %></th>
                
                    <th><%=p.getAdresse()%> </th>
                
                    <th> <%=p.getTele()%></th>
                </tr>
                 <%
                    
            }
        
            %>
            </table>
    </body>
</html>
