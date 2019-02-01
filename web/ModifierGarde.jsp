<%-- 
    Document   : ModifierGarde
    Created on : 27 janv. 2019, 23:36:52
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.DateGarde"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
    </head>
    <body>
        <form action="SModifierDateFD" method="post">
        <table border="">
            <%
                
                DateGarde d=new DateGarde();
                d =(DateGarde)request.getAttribute("garde");
                System.out.println("+++++++++++++++++++++++++++++++++++++++++++++++"+d.getIdPharmacie());
            %>
            <input type="hidden" name="idDateGarde" value="<%=d.getIdDateGarde() %>"/>
            <tr>
                <td> LE JOUR DE FERIE</td>
                <td><input name="jourgarde" type="date" value="<%=d.getJourGarde() %>"> </td>
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
                  <input type="hidden" name="action" value="ModifierDateGarde"/>                      
                </td> 
                <td>
                    <input type="submit" value="Enregister" />                        
                </td>
            </tr>
            
        </table>
        </form>
    </body>
</html>
