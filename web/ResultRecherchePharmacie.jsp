<%-- 
    Document   : ResultRecherchePharmacie
    Created on : 23 janv. 2019, 22:18:48
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.Pharmacie"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="GeoPharmacie.Produit"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
    </head>
    <body>
        <h1>ResultRecherchePharmacie</h1>
         <%
            baseD op=new baseD();
            
            List <Pharmacie> listPharmacie=new LinkedList();
            Pharmacie p=(Pharmacie)request.getAttribute("Pharmacie");
            System.out.println("1-liblle Result="+p.getNomPharmacie());
          listPharmacie= op.recherchePharmacie(p.getNomPharmacie());
          System.out.println("2-liblle Result="+p.getNomPharmacie());
            
        %>
         <table border="" >
                
                <tr>
                    <th>NOM DE LA PHARMACIE </th>
                    <th>TELEPHONE </th>
                    <th>ADRESSE</th>
                  
                    
                </tr> 
                <%
                    for(Pharmacie p2 :listPharmacie){
                %>
                <tr>
                    <td><%=p2.getNomPharmacie() %></td>
                    <td><%=p2.getTele() %></td>
                    <td><%=p2.getAdresse() %></td>
                   
                </tr> 
                 <%
                    
            }
        
            %>
            </table>
    </body>
</html>
