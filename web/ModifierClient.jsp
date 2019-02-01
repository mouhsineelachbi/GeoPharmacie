<%-- 
    Document   : ModifierClient
    Created on : 26 déc. 2018, 20:20:55
    Author     : Hamza
    Editor     : Abdallah
--%>

<%@page import="GeoPharmacie.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
        <link href="PgC.css" rel="stylesheet" media="all"/>
    </head>
    <body>
        <div class="Pc">
         <form action="ModifierClient" method="post">
                    <h1>MoDiFiEr Mes Informations</h1>
            <%
                //recuperer l'abonner
                Client c=new Client();
                c =(Client)request.getAttribute("Client");
                
            %>
              <!--afficher dans le navigateur l'abonnee a modifier-->
              <input type="hidden" name="numeroclient" value="<%=c.getNumClient() %>" class="txtb">
              <input type="text" name="nom" value="<%=c.getNom() %>" class="txtb" required>
              <input type="text" name="prenom"value="<%=c.getPrenom()%>" class="txtb" required>
              <input type="text" name="cin"value="<%=c.getCin() %>" class="txtb" required>
              <input type="text" name="email"value="<%=c.getEmail() %>" class="txtb" required>   
              <input type="text" name="tel"value="<%=c.getTel() %>" class="txtb" required>
              <input type="text" name="adresse"value="<%=c.getAdresse() %>" class="txtb" required>
              <input type="text" name="pseudo" value="<%=c.getPseudo() %>" class="txtb" required>
              <input type="text" name="motdepasse" value="<%=c.getMotDePasse() %>" class="txtb" required>
                                
              <input type='hidden' name="action" value="modifier">
              <input type="submit" value="Enregister" class="signup-btn">
                
         </form>
                               
               
        
        </div>
              <div>
            
            
                <nav class="menu">
                    
                        <a><img src="bg3.png" alt=""/></a>
                    
                    
            <form action="SRechercheProduit" method="post" class="search-form">
                <input name="libelle" class="sf"/> 
                
               <input type="hidden" name="action" value="rechercher"/>
               <input type="submit" value="Rechercher" class="RP">
            </form>
                    
                    <dive class="opt">
            <ul>
                <li>
                    <form action="ajouterProduit" method="post">
                    <input type="hidden" name="action" value="prodC"/>
                    <input type="submit" value="List des Produits" class="optn"></form>
                </li>
                <li>
                    <form action="ajouterProduit" method="post">
                    <input type="hidden" name="action" value="pharC"/>
                    <input type="submit" value="List des Pharmacies" class="optn"></form>
                </li>
                <li>
                    <form action="ajouterProduit" method="post">
                    <input type="hidden" name="action" value="pharG"/>
                    <input type="submit" value="Les Pharmacies de Garde" class="optn"></form>
                </li>
                <li><form><input type="submit" value="les Pharmacies proches" class="optn"></form>
                </li>
                <li>
                    <form action="ajouterProduit" method="post">
                    <input type="hidden" name="action" value="panier"/>
                    <input type="submit" value="Panier" class="optn"></form>
                </li>
                <li><form action="Deconnexion" method="post">
                                       <input type="hidden" name="action" value="deconnecter"/>
                                       <input type="submit" value="Déconnecter" class="deco">
                    </form>
                </li>
            </ul>
                    </dive>
            </nav>
            
            
        </div>
        <div class="footer">
            <p>Copyright © 2019 IOSM.</p>
        </div>
    </body>
</html>
