<%-- 
    Document   : RecherchePharmacie
    Created on : 23 janv. 2019, 22:55:01
    Author     : Hamza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RecherchePharmacie</title>
    </head>
    <body>
        <h1>RecherchePharmacie</h1>
        <form action="SRecherchePharmacie" method="post">
                <input name="libelle" type="text"/> 
                
               <input type="hidden" name="action" value="rechercher"/>
               <input type="submit" value="Rechercher" />            
        </form>
    </body>
</html>
