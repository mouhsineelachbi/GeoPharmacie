<%-- 
    Document   : ModifierFerie
    Created on : 27 janv. 2019, 16:01:55
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.DateFerie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="SModifierDateFD" method="post">
        <table border="">
            <%
                DateFerie d=new DateFerie();
                d =(DateFerie)request.getAttribute("ferie");
                System.out.println("+++++++++++++++++++++++++++++++++++++++++++++++"+d.getIdDateFirie());
            %>
            <input type="hidden" name="idDateFerie" value="<%=d.getIdDateFirie() %>"/>
            <tr>
                <td> LE JOUR DE FERIE</td>
                <td><input name="jourferie" type="date" value="<%=d.getJourFerie() %>"> </td>
            </tr>
           <tr>
               <td> L'HEURE DE DEBUT DU MATAIN :</td> <td><input name="heureDM" type="time" value="<%=d.getHeureDM() %>"> </td>
            </tr>
            
            <tr>
                <td> L'HEURE DE fin DU MATAIN :</td> <td><input name="heureFM" type="time" value="<%=d.getHeureFM() %>"/> </td>
            </tr>
            <tr>
               <td> L'HEURE DE DEBUT DU SOIRE :</td> <td><input name="heureDS" type="time" value="<%=d.getHeureDS() %>"/> </td>
            </tr>
            
            <tr>
                <td> L'HEURE DE fin DU SOIRE :</td> <td><input name="heureFS" type="time" value="<%=d.getHeureFS() %>"/> </td>
            </tr>
             <tr>
                 
                 <input type="hidden" name="idpharmacie" value="<%=d.getIdPharmacie() %>"/>
                 <td> ID DE LA PHARMACIE :</td> <td><input name="idpharmacie" type="number" disabled="disabled" value="<%=d.getIdPharmacie() %>"/> </td>
            </tr>
            <tr>  
                <td>
                  <input type="hidden" name="action" value="ModifierDateFerie"/>                      
                </td> 
                <td>
                    <input type="submit" value="Enregister" />                        
                </td>
            </tr>
            
        </table>
        </form>
    </body>
</html>
