<%-- 
    Document   : AjouterPharmacie
    Created on : 26 déc. 2018, 16:57:46
    Author     : Hamza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter une pharmacie</title>
    </head>
    <body>
        <%
             int numeroPharmacien =(Integer)request.getAttribute("numeroPharmacien");
        %>
        <h1>Ajouter une pharmacie</h1>
            <form action="AjouterPharmacie" method="post">
        <table border="">
            <tr>
                <td> NOM DU PHARMACIE:</td>
                <td><input name="nomPharmacie" type="text"/> </td>
            </tr>
           <tr>
                <td> ADRESSE :</td> <td><input name="adresse" type="text"/> </td>
            </tr>
            
            <tr>
                <td> TEL :</td> <td><input name="tel" type="tel"/> </td>
            </tr>
             
            
            <tr>  
                <td>
                  <input type='hidden' name="action" value="ajouterPhar"/>
                  <input type='hidden' name="numeroPharmacien" value="<%=numeroPharmacien%>"/>
                </td> 
                <td>
                    <input type="submit" value="Enregister" />                        
                </td>
            </tr>
            
            
        </table>
        </form>
       
                
         
    </body>
</html>
