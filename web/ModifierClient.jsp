<%-- 
    Document   : ModifierClient
    Created on : 26 déc. 2018, 20:20:55
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>MoDiFiEr Mes Informations</h1>
        
        <table border="">
                <form action="ModifierClient" method="post">
            <%
                //recuperer l'abonner
                Client c=new Client();
                c =(Client)request.getAttribute("Client");
                System.out.println("hna kanrecupiriw l objet modifier abonnee"+c.getPrenom());
            %>
              <!--afficher dans le navigateur l'abonnee a modifier-->
              
              
              
                                <input type="hidden" name="numeroclient" value="<%=c.getNumClient() %>"/>
                                <tr><td>Nom: </th><td><input type="text" name="nom" value="<%=c.getNom() %>" /></td></tr>
                                <tr>   <td>PRENOM: </td><td><input type="text" name="prenom"value="<%=c.getPrenom()%>" /></td></tr>
                                <tr> <td> CIN:</td> <td> <input type="text" name="cin"value="<%=c.getCin() %>" /> </td> </tr>
                                <tr> <td> EMAIL:</td> <td> <input type="text" name="email"value="<%=c.getEmail() %>" /> </td> </tr>        
                                <tr> <td> TEL:</td> <td> <input type="text" name="tel"value="<%=c.getTel() %>" /> </td> </tr>
                                <tr> <td> ADRESSE : </td> <td> <input type="text" name="adresse"value="<%=c.getAdresse() %>" /> </td> </tr>
                                 <tr><td>PSEUDO : </th><td><input type="text" name="pseudo" value="<%=c.getPseudo() %>" /></td></tr>
                                 <tr><td>MOT DE PASSE : </th><td><input type="text" name="motdepasse" value="<%=c.getMotDePasse() %>" /></td></tr>
                                <tr>  <td></td>
                                    <td>
                                       
                                        <input type='hidden' name="action" value="modifier"/>
                                        <input type="submit" value="Enregister" />
                                    </td>
                                </tr>
                           
                        </form>
        
         </table>
    </body>
</html>
