<%-- 
    Document   : AfficherProduits
    Created on : 15 déc. 2018, 19:37:16
    Author     : Hamza
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="GeoPharmacie.Produit"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
        <link href="style.css" rel="stylesheet" media="all"/>
        <style>
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
         <nav class="menu">
                    <a><img src="bg3.png" alt=""/></a>
                    <ul>
                        <li><a href="http://localhost:8080/GeoPharmacieweb/PageClient.jsp?">Accueil</a></li>
                    <li><a href="AfficherPharmacie.jsp" >Pharmacies</a></li>
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
        
        <div class="top">
            <h1> list de tous les Produits </h1>
            <%
            
            baseD op = new baseD();
            
            %>
                    
            
                    <%

                                   LinkedList<Produit> produits = op.AfficherProduit();                                
                                    System.out.println("hhhhh-----------request.getContextPath()"+request.getContextPath());

                for(Produit p :produits){

                    // n'est pas terminé
                    %>

                     <div class="ph">            
                        <div class="title"><%=p.getLibelle() %></div>
                        <div class="image"><img src="<%=request.getContextPath()%>/image<%=p.getLien()%>" alt="Image" border-radius="50%" width="200" height="200"/>
                        </div>
                        <div class="des">
                        <%=p.getReferenceProduit() %> 

                        <p class="pris"><%=p.getPrix() %>DH</p>
                        <%= op.NomPharmacie(p.getIdpharmacie())%><br>
                        <%=p.getDateExpiration() %><br>
                        <%=p.getDateFabrication() %>
                        

                        </div>
                     </div>

                     <%

                }

                %>
                
                
               <!-- <input type="" name="" value="<%=1%>"/>
                <input type="" name="action" value=""/>
               <input type="submit"  value="RETOURE AU PAGE PRINCIPALE"/>-->
                
                
            </div>
        <div class="footer">
            <p>Copyright © 2019 IOSM.</p>
        </div>
        
    
    </body>
</html>
