<%-- 
    Document   : AfficherDateGardePharmacien
    Created on : 27 janv. 2019, 15:31:28
    Author     : Hamza
--%>

<%@page import="java.util.List"%>
<%@page import="GeoPharmacie.DateFerie"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.DateGarde"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AfficherDateGarde</title>
    </head>
    <body>
        <h1>AfficherDateGARDE</h1>
        
       
        <table border="">
            <tr>
                <td> LE JOUR DE GARDE</td>
               <td> L'HEURE DE DEBUT DU MATAIN </td> 
                <td> L'HEURE DE fin DU MATAIN </td> 
               <td> L'HEURE DE DEBUT DU SOIRE </td> 
                <td> L'HEURE DE fin DU SOIRE </td> 
                <th> MODIFIER</th>
            </tr>
             <%
            
            baseD op = new baseD();
             List <Integer> list=new LinkedList();
            list =(List)request.getAttribute("list");
           int idpharmacie=list.get(0);
           int idpharmaciePharmacien=list.get(1);
                
            LinkedList<DateGarde> gardes = op.AfficherDateGarde(idpharmacie);
            DateGarde d=new DateGarde();
            d =(DateGarde)request.getAttribute("garde");
                                
             for(DateGarde f: gardes){
            
            %>
            <tr>
            <td> <%=f.getJourGarde()%></td>
               <td> <%=f.getHeureDM() %></td> 
                <td><%=f.getHeureFM() %> </td> 
               <td> <%=f.getHeureDS() %> </td> 
                <td> <%=f.getHeureFS() %></td> 
                <td> 
                 <form action="SModifierDateFD" method="post">
                        <input type="hidden" name="idpharmaciePharmacien" value="<%=idpharmaciePharmacien %>"/>
                        <input type="hidden" name="idDateGarde" value="<%=f.getIdDateGarde() %>"/>
                        <input type="hidden" name="idpharmacie" value="<%=f.getIdPharmacie() %>"/>
                        <input type="hidden" name="jourgarde" value="<%=f.getJourGarde() %>"/>
                        <input type="hidden" name="heureDM" value="<%=f.getHeureDM()%>"/>
                        <input type="hidden" name="heureFM" value="<%=f.getHeureFM()%>"/>
                        <input type="hidden" name="heureDS" value="<%=f.getHeureDS()%>"/>
                        <input type="hidden" name="heureFS" value="<%=f.getHeureFS()%>"/>
                        <input type="hidden" name="action" value="EnvSerModifierG"/>
                        <input type="submit" value="MODIFIER"/>
                    </form></td>
              </tr>
              <% }
              
              %>
        </table>
              
                  
    </body>
</html>
