<%-- 
    Document   : AfficherDateFeriePharmacien
    Created on : 27 janv. 2019, 15:30:51
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.baseD"%>
<%@page import="GeoPharmacie.DateFerie"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>AfficherDateFerie</h1>
        
       
        <table border="">
            <tr>
                <td> LE JOUR DE FERIE</td>
               <td> L'HEURE DE DEBUT DU MATAIN </td> 
                <td> L'HEURE DE fin DU MATAIN </td> 
               <td> L'HEURE DE DEBUT DU SOIRE </td> 
                <td> L'HEURE DE fin DU SOIRE </td> 
                <th> MODIFIER</th>
            </tr>
             <%
            
            baseD op = new baseD();
            int idpharmacie;
                    idpharmacie =(Integer)request.getAttribute("idpharmacie");
             LinkedList<DateFerie> feries = op.AfficherDateFeries(idpharmacie);
             
                                System.out.println("hhhhh"+feries.size());
             for(DateFerie f: feries){
            
            %>
            <tr>
            <td> <%=f.getJourFerie() %></td>
               <td> <%=f.getHeureDM() %></td> 
                <td><%=f.getHeureFM() %> </td> 
               <td> <%=f.getHeureDS() %> </td> 
                <td> <%=f.getHeureFS() %></td> 
                <td> 
                    <form action="SModifierDateFD" method="post">
                        <input type="hidden" name="idDateFerie" value="<%=f.getIdDateFirie() %>"/>
                        <input type="hidden" name="idpharmacie" value="<%=idpharmacie%>"/>
                        <input type="hidden" name="jourferie" value="<%=f.getJourFerie()%>"/>
                        <input type="hidden" name="heureDM" value="<%=f.getHeureDM()%>"/>
                        <input type="hidden" name="heureFM" value="<%=f.getHeureFM()%>"/>
                        <input type="hidden" name="heureDS" value="<%=f.getHeureDS()%>"/>
                        <input type="hidden" name="heureFS" value="<%=f.getHeureFS()%>"/>
                        <input type="hidden" name="action" value="EnvSerModifierF"/>
                        <input type="submit" value="MODIFIER"/>
                    </form>
                </td>
              </tr>
              <% }
              
              %>
        </table>
              
                  
        
    </body>
</html>
