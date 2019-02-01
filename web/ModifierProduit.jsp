<%@page import="GeoPharmacie.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
    </head>
    <body>
        <%
            Produit p = (Produit)request.getAttribute("Produit");
        %>
        <table border=2 >
            <tr>
                <th>REFERENCE PRODUIT</th>
                <th>LIBELLE</th>
                <th>PRIX</th>
                <th>TEMPERATURE</th>
                <th>DATE D'EXPIRATION</th>
                <th>DATE DE FABRICATION</th>
                <th>MODIFIER</th>
            </tr>
            <td><%=p.getReferenceProduit()%></td>
            <td><%=p.getLibelle() %></td>
            <td><%=p.getPrix() %></td>
            <td><%=p.getTemperatureStock()%></td>
            <td><%=p.getDateExpiration()%></td>
            <td><%=p.getDateFabrication()%></td>
    </body>
</html>
