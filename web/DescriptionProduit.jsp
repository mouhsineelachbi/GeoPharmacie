<%@page import="GeoPharmacie.Client"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page import="GeoPharmacie.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            Produit p = (Produit)request.getAttribute("produit");
        %>
        
        <title>Geophar</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="PgC.css" rel="stylesheet" media="all"/>
        </head>
    <style type="text/css">
.l {
    height: 600px;
    background-image: url('s9.jpg');
    background-repeat: no-repeat;
    background-size: cover; 
    background-repeat:  no-repeat;
    
}

.pris {
  background-color: #4CAF50;
  color: white;
  padding: 9px 12px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
  left: 0;
  bottom: 0;
}

.pris:hover {
  background-color: #45a049;
}
        </style>
    </head>
    <body>
        <% String cin = new String();
        Cookie [] client = request.getCookies();
        for(int i=0;i<client.length;i++){
            if((client[i].getName()).equals("username") ){
                cin = client[i].getValue();
            }
        }
        
        baseD db = new baseD();
        Client cl = db.selectClient(cin);
        
   %>
         
    
    
      <div class="Pc">
         <form action="ModifierClient" method="post">
             <p>INFORMATION CLIENT</p>  
        
              
              <input disabled="disabled" name="nom" value="<%=cl.getNom()  %>" class="txtb">
              <input disabled="disabled" name="prenom" value="<%=cl.getPrenom()  %>" class="txtb">
              <input disabled="disabled" name="email" value="<%=cl.getEmail() %>" class="txtb">
              <input disabled="disabled" name="cin" value="<%=cl.getCin() %>" class="txtb">
              <input disabled="disabled" name="adresse" value="<%=cl.getAdresse() %>" class="txtb">
              <input disabled="disabled" name="pseudo" value="<%=cl.getPseudo()%>" class="txtb">
              <input disabled="disabled" name="tel" value="<%=cl.getTel()%>" class="txtb">
               
              
        
        
                     <form action="ModifierClient" method="post">
                            <input  type="hidden" name="numeroclient" value="<%=cl.getNumClient()  %>"/>
                            <input type="hidden" name="nom" value="<%=cl.getNom()  %>"/>
                            <input type="hidden" name="prenom" value="<%=cl.getPrenom()  %>"/>
                            <input type="hidden" name="cin" value="<%=cl.getCin()  %>"/>
                            <input type="hidden" name="email" value="<%=cl.getEmail()  %>"/>
                            <input type="hidden" name="adresse" value="<%=cl.getAdresse() %>"/>
                             <input type="hidden" name="pseudo" value="<%=cl.getPseudo()  %>"/>
                            <input type="hidden" name="tel" value="<%=cl.getTel() %>"/>
                            <input type="hidden" name="motdepasse" value="<%=cl.getMotDePasse() %>"/>
                           <input type='hidden' name="action" value="ModifierClient"/>
                           
                           
                            
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
        
        <div class="top">
        <form action="Commande" method="POST">
            
            <div class="ph">            
                        <div class="title"><%=p.getLibelle() %></div>
                        <div class="image"><img src="<%=request.getContextPath()%>/image<%=p.getLien()%>" alt="Image" width="200" height="200"/>
                        </div>
                        <div class="des">
                        <%=p.getReferenceProduit() %> 

                        <p class="pris"><%=p.getPrix() %>DH</p>
                        <%= db.NomPharmacie(p.getIdpharmacie())%><br>
                        <%=p.getDateFabrication() %><br>
                        <%=p.getDateExpiration() %><br>
                        <%=p.getTemperatureStock()%><br>
                        <input type="hidden" name="numeroProduit" value=<%=p.getNumeroProduit()%>>
                        
                        

                        </div>
                     </div>
                        
                        <h1><%=p.getLibelle() %></h1>
                        <p>Reference de Produit: <%=p.getReferenceProduit() %></p>
                        <p>Prix: <%=p.getPrix() %></p>
                        <p>Pharmacie: <%= db.NomPharmacie(p.getIdpharmacie())%></p>
                        <p>Date De Fabrication: <%=p.getDateFabrication() %></p>
                        <p>Date De Expiration: <%=p.getDateExpiration() %></p>
                        <p>Temperature de Stock: <%=p.getTemperatureStock()%>°</p>
                        
                
                
                
                
                        <p>quantite: </p><input height="30px" type="text" name="quantite" value=<%=p.getQuantite()%> class="txtb">
                
                        <input type="submit" value="Commander" class="signup-btn"></div>
        </form>
        </div>
        <div class="footer">
            <p>Copyright © 2019 IOSM.</p>
        </div>
    </body>
</html>
