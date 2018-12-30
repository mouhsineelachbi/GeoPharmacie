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
    </head>
    <body>
  <!-- -->
        
         <c:if test="${!empty sessionScope.cin && !empty sessionScope.password}">
                <p>  Bon Journéé Mr.${sessionScope.nom} ${sessionScope.prenom}</p>
         </c:if>
    <%
        int i;
        Cookie[] k=request.getCookies() ;
        for(i=0;i<k.length;i++){
            System.out.println(k[i].getValue());
        }
    
    %>
    
        <form action="inscription" method="post">
        <input type="hidden" name="action" value="info"/>
        <table border="" background="aqua">
                 <%
             System.out.println("hna  instatitiation du bd");
            baseD op = new baseD();
            
            %>
                <tr>
                    
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Email</th>
                    <th>Cin</th>
                    <th> Adresse</th>
                    <th> Pseudo</th>
                    <th> Tel</th>
                    
                    
 
                   
                </tr> 
                            <%
                                
                //recuperer le client
                Client cl=new Client();
                cl =(Client)request.getAttribute("Client");
                System.out.println("hna kanrecupiriw l objet client99999999999999999999999999999999999999"+cl.getPrenom());
           
                                cl= op.informationsClient(cl.getCin());                                
                                
            
                //faux
                
                %>
                <tr>
                    <td><%=cl.getNom() %></td>
                    <td><%=cl.getPrenom() %></td>
                    <td><%=cl.getEmail() %></td>
                    <td><%=cl.getCin() %></td>
                    <td> <%=cl.getAdresse() %></td>
                    <td> <%=cl.getPseudo()%></td>
                    <td> <%=cl.getTel()%></td>
                    
                </tr>
        </table>
        </form>
           <!-- </c:if>-->         
    </body>
</html>
