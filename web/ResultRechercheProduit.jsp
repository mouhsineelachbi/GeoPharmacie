<%-- 
    Document   : ResultRechercheProduit
    Created on : 23 janv. 2019, 17:21:14
    Author     : Hamza
--%>

<%@page import="java.sql.Statement"%>
<%@page import="GeoPharmacie.Pharmacie"%>
<%@page import="java.util.List"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.Produit"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ResultRechercheProduit</title>
    </head>
    <body>
        <h1>ResultRechercheProduit</h1>
        <%
            baseD op=new baseD();
            
            List <Produit> listProduit=new LinkedList();
            Produit p=(Produit)request.getAttribute("Produit");
            System.out.println("1-liblle Result="+p.getLibelle());
          listProduit= op.rechercheProduit(p.getLibelle());
          System.out.println("2-liblle Result="+p.getLibelle());
          
            

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
                    for(Produit p2 :listProduit){
                %>
                <tr>
                    <td><%=p2.getReferenceProduit() %></td>
                    <td><%=p2.getLibelle() %></td>
                    <td><%=p2.getPrix() %></td>
                    <td><%=p2.getTemperatureStock() %></td>
                    <td> <%=p2.getDateExpiration() %></td>
                    <td><%=p2.getDateFabrication() %></td>
                    <td><%= op.NomPharmacie(p2.getIdpharmacie())%></td>
                </tr> 
                 <%
                    
            }
        
            %>
            </table>
        
    </body>
</html>
