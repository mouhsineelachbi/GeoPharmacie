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
        <title>JSP Page</title>
        <link href="newcss.css" rel="stylesheet" media="all"/>
    </head>
    <body>
        <div class="I">
         <form action="ModifierClient" method="post">
                    <h1>MoDiFiEr Mes Informations</h1>
            <%
                //recuperer l'abonner
                Client c=new Client();
                c =(Client)request.getAttribute("Client");
                
            %>
              <!--afficher dans le navigateur l'abonnee a modifier-->
              <input type="hidden" name="numeroclient" value="<%=c.getNumClient() %>" class="txtb">
              <input type="text" name="nom" value="<%=c.getNom() %>" class="txtb">
              <input type="text" name="prenom"value="<%=c.getPrenom()%>" class="txtb">
              <input type="text" name="cin"value="<%=c.getCin() %>" class="txtb">
              <input type="text" name="email"value="<%=c.getEmail() %>" class="txtb">   
              <input type="text" name="tel"value="<%=c.getTel() %>" class="txtb">
              <input type="text" name="adresse"value="<%=c.getAdresse() %>" class="txtb">
              <input type="text" name="pseudo" value="<%=c.getPseudo() %>" class="txtb">
              <input type="text" name="motdepasse" value="<%=c.getMotDePasse() %>" class="txtb">
                                
              <input type='hidden' name="action" value="modifier">
              <input type="submit" value="Enregister" class="signup-btn">
                
         </form>
                               
               
        
        </div>
    </body>
</html>
