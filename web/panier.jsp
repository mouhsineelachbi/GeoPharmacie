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
            //session = request.getSession(true);
            //String cin = session.getAttribute("cin").toString();
        %>
    <table border="2">
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
                String cin = new String();
                Cookie[] ck = request.getCookies();
                if(ck != null) {
                    for (int i = 0; i < ck.length; i++) {
                        Cookie cookie = ck[i];
                        String name = cookie.getName();
                        String value = cookie.getValue();
                        if(name.equals("username")){
                            cin = value;
                            break;
                        }
                    }
                }
                
                LinkedList<Produit> pl = db.getClientProduit(cin);
                int numeroClient = db.getNumClient(cin);
                for(int i=0; i<pl.size(); i++){
                    Produit p = pl.get(i);
            %>
                <td><input type="text" disabled name="reference" value=<%=p.getReferenceProduit()%>></td>
                <td><input type="text" disabled name="libelle" value=<%=p.getLibelle()%>></td>
                <td><input type="text" disabled name="prix" value=<%=p.getPrix()%>></td>
                <td><input type="text" disabled name="temp" value=<%=p.getTemperatureStock()%>></td>
                <td><input type="date" disabled name="dateex" value=<%=p.getDateExpiration()%>></td>
                <td><input type="date" disabled name="datefab" value=<%=p.getDateFabrication()%>></td>
                <td><input type="text" disabled name="quantite" value=<%=db.getQuantiteProduitClient(cin, numeroClient)%>></td>
                <input type="hidden"  name="numeroProduit" value=<%=p.getNumeroProduit()%>>           
        </tr>
        <%
            }
        %>
    </tabe>        
        
        
    </body>
</html>
