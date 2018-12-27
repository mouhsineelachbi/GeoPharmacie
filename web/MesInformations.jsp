<%-- 
    Document   : MesInformations
    Created on : 26 déc. 2018, 21:56:23
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.baseD"%>
<%@page import="GeoPharmacie.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mes InfoRmations</title>
    </head>
    <body>
        <table border="" background="aqua">
                 <%
            
            baseD op = new baseD();
            
            %>
                <tr>
                    
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Email</th>
                    <th>Cin</th>
                    <th> Adresse</th>
                    <th> Pseudo</th>
                    <th> Tel</th>
                    <th> Mot de passe</th>
                    
 
                   
                </tr> 
                            <%
                                
                                Client cl= op.informationsClient(numeroClient);                                
                                System.out.println("hhhhh"+cl);
            
                //faux
                
                %>
                <tr>
                    <td><%=cl.getNom() %></td>
                    <td><%=cl.getPrenom() %></td>
                    <td><%=cl.getEmail() %></td>
                    <td><%=cl.getCin() %></td>
                    <td> <%=cl.getAdresse() %></td>
                    <td> <%=cl.getPseudo()%></td>
                    <td> <%=cl.getTel()%></td>
                    <td> <%=cl.getMotDePasse()%></td>
                    
    </body>
</html>
