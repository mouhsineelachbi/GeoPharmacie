<%-- 
    Document   : ModifierPharmacien
    Created on : 21 janv. 2019, 19:15:25
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.Pharmacien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
        <link href="PgC.css" rel="stylesheet" media="all"/>
        <style type="text/css">
.l {
    height: 600px;
    background-image: url('s5.jpg');
    background-repeat: no-repeat;
    background-size: cover; 
    background-repeat:  no-repeat;
    
}
</style>
    </head>
    <body>
        <div class="Pc">
       <p>MoDiFiEr Mes Informations</p>
        
        
                <form action="ModifierPharmacien" method="post">
            <%
                //recuperer le pharmacien
                Pharmacien c=new Pharmacien();
                c =(Pharmacien)request.getAttribute("Pharmacien");
                System.out.println("****************************************************idparmacie = "+c.getIdPharmacie()+"******************ccccccccccccccc");
            %>
              <!--afficher dans le navigateur l'abonnee a modifier-->
              
              
              
                                <input type="hidden" name="numeroPharmacien" value="<%=c.getNumeroPharmacien()%>"/>
                                <input type="text" name="nom" value="<%=c.getNom()%>" class="txtb" required>
                                <input type="text" name="prenom"value="<%=c.getPrenom()%>" class="txtb" required>
                                <input type="text" name="cin"value="<%=c.getCin() %>" class="txtb" required>
                                <input type="text" name="email"value="<%=c.getEmail() %>" class="txtb" required>        
                                <input type="text" name="tele"value="<%=c.getTel() %>" class="txtb" required>
                                <input type="text" name="adresse"value="<%=c.getAdresse() %>" class="txtb" required>
                                <input type="text" name="pseudo" value="<%=c.getPseudo() %>" class="txtb" required>
                                <input type="password" name="motdepasse" value="<%=c.getMotDePasse() %>" class="txtb" required>
                                <input type="number" name="idpharmacie" value="<%=c.getIdPharmacie() %>" class="txtb" required>
                                
                                       
                                <input type='hidden' name="action" value="modifier"/>
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
            <li><form action="ModifierPharmacien" method="post">
                                  <input type="hidden" name="idpharmacie" value="<%=c.getIdPharmacie() %>"/> 
                                  <input type="hidden" name="action" value="dateferie"/>
                                  <input type="submit" value="Ajouter une date Ferie" class="optn">
                                       
                        </form>
                    
            </li>
            <li>
                <form action="ModifierPharmacien" method="post">
                                  <input type="hidden" name="idpharmacie" value="<%=c.getIdPharmacie() %>"/> 
                                  <input type="hidden" name="action" value="dategarde"/>
                                  <input type="submit" value="Ajouter une date de garde" class="optn">
                                       
                        </form>
                    
            </li>
            <li><form action="ModifierPharmacien" method="post">
                    <input type="hidden" name="idpharmacie" value="<%=c.getIdPharmacie() %>"/> 
                    <input type="hidden" name="action" value="listpharm"/>
                    <input type="submit" value="list de tout les pharmacies" class="optn">
                       </form>
            </li>
            <li><form action="ajouterProduit" method="post">
                  
                    <input type="hidden" name="action" value="AjoutProd"/>
                    <input type="submit" value="Ajouter produit" class="optn">
                       </form></li>
            <li>op4</li>
            <li><form action="ModifierPharmacien" method="post">
                                   <input type="hidden" name="action" value="deconnecter"/>
                                    <input type="submit" value="Déconnecter" class="deco">
                </form>
                               </li>
            </ul>
                    </dive>
            </nav>
            
            
        </div>
                                <div class="l">
                        
                        <c:if test="${!empty sessionScope.cin && !empty sessionScope.password}">
                            <h1>
                    ${sessionScope.nom} ${sessionScope.prenom}
                <!-- Bon Journéé Mr.<%=c.getNom()%>  <%=c.getPrenom()%>-->
                   <br>voulez-vous <br>modifier vos informations
             </h1>
                
         </c:if>  
                        
                        
                        
                        
                    </div>
                                
        <div class="footer">
            <p>Copyright © 2019 IOSM.</p>
        </div>
    </body>
</html>
