<%-- 
    Document   : AjouterPharmacie
    Created on : 26 déc. 2018, 16:57:46
    Author     : Hamza
--%>
<%@page import="GeoPharmacie.Pharmacien"%>
<%@page import="GeoPharmacie.baseD"%>
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
            <p>INFORMATION PHARMACIEN</p>
        <%
                     int numeroPharmacien;
                    numeroPharmacien =(Integer)request.getAttribute("numeroPharmacien");
                 %>
               
                
        <% baseD op=new baseD();
             Pharmacien cl= op.AfficherPharmacien(numeroPharmacien);
            %>
            <form>
                    <input disabled="disabled" name="nom" value="<%=cl.getNom() %>" class="txtb">
                    <input disabled="disabled" name="prenom" value="<%=cl.getPrenom() %>" class="txtb">
                    <input disabled="disabled" name="email" value="<%=cl.getEmail() %>" class="txtb">
                    <input disabled="disabled" name="cin" value="<%=cl.getCin() %>" class="txtb">
                    <input disabled="disabled" name="adresse" value="<%=cl.getAdresse() %>" class="txtb">
                    <input disabled="disabled" name="pseudo" value="<%=cl.getPseudo()%>" class="txtb">
                    <input disabled="disabled" name="tel" value="<%=cl.getTel()%>" class="txtb">
                    <input disabled="disabled" name="idpharmacie" value="<%=cl.getIdPharmacie() %>" class="txtb">
             </form>
                     <form action="ModifierPharmacien" method="post">
                            <input type="hidden" name="numeroPharmacien" value="<%=cl.getNumeroPharmacien()%>"/>
                            <input type="hidden" name="nom" value="<%=cl.getNom()  %>"/>
                            <input type="hidden" name="prenom" value="<%=cl.getPrenom()  %>"/>
                            <input type="hidden" name="cin" value="<%=cl.getCin()  %>"/>
                            <input type="hidden" name="email" value="<%=cl.getEmail()  %>"/>
                            <input type="hidden" name="adresse" value="<%=cl.getAdresse() %>"/>
                             <input type="hidden" name="pseudo" value="<%=cl.getPseudo()  %>"/>
                            <input type="hidden" name="tele" value="<%=cl.getTel() %>"/>
                            <input type="hidden" name="motdepasse" value="<%=cl.getMotDePasse() %>"/>
                            <input type="hidden" name="idpharmacie" value="<%=cl.getIdPharmacie() %>"/>
                           <input type="hidden" name="action" value="ModifierPharmacien"/>
                             <input type="submit" value="Modifier les informations" class="signup-btn">
                                       
                    </form>
                           
                           
                               
                               
                               
            <b style="color: green;">
                                
        <%
                String message=(String)request.getAttribute("message");
                if(message !=null)
                {
                   out.print(message);
                }
            
        %>    
            </b>
                </div>
            <div class="tl">
            
            
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
                                  <input type="hidden" name="idpharmacie" value="<%=cl.getIdPharmacie() %>"/> 
                                  <input type="hidden" name="action" value="dateferie"/>
                                  <input id="3" type="submit" value="Ajouter une date Ferie" class="optn">
                                       
                        </form>
                    
                </li>
                
                <li><form action="ModifierPharmacien" method="post">
                                  <input type="hidden" name="idpharmacie" value="<%=cl.getIdPharmacie() %>"/> 
                                  <input type="hidden" name="action" value="dategarde"/>
                                  <input id="4" type="submit" value="Ajouter une date de garde" class="optn">
                                       
                        </form>
                    
                </li>
                 
                
                <li><form action="ModifierPharmacien" method="post">
                    <input type="hidden" name="idpharmacie" value="<%=cl.getIdPharmacie() %>"/> 
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
                           
                                    
                                var list = document.getElementById('<%=cl.getIdPharmacie() %>'); 
                                
                                if(<%=cl.getIdPharmacie() %>!==1){
                                    
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

        <form action="AjouterPharmacie">
            <h1>Ajouter 
                une pharmacie</h1>
            
        
            <input placeholder="NOM DU PHARMACIE:" name="nomPharmacie" type="text" class="txtb" required>
            <input placeholder="ADRESSE " name="adresse" type="text" class="txtb" required>
            <input placeholder="TEL :" name="tel" type="tel" class="txtb" required> 
            <input type='hidden' name="action" value="ajouterPhar" >  
            <input type='hidden' name="numeroPharmacien" value="<%=numeroPharmacien%>"/>
            <input type="submit" value="Enregister" class="signup-btn">                        
            
            </form>
        
        </div>
       <div class="footer">
            <p>Copyright © 2019 IOSM.</p>
        </div>
    </body>
</html>
