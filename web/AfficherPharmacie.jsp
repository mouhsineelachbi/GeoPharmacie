<%-- 
    Document   : AfficherPharmacie
    Created on : 15 déc. 2018, 21:51:48
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.Pharmacie"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
        
        <link href="style.css" rel="stylesheet" media="all"/>
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
        <div class="top">
        
        <h1> list de tous les pharmacies </h1>
        <%
            
            baseD op = new baseD();
            
            %>
            
                    <%
                                LinkedList<Pharmacie> Pharmacies = op.AfficherPharmacie();                                
                                System.out.println("hhhhh"+Pharmacies.size());
             for(Pharmacie p: Pharmacies){
                
                // n'est pas terminé
                %>
    
                
                
                <div class="ph">            
                    <div class="title"><%=p.getNomPharmacie() %></div>
                    <div class="image"><img src="<%=request.getContextPath()%>/image/<%=p.getLien()%>" alt="Image" width="200" height="200"/>
                    </div>
                    <div class="des">
                    <%=p.getAdresse()%> 
                
                    <%=p.getTele()%>
                <form action="ModifierPharmacien" method="post">
                    <input type="hidden" name="idpharmacie" value="<%=p.getIdPharmacie()%>"/>
                    <input type="hidden" name="action" value="affichageIndepondanteF"/>  
                    <input type="submit" value="DATE DE FERIE"> 
                </form>
                <form action="ModifierPharmacien" method="post">
                    <input type="hidden" name="idpharmacie" value="<%=p.getIdPharmacie()%>"/>
                    <input type="hidden" name="action" value="affichageIndepondante"/>  
                   <input type="submit" value="DATE DE GARDE"> 
                </form></div>
                </div>
               
            
                 <%
                    
            }
        
            %>
            
        </div>
        
        <div class="footer">
            <p>Copyright © 2019 IOSM.</p>
        </div>   
</body>
</html>
