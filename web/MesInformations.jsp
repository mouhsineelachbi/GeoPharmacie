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
        <title>Mes InfoRmations</title>
        <link href="newcss.css" rel="stylesheet" media="all"/>
    </head>
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
    
      <div class="I">
         <form action="ModifierClient" method="post">
                    <c:if test="${!empty sessionScope.cin && !empty sessionScope.password}">
             <h1>  Bon Journéé Mr.${sessionScope.nom} ${sessionScope.prenom}</h1>
                <!-- Bienvenue<%=cl.getNom()%>  <%=cl.getPrenom()%>-->
            
                    </c:if>  
        
              
              <input  name="nom" value="<%=cl.getNom()  %>" class="txtb">
              <input  name="prenom" value="<%=cl.getPrenom()  %>" class="txtb">
              <input  name="email" value="<%=cl.getEmail() %>" class="txtb">
              <input  name="cin" value="<%=cl.getCin() %>" class="txtb">
              <input  name="adresse" value="<%=cl.getAdresse() %>" class="txtb">
              <input  name="pseudo" value="<%=cl.getPseudo()%>" class="txtb">
              <input  name="tel" value="<%=cl.getTel()%>" class="txtb">
              
              
        
        
                     <form action="ModifierClient" method="post">
                            <input type="hidden" name="numeroclient" value="<%=cl.getNumClient()  %>"/>
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
           <!-- </c:if>-->  
      </div>
    </body>
</html>
