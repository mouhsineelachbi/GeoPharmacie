<%-- 
    Document   : AfficherDateFeriePharmacien
    Created on : 27 janv. 2019, 15:30:51
    Author     : Hamza
--%>

<%@page import="java.util.List"%>
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
            //int t[]=new int[2];
           // for(int i=0;i<2;i++)        
           
           List <Integer> list=new LinkedList();
            list =(List)request.getAttribute("list");
           int idpharmacie=list.get(0);
           int idpharmaciePharmacien=list.get(1);
            LinkedList<DateFerie> feries = op.AfficherDateFeries(idpharmacie);
             System.out.println("++++++++++++++afficherDateFeriePharmacien-------------"+idpharmacie);
                                
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
                        <input type="hidden" name="idpharmaciePharmacien" value="<%=idpharmaciePharmacien %>"/>
                        <input type="hidden" name="idDateFerie" value="<%=f.getIdDateFirie() %>"/>
                        <input type="hidden" name="idpharmacie" value="<%=f.getIdPharmacie() %>"/>
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
