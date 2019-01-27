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
    <%
             System.out.println("hna  instatitiation du bd");
            baseD op = new baseD();
            
            %>
        <%
                                
                //recuperer le client
                Client cl=new Client();
                cl =(Client)request.getAttribute("Client");
                System.out.println("hna kanrecupiriw l objet client99999999999999999999999999999999999999"+cl.getPrenom());
           
                                cl= op.informationsClient(cl.getCin());                                
                                
            
                //faux
                
                %>
         <c:if test="${!empty sessionScope.cin && !empty sessionScope.password}">
                <p>Bienvenue ${sessionScope.nom} ${sessionScope.prenom}
                <!-- Bon Journéé Mr. <%=cl.getNom()%>  <%=cl.getPrenom()%>-->
             </p>
         </c:if>
    <%
        int i;
        Cookie[] k=request.getCookies() ;
        for(i=0;i<k.length;i++){
            System.out.println(k[i].getValue());
        }
    
    %>
    
        
        
        <table border="" background="aqua">
               
                <tr>
                    
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Email</th>
                    <th>Cin</th>
                    <th> Adresse</th>
                    <th> Pseudo</th>
                    <th> Tel</th>
                    
                    
 
                   
                </tr> 
                            
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
                     <form action="ModifierClient" method="post">
                            <input type="hidden" name="numeroclient" value="<%=cl.getNumClient()  %>"/>
                            <input type="hidden" name="nom" value="<%=cl.getNom()  %>"/>
                            <input type="hidden" name="prenom" value="<%=cl.getPrenom()  %>"/>
                            <input type="hidden" name="cin" value="<%=cl.getCin()  %>"/>
                            <input type="hidden" name="email" value="<%=cl.getEmail()  %>"/>
                            <input type="hidden" name="adresse" value="<%=cl.getAdresse() %>"/>
                             <input type="hidden" name="pseudo" value="<%=cl.getPseudo()  %>"/>
                            <input type="hidden" name="tel" value="<%=cl.getTel() %>"/>
                            <input type="hidden" name="motdepasse" value="<%=cl.getMotDePasse() %>"/>
                           <input type='hidden' name="action" value="ModifierClient"/>
                           
                           
                            
                             <input type="submit" value="Modifier les informations"/>
                             
                        </form>
                            <form action="ModifierPharmacien" method="post">
                                   <input type="hidden" name="action" value="deconnecter"/>
                                    <input type="submit" value="Déconnecter"/>

                               </form>
                            <b style="color: green;">
                                
        <%
                String message=(String)request.getAttribute("message");
                if(message !=null)
                {
                   out.print(message);
                }
            
        %>
        </b>
        
        <a href="AfficherPharmacie.jsp">LISTER TOUT LES PHARMACIES</a>   
    </body>
</html>
