<%-- 
    Document   : RechercheProduit
    Created on : 23 janv. 2019, 16:49:50
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.Produit"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RechercheProduit</title>
    </head>
    <body>
        <h1>RechercheProduit.jsp</h1>
        
        <form action="SRechercheProduit" method="post">
                <input name="libelle" type="text"/> 
                <input name="libelle" type="hidden"/>
               <input type='hidden' name="action" value="rechercher"/>
               <input type="submit" value="Rechercher" />
        </form>
        
    </body>
</html>
