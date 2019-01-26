<%@page import="GeoPharmacie.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modifier</title>
    </head>
    <body>
        <%
            Produit p = (Produit)request.getAttribute("Produit");
        %>
        <table border=2 >
        <!--<form method="POST" action="modifierProduit">
            <input type="hidden" name="numProduit" value="">
            <input type="text" name="ref" value="">
            <input type="text" name="libelle" value="">
            <input type="date" name="dateEx" value="">
            <input type="text" name="dateFab" value="">
            <input type="text" name="temperature" value="">
            <input type="text" name="prix" value="">
            <input type="hidden" name="idPharmacie" value="">
        </form>-->
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
