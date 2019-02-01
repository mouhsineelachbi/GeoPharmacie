<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
        <link href="newcss.css" rel="stylesheet" media="all"/>
    </head>
    <body>
        <div class="I">
        <form action="login" method="POST">
            <h1>se connecter</h1>
            <input type="text" name="cin" placeholder="Nom d'utilisateur" class="txtb">
            <input type="password" name="password" placeholder="mot de passe" class="txtb">
            <div class="b">
                 <p><centet>Type</centet></p>
                    <label>
                     <input type="radio" name="type" value="client" >
                     <span class="client">Client</span>
                    </label>
                    <label>
                     <input type="radio" name="type" value="pharmacie" >
                     <span  class="Pharmacien">Pharmacien</span>
                    </label>
        </div>
            <input type="submit" value="connecter" class="signup-btn">
            <a href="http://localhost:8080/GeoPharmacieweb/IncriptionClient.jsp">Pas encore inscrit</a>
        </div>
        
    </body>
</html>


























