<%-- 
    Document   : AfficherPharmaciePharmacien
    Created on : 27 janv. 2019, 15:44:31
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            baseD op = new baseD();
            
            %>
            <table border="" >
                
                <tr>
                    <th>NOM PHARMACIE</th>
                
                    <th>ADRESSE  </th>
                
                    <th>TEL </th>
                    <th>DATE DE FERIE</th>
                    <th>DATE DE GARDE</th>
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
                <form action="ModifierPharmacien" method="post">
                    <input type="hidden" name="idpharmacie" value="<%=p.getIdPharmacie()%>"/>
                    <input type="hidden" name="action" value="affichageIndepondanteFp"/>  
                    <th><input type="submit" value="PLUS DE DETAILL"> </th>
                </form>
                <form action="ModifierPharmacien" method="post">
                    <input type="hidden" name="idpharmacie" value="<%=p.getIdPharmacie()%>"/>
                    <input type="hidden" name="action" value="affichageIndepondantep"/>  
                    <th><input type="submit" value="PLUS DE DETAILL"> </th>
                </form>
            </tr>
                 <%
                    
            }
        
            %>
            </table>
    </body>
</html>
