<%-- 
    Document   : notre équipe
    Created on : 26 janv. 2019, 19:00:22
    Author     : abdel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Geophar</title>
    <link rel="stylesheet" href="ot.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
  </head>
  <body>
      
      <nav class="menu">
            <a><img src="bg3.png" alt=""/></a>
            <ul>
                <li><a href="http://localhost:8080/GeoPharmacieweb/PageClient.jsp?">Accueil</a></li>
            <li><a href="http://localhost:8080/GeoPharmacieweb/AfficherPharmacie.jsp" >Pharmacies</a></li>
            <li><a href="AfficherProduits.jsp">Produits</a></li>
            <li><a>à propos de nous</a>
            <ul>
                <li><a href="http://localhost:8080/GeoPharmacieweb/notre%20%C3%A9quipe.jsp" >notre équipe</a></li>
                
                <li><a>Ressources</a></li>
            </ul>
            </li>
            </ul>
            <form action="SRechercheProduit" method="post" class="search-form">
                <input name="libelle" class="sf"/> 
                
               <input type="hidden" name="action" value="rechercher"/>
               <input type="submit" value="Rechercher" class="RP">
            </form>
            </nav>

  <div class="team-section">
    <div class="inner-width">
      <h1>Notre équipe</h1>
      <div class="pers">


        <div class="pe">
          <img src="p1.png" alt="">
          <div class="p-name">Abdallah HEIBALLA</div>
          <div class="p-des">Développeur&Designer</div>
          
        </div>

        <div class="pe">
          <img src="p2.png" alt="">
          <div class="p-name">Hamza DOUYRY</div>
          <div class="p-des">Développeur</div>
          
        </div>

        <div class="pe">
          <img src="p3.png" alt="">
          <div class="p-name">Mouhsine ELACHBI</div>
          <div class="p-des">Développeur</div>
          
        </div>

      </div>

    </div>
  </div>



    <div class="footer">
            <p>Copyright © 2019 IOSM.</p>
        </div>
    </body>
</html>
