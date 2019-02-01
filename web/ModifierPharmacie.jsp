<%-- 
    Document   : ModifierPharmacie
    Created on : 22 janv. 2019, 20:59:23
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.Pharmacie"%>
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
    background-image: url('s10.jpg');
    background-repeat: no-repeat;
    background-size: cover; 
    background-repeat:  no-repeat;
    
}
</style>
    </head>
    <body>
        <div class="Pc">
            
            <p>ModifierPharmacie</p>
                <form action="SModifierPharmacie" method="post">
            <%
                //recuperer le pharmacie
               Pharmacie c=new Pharmacie();
                c =(Pharmacie)request.getAttribute("Pharmacie");
                System.out.println("****************************************************nomphar = "+c.getNomPharmacie()+"******************ccccccccccccccc");
            %>
             
              
              
              
                                <input type="hidden" name="idpharmacie" value="<%=c.getIdPharmacie() %>" class="txtb" required>
                                <input type="text" name="nomPharmacie" value="<%=c.getNomPharmacie()%>" class="txtb" required>
                                <input type="text" name="tel"value="<%=c.getTele()%>" class="txtb" required>
                                <input type="text" name="adresse"value="<%=c.getAdresse() %>" class="txtb" required>
                                
                                    
                                       
                                <input type="hidden" name="action" value="modifier"/>
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
                                  <input id="3" type="submit" value="Ajouter une date Ferie" class="optn">
                                       
                        </form>
                    
                </li>
                
                <li><form action="ModifierPharmacien" method="post">
                                  <input type="hidden" name="idpharmacie" value="<%=c.getIdPharmacie() %>"/> 
                                  <input type="hidden" name="action" value="dategarde"/>
                                  <input id="4" type="submit" value="Ajouter une date de garde" class="optn">
                                       
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
                    <input id="5" type="submit" value="Ajouter produit" class="optn">
                       </form></li>
                
                <li><form action="ajouterProduit" method="post">
                  <input type="hidden" name="action" value="afficherProduit"/>
                    <input id="6" type="submit" value="Mes Produits" class="optn">
                       </form></li> 
                 
                <li><form action="ajouterProduit" method="post">
                  
                    <input type="hidden" name="action" value="location"/>
                    <input id="7" type="submit" value="Mon Location" class="optn">
                       </form></li> 
                       
                <li><form action="Deconnexion" method="post">
                    <input type="hidden" name="action" value="deconnecter"/>
                    <input type="submit" value="Déconnecter" class="deco">
                       </form>
                    <script>
                           
                                    
                                var list = document.getElementById('<%=c.getIdPharmacie() %>'); 
                                
                                if(<%=c.getIdPharmacie() %>!==1){
                                    
                                    document.getElementById('1').style.visibility = 'hidden';
                                    document.getElementById('2').style.visibility = 'visible';
                                    document.getElementById('3').style.visibility = 'visible';
                                    document.getElementById('4').style.visibility = 'visible';
                                    document.getElementById('5').style.visibility = 'visible';
                                    document.getElementById('6').style.visibility = 'visible';
                                    document.getElementById('7').style.visibility = 'visible';
                                }
                                else{
                                     
                                    document.getElementById('1').style.visibility = 'visible';
                                    document.getElementById('2').style.visibility = 'hidden';
                                    document.getElementById('3').style.visibility = 'hidden';
                                    document.getElementById('4').style.visibility = 'hidden';
                                     document.getElementById('5').style.visibility = 'hidden';
                                    document.getElementById('6').style.visibility = 'hidden';
                                    document.getElementById('7').style.visibility = 'hidden';
                                    
                                }
                                    
                                
                       </script>
                    
                </li>
            </ul>
                    </dive>
            </nav>
            
            
        </div>
                    <div class="l">
                        
                        <c:if test="${!empty sessionScope.cin && !empty sessionScope.password}">
                            <h1>voulez-vous modifier<br> les informations <br>
                    de votre pharmacie <%=c.getNomPharmacie()%>
                   
             </h1>
                
         </c:if>  
                        
                        
                        
                        
                    </div>
        <div class="footer">
            <p>Copyright © 2019 IOSM.</p>
        </div>
    </body>
</html>
