<%-- 
    Document   : InfoMonPharmacie
    Created on : 22 janv. 2019, 21:01:58
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.Pharmacie"%>
<%@page import="GeoPharmacie.Pharmacien"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InfoMonPharmacie</title>
    </head>
    <body>
        <h1>InfoMonPharmacie</h1>
        <%
                baseD op= new baseD();
                Pharmacie phcie=new Pharmacie();
                phcie =(Pharmacie)request.getAttribute("Pharmacie");
               
               
        %>
        
        <table border="" >
                
                <tr>
                    <th>NOM PHARMACIE</th>
                
                    <th>ADRESSE  </th>
                
                    <th>TEL </th>
                </tr>
                <tr>
                   
                    <th><%=phcie.getNomPharmacie() %></th>
                
                    <th><%=phcie.getAdresse()%> </th>
                
                    <th> <%=phcie.getTele()%></th>
                </tr>
               
            </table>
                 <form action="SModifierPharmacie" method="post">
                            <input type="hidden" name="nomPharmacie" value="<%=phcie.getNomPharmacie()%>"/>
                            <input type="hidden" name="adresse" value="<%=phcie.getAdresse() %>"/>
                            <input type="hidden" name="tel" value="<%=phcie.getTele() %>"/>
                            <input type="hidden" name="idpharmacie" value="<%=phcie.getIdPharmacie() %>"/>
                           <input type='hidden' name="action" value="ModifierPharmacie"/>
                             <input type="submit" value="Modifier les informations"/>
                                       
        </form>
                                  
    </body>
</html>
