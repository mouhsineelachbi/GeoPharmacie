<%-- 
    Document   : AjouterPharmacie
    Created on : 26 déc. 2018, 16:57:46
    Author     : Hamza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter une pharmacie</title>
        <link href="newcss.css" rel="stylesheet" media="all"/>
    </head>
    <body>
        <div class="I">
        <form action="AjouterPharmacie">
            <h1>Ajouter 
                une pharmacie</h1>
            
        
            <input placeholder="NOM DU PHARMACIE:" name="nomPharmacie" type="text" class="txtb">
            <input placeholder="ADRESSE " name="adresse" type="text" class="txtb">
            <input placeholder="NUMERO DU PHARMACIEN :	" name="numeroPharmacien" type="text" class="txtb">
            <input placeholder="TEL :" name="tel" type="tel" class="txtb"> 
            <input type='hidden' name="action" value="ajouterPhar" >                      
            <input type="submit" value="Enregister" class="signup-btn">                        
            
            </form>
        
        </div>
    </body>
</html>
