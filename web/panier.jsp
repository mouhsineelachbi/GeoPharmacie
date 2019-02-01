<%@page import="GeoPharmacie.Client"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
        <link href="PgC.css" rel="stylesheet" media="all"/>
    </head>
    
    <body>
        
        <%
            String cin = new String();
            Cookie[] ck = request.getCookies();
            if(ck != null) {
                for (int i = 0; i < ck.length; i++) {
                    Cookie cookie = ck[i];
                    String name = cookie.getName();
                    String value = cookie.getValue();
                    if(name.equals("username")){
                        cin = value;
                        break;
                        }
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
        
                  
            
	<div class="l">
       <h1>Panier</h1>	
            
		
       <table border="">         
       <tr><th>QUANTITE</th><th>PRODUIT</th> <th>PRIX</th> </tr>
				
                                        <%
                                            
                                            LinkedList<Produit> pl = db.getClientProduit(cin);
                                            int numeroClient = db.getNumClient(cin);
                                            double sommePayement = 0;
                                            for(int i=0; i<pl.size(); i++){
                                                Produit p = pl.get(i);                                                
                                                int num = db.getNumClient(cin);
                                                int quantite = db.getQuantiteProduitClient(cin, p.getNumeroProduit());
                                                sommePayement += p.getPrix()* quantite;
                                                
                                        %>
        <tr><td><%=quantite%></td> <td><%=p.getLibelle()%></td> <td><%=p.getPrix()%> DH </td></tr>
					
                                        <%}%>
        <tr><td></td> <td>Total:</td> <td><%=sommePayement%> DH</td></tr> 
       </table><input type="submit" value="Commander" class="signup-btn">
					
				
			

		

		
		
		<!-- JavaScript includes -->

		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script> 
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/customjs.js"></script>
                
          </div>
        <div class="footer">
            <p>Copyright © 2019 IOSM.</p>
        </div>      
    </body>
</html>
