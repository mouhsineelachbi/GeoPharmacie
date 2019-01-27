<%-- 
    Document   : AfficherProduits
    Created on : 15 déc. 2018, 19:37:16
    Author     : Hamza
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="GeoPharmacie.Produit"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AFICHAGE DES PRODUITS</title>
    </head>
    <body>
         <%
            
            baseD op = new baseD();
            
            %>
            <table border="" >
                
                <tr>
                    <th>REFRENCE PRODUIT</th>
                    <th>LIBELLE</th>
                    <th>PRIX</th>
                    <th>TEMPERZTURE</th>
                    <th>DATE D'EXPERATION</th>
                    <th> DATE DE FABRICATION</th>
                    <th>PHARMACIE</th>
                </tr> 
                <%
                                LinkedList<Produit> produits = op.AfficherProduit();                                
                                System.out.println("hhhhh"+produits.size());
                                
            for(Produit p :produits){
                
                // n'est pas terminé
                %>
                <tr>
                    <td><%=p.getReferenceProduit() %></td>
                    <td><%=p.getLibelle() %></td>
                    <td><%=p.getPrix() %></td>
                    <td><%=p.getTemperatureStock() %></td>
                    <td> <%=p.getDateExpiration() %></td>
                    <td><%=p.getDateFabrication() %></td>
                    <td><%= op.NomPharmacie(p.getIdpharmacie())%></td>
                </tr> 
                 <%
                    
            }
        
            %>
            </table>
    </body>
</html>
