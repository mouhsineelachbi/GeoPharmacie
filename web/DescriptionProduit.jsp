<%@page import="GeoPharmacie.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            Produit p = (Produit)request.getAttribute("produit");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=p.getLibelle()%></title>
    </head>
    <body>
        <form action="Commande" method="POST">
        <table border=2>
            <tr>
                <th>REFERENCE PRODUIT</th>
                <th>LIBELLE</th>
                <th>PRIX</th>
                <th>TEMPERATURE</th>
                <th>DATE D'EXPIRATION</th>
                <th>DATE DE FABRICATION</th>
                <th>Quantite</th>
                <th>IMAGE</td>
            </tr>
            <tr>
                <td><input type="text"   name="reference" value=<%=p.getReferenceProduit()%>></td>
                <td><input type="text"  name="libelle" value=<%=p.getLibelle()%>></td>
                <td><input type="text"  name="prix" value=<%=p.getPrix()%>></td>
                <td><input type="text"  name="temp" value=<%=p.getTemperatureStock()%>></td>
                <td><input type="text"   name="dateex" value=<%=p.getDateExpiration()%>></td>
                <td><input type="text"   name="datefab" value=<%=p.getDateFabrication()%>></td>
                <td><input type="text" name="quantite" value=<%=p.getQuantite()%>></td>
                <!--<td><select><option value="empty"></option><option value="Modifier">Modifier</select>-->
                <input type="hidden"  name="numeroProduit" value=<%=p.getNumeroProduit()%>>
                <td></td>
            </tr>
            <br>
            <input type="submit" value="Commander"/>
    </body>
</html>
