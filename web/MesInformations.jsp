<%-- 
    Document   : MesInformations
    Created on : 26 déc. 2018, 21:56:23
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.baseD"%>
<%@page import="GeoPharmacie.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
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
</style>
    <body>
  <!-- -->
    <%
             System.out.println("hna  instatitiation du bd");
            baseD op = new baseD();
            
            %>
        <%
                                
                //recuperer le client
                Client cl=new Client();
                cl =(Client)request.getAttribute("Client");
                System.out.println("hna kanrecupiriw l objet client99999999999999999999999999999999999999"+cl.getPrenom());
           
                                cl= op.informationsClient(cl.getCin());                                
                                
            
                //faux
                
                %>
         
    <%
        int i;
        Cookie[] k=request.getCookies() ;
        for(i=0;i<k.length;i++){
            System.out.println(k[i].getValue());
        }
    
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
            <c:if test="${!empty sessionScope.cin && !empty sessionScope.password}">
                        <h1> Bienvenue <br>${sessionScope.nom} ${sessionScope.prenom}
                <!-- Bienvenue<%=cl.getNom()%>  <%=cl.getPrenom()%>--><br>
                            Ici, vous trouverez tout <br>
                            pour vous aider à trouver<br> 
                            vos médicaments dans <br>
                            la pharmacie la plus proche.
                        </h1>
                    </c:if>  
        </div>
        <div class="footer">
            <p>Copyright © 2019 IOSM.</p>
        </div>
    </body>
</html>
