<%-- 
    Document   : PageClient
    Created on : 22 janv. 2019, 23:30:58
    Author     : abdel
--%>

<%@page import="GeoPharmacie.Pharmacie"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Geopharmacie </title>
        <link href="style.css" rel="stylesheet" media="all"/>
        <link href="newcss.css" rel="stylesheet" media="all"/>
        <link href="AF.css" rel="stylesheet" media="all"/>
    </head>
    <body>
        
            <nav class="menu">
            <a><img src="bg3.png" alt=""/></a>
            <ul>
                <li><a href="http://localhost:8080/GeoPharmacieweb/PageClient.jsp?">Accueil</a></li>
            <li><a href="http://localhost:8080/GeoPharmacieweb/AfficherPharmacie.jsp" >Pharmacies</a></li>
            <li><a>Produits</a></li>
            <li><a>à propos de nous</a>
            <ul>
                <li><a href="http://localhost:8080/GeoPharmacieweb/notre%20%C3%A9quipe.jsp" >notre équipe</a></li>
                
                <li><a>Ressources</a></li>
            </ul>
            </li>
            </ul>
            <form action="SRechercheProduit" method="post" class="search-form">
                <input name="libelle" type="text"/> 
                
               <input type="hidden" name="action" value="rechercher"/>
               <input type="submit" value="Rechercher" class="RP">
            </form>
            </nav>
        
        
    
        <div class="r">
        
        <div class="A">
        <form action="AfficherPharmacie">
            <h1>Pharmacies</h1>
        <%
            
            baseD op = new baseD();
            
            %>
                <input align="right" disabled="disabled"  value="NOM PHARMACIE" class="txta">
                
                <input disabled="disabled"  value="ADRESSE" class="txta">
                
                <input align="left" disabled="disabled"  value="TEL" class="txta">
                
                    <%
                                LinkedList<Pharmacie> Pharmacies = op.AfficherPharmacie();                                
                                System.out.println("hhhhh"+Pharmacies.size());
             for(Pharmacie p: Pharmacies){
                
                // n'est pas terminé
                %>
                <br>
                <input  disabled="disabled"  value="<%=p.getNomPharmacie() %>" class="txtb">
                
                <input disabled="disabled"  value="<%=p.getAdresse()%>" class="txtb">
                
                <input  disabled="disabled"  value="<%=p.getTele()%>" class="txtb">
                
                 
                 <%
                    
            }
        
            %>
            
           
        </form>
        </div>
        
        </div>
        <div class="l"><div class="I" >
        <form action="login" method="POST">
            <h1>se connecter</h1>
            <input type="text" name="cin" placeholder="Nom d'utilisateur" class="txtb">
            <input type="password" name="password" placeholder="mot de passe" class="txtb">
            <div class="b">
                 <p><centet>Type</centet></p>
                    <label>
                     <input type="radio" name="type" value="client" checked="checked" value="client" id="ssc" onclick="test1()">
                     <span class="client">Client</span>
                    </label>
                    <label>
                     <input type="radio" name="type" value="pharmacie" id="ssp" onclick="test()" >
                     <span  class="Pharmacien">Pharmacien</span>
                    </label>
        </div>
            <div id="toc"></div>
          <script type="text/javascript">
        function test() {
            if(document.getElementById('ssp').checked) {
                document.getElementById('toc').innerHTML = 'Vous étes un pharmacien ? <br> si oui velliez continu';
               // var test =  setTimeout(function(){document.getElementById('imgPatienter').style.display = "none";document.getElementById('animFlash').style.display = "block";},5000);
            }
        }
        function test1() {
            if(document.getElementById('ssc').checked) {
                document.getElementById('toc').innerHTML = 'Vous étes un client ? <br> si oui velliez continu';
               // var test =  setTimeout(function(){document.getElementById('imgPatienter').style.display = "none";document.getElementById('animFlash').style.display = "block";},5000);
            }
        }
          </script>
            <input type="submit" value="connecter" class="signup-btn">
            <a href="http://localhost:8080/GeoPharmacieweb/IncriptionClient.jsp">Pas encore inscrit</a>
        </form> <b style="color: red;">
        <%
            String message=(String)request.getAttribute("message");
            if(message !=null){
               out.print(message);
            }
            
        %>
        </b></div></div>
        
        <div class="footer">
            <p>Copyright © 2019 IOSM.</p>
        </div>
        
    
        
    </body>
</html>
