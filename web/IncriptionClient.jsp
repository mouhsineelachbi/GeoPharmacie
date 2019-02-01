<%-- 
    Document   : IncriptionClient
    Created on : 14 déc. 2018, 22:48:08
    Author     : Hamza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
        <link href="IC.css" rel="stylesheet" media="all"/>
        
    </head>
    <body>
        <div class="K">
        
        <form action="inscription" method="post">
            
            <h1>Inscription</h1>
            
                <input name="nom" type="text" placeholder="nom" class="txtb"> 
                <input name="prenom" type="text" placeholder="prenom" class="txtb">
                <input name="cin" type="text" placeholder="cin" class="txtb">
                <input name="tel" type="tel" placeholder="tel" class="txtb">
                <input name="email" type="email" placeholder="email" class="txtb">
                <input name="adresse" type="text" placeholder="adresse" class="txtb">
                <input name="pseudo" type="text" placeholder="pseudo" class="txtb">
                <input name="motdepasse" type="password"  placeholder="motdepasse" class="txtb">
                <div class="b">
                  <p><centet>TYPE :</centet></p>
                        <label>
                            <select name="type" id="list">
                                        <option value="Client">Client</option>
                                        <option value="Pharmacien">Pharmacien</option> 
                            </select>
                        </label>
                </div>
                <input type="hidden" name="idPharmacie" value="1"  />
                <input type='hidden' name="action" value="ajouter"/>
                <input type="submit" value="Enregister" class="signup-btn" />
                <a href="http://localhost:8080/GeoPharmacieweb/PageClient.jsp?">déjà inscrit</a>
                                       
        </div>
        <div class="X">
             <a><img src="bg3.png" alt=""/></a>
            <h1>Giopharmacie vous aide à trouver votre médecin plus rapidement et à l'endroit le plus proche.</h1>
        </div>
                
               
                       <
        
            
        </form>
        </div>
    </body>
</html>
