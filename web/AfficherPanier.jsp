<%@page import="GeoPharmacie.Commande"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.baseD"%>
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
            LinkedList<Commande> l = db.AfficherPanier(1);
        %>
        <table>
            <tr>
                <td></td>
            </tr>
        </table>        
    </body>
</html>
