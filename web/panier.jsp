<%@page import="GeoPharmacie.baseD"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.Produit"%>
<%@page import="GeoPharmacie.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panier</title>
    </head>
    <body>
        <%
            baseD db = new baseD();
            session = request.getSession(true);
            String cin = session.getAttribute("cin").toString();
            LinkedList<Produit> pl = db.getClientProduit(cin);
        %>
    <tabe>
        <tr>
            <th> REFERENCE PRODUIT</th>
            <th> LIBELLE</th>
            <th> PRIX</th>
            <th> TEMPERATURE</th>
            <th> DATE D'EXPIRATION</th>
            <th> DATE DE FABRICATION</th>
            <th> QUANTITE </th>
        </tr>
        <tr>
            <%
                for(int i=0; i<pl.size(); i++){
                    Produit p = pl.get(i);
                    int numeroClient = p.getNumeroProduit();
            %>
                <td><input type="text" disabled name="reference" value=<%=p.getReferenceProduit()%>></td>
                <td><input type="text" disabled name="libelle" value=<%=p.getLibelle()%>></td>
                <td><input type="text" disabled name="prix" value=<%=p.getPrix()%>></td>
                <td><input type="text" disabled name="temp" value=<%=p.getTemperatureStock()%>></td>
                <td><input type="date" disabled name="dateex" value=<%=p.getDateExpiration()%>></td>
                <td><input type="date" disabled name="datefab" value=<%=p.getDateFabrication()%>></td>
                <td><input type="text" name="quantite" value=<%=db.getQuantiteProduitClient(cin, numeroClient)%>></td>
                <!--<td><select><option value="empty"></option><option value="Modifier">Modifier</select>-->
                <input type="hidden" disabled name="numeroProduit" value=<%=p.getNumeroProduit()%>>           
        </tr>
        <%
            }
        %>
    </tabe>        
        
        
    </body>
</html>
