<%-- 
    Document   : ModifierPharmacie
    Created on : 22 janv. 2019, 20:59:23
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.Pharmacie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ModifierPharmacie</title>
    </head>
    <body>
        
         <table border="">
                <form action="SModifierPharmacie" method="post">
            <%
                //recuperer le pharmacie
               Pharmacie c=new Pharmacie();
                c =(Pharmacie)request.getAttribute("Pharmacie");
                System.out.println("****************************************************nomphar = "+c.getNomPharmacie()+"******************ccccccccccccccc");
            %>
             
              
              
              
                                <input type="hidden" name="idpharmacie" value="<%=c.getIdPharmacie() %>"/>
                                <tr><td>Nom:       </th>         <td><input type="text" name="nomPharmacie" value="<%=c.getNomPharmacie()%>" /></td></tr>
                                <tr> <td>TEL:      </td>         <td> <input type="text" name="tel"value="<%=c.getTele()%>" /> </td> </tr>
                                <tr> <td>ADRESSE : </td>         <td> <input type="text" name="adresse"value="<%=c.getAdresse() %>" /> </td> </tr>
                                <tr>  <td></td>
                                    <td>
                                       
                                        <input type="hidden" name="action" value="modifier"/>
                                        <input type="submit" value="Enregister" />
                                    </td>
                                </tr>
                           
                        </form>
        
        
        
        
        
    </body>
</html>
