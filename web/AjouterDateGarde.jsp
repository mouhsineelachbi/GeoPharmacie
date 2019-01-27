<%-- 
    Document   : AjouterDateGarde
    Created on : 27 janv. 2019, 04:32:32
    Author     : Hamza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>AjouterDateGarde!</h1>
        <form action="ModifierPharmacien" method="post">
        <table border="">
            <tr>
                <td> LE JOUR DE GARDE</td>
                <td><input name="jourgarde" type="date"/> </td>
            </tr>
           <tr>
               <td> L'HEURE DE DEBUT DU MATAIN :</td> <td><input name="heureDM" type="time"/> </td>
            </tr>
            
            <tr>
                <td> L'HEURE DE fin DU MATAIN :</td> <td><input name="heureFM" type="time"/> </td>
            </tr>
            <tr>
               <td> L'HEURE DE DEBUT DU SOIRE :</td> <td><input name="heureDS" type="time"/> </td>
            </tr>
            
            <tr>
                <td> L'HEURE DE fin DU SOIRE :</td> <td><input name="heureFS" type="time"/> </td>
            </tr>
             <tr>
                 <%
                     int idpharmacie;
                    idpharmacie =(Integer)request.getAttribute("idpharmacie");
                 %>
                 <input type="hidden" name="idpharmacie" value="<%=idpharmacie%>"/>
                 <td> ID DE LA PHARMACIE :</td> <td><input name="idpharmacie" type="number" disabled="disabled" value="<%=idpharmacie%>"/> </td>
            </tr>
            <tr>  
                <td>
                  <input type="hidden" name="action" value="AjouterDateGarde"/>                      
                </td> 
                <td>
                    <input type="submit" value="Enregister" />                        
                </td>
            </tr>
            
        </table>
        </form>
    </body>
</html>
