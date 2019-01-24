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
        <title>JSP Page</title>
        <link href="AF.css" rel="stylesheet" media="all"/>
    </head>
    <body>
        <div class="A">
        <form action="AfficherPharmacie">
            <h1>Pharmacies</h1>
        <%
            
            baseD op = new baseD();
            
            %>
                <input align="right" disabled="disabled"  value="NOM PHARMACIE" class="txta">
                
                <input disabled="disabled"  value="ADRESSE" class="txta">
                
                <input align="left" disabled="disabled"  value="TEL" class="txta">
                
                    <%
                                LinkedList<Pharmacie> Pharmacies = op.AfficherPharmacie();                                
                                System.out.println("hhhhh"+Pharmacies.size());
             for(Pharmacie p: Pharmacies){
                
                // n'est pas terminé
                %>
                <br>
                <input  disabled="disabled"  value="<%=p.getNomPharmacie() %>" class="txtb">
                
                <input disabled="disabled"  value="<%=p.getAdresse()%>" class="txtb">
                
                <input  disabled="disabled"  value="<%=p.getTele()%>" class="txtb">
                
                 
                 <%
                    
            }
        
            %>
            
           
        </form>
        </div>
    </body>
</html>
