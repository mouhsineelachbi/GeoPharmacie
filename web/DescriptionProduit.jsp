<%@page import="GeoPharmacie.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            Produit p = (Produit)request.getAttribute("produit");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Description <%=p.getLibelle()%></title>
    </head>
    <body>
        <table border=2>
            <tr>
                <th>REFERENCE PRODUIT</th>
                <th>LIBELLE</th>
                <th>PRIX</th>
                <th>TEMPERATURE</th>
                <th>DATE D'EXPIRATION</th>
                <th>DATE DE FABRICATION</th>
                <th>IMAGE</td>
            </tr>
            <tr>
                <td><%=p.getReferenceProduit()%></td>
                <td><%=p.getLibelle()%></td>
                <td><%=p.getPrix()%></td>
                <td><%=p.getTemperatureStock()%></td>
                <td><%=p.getDateExpiration()%></td>
                <td><%=p.getDateFabrication()%></td>
                <td></td>
            </tr>
    </body>
</html>
