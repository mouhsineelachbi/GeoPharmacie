<%-- 
    Document   : MesInformationsPharmacien
    Created on : 21 janv. 2019, 22:19:14
    Author     : Hamza
--%>

<%@page import="GeoPharmacie.baseD"%>
<%@page import="GeoPharmacie.Pharmacien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INFORMATIONPHARMACIEN</title>
    </head>
    <body>
        <%
             //recupier depuis Slogin
            baseD op = new baseD();
            Pharmacien cl=new Pharmacien();
            cl =(Pharmacien)request.getAttribute("Pharmacien");
              
                              // cl= op.selectPharmacien(cl.getCin()); 
                //recuperer le client
           
                %>
         <c:if test="${!empty sessionScope.cin && !empty sessionScope.password}">
                <p>  Bon Journéé Mr.${sessionScope.nom} ${sessionScope.prenom}
                <!-- Bienvenue<%=cl.getNom()%>  <%=cl.getPrenom()%>-->
             </p>
         </c:if>
   
    
        
        
        <table border="" background="aqua">
               
                <tr>
                    
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Email</th>
                    <th>Cin</th>
                    <th> Adresse</th>
                    <th> Pseudo</th>
                    <th> Tel</th>
                    <th>Identifiant de la Pharmacie</th>
                    
 
                   
                </tr> 
                            
                <tr>
                    <td><%=cl.getNom() %></td>
                    <td><%=cl.getPrenom() %></td>
                    <td><%=cl.getEmail() %></td>
                    <td><%=cl.getCin() %></td>
                    <td> <%=cl.getAdresse() %></td>
                    <td> <%=cl.getPseudo()%></td>
                    <td> <%=cl.getTel()%></td>
                    <td><%=cl.getIdPharmacie() %></td>
                    
                </tr>
        </table>
                     <form action="ModifierPharmacien" method="post">
                            <input type="hidden" name="numeroPharmacien" value="<%=cl.getNumeroPharmacien()%>"/>
                            <input type="hidden" name="nom" value="<%=cl.getNom()  %>"/>
                            <input type="hidden" name="prenom" value="<%=cl.getPrenom()  %>"/>
                            <input type="hidden" name="cin" value="<%=cl.getCin()  %>"/>
                            <input type="hidden" name="email" value="<%=cl.getEmail()  %>"/>
                            <input type="hidden" name="adresse" value="<%=cl.getAdresse() %>"/>
                             <input type="hidden" name="pseudo" value="<%=cl.getPseudo()  %>"/>
                            <input type="hidden" name="tele" value="<%=cl.getTel() %>"/>
                            <input type="hidden" name="motdepasse" value="<%=cl.getMotDePasse() %>"/>
                            <input type="hidden" name="idpharmacie" value="<%=cl.getIdPharmacie() %>"/>
                           <input type='hidden' name="action" value="ModifierPharmacien"/>
                             <input type="submit" value="Modifier les informations"/>
                                       
        </form>
                           <form action="AjouterPharmacie" method="post">
                               <input type="hidden" name="idPharmacie" value="<%=cl.getIdPharmacie() %>"/>
                               <input type="submit" value="Afficher les Informations de la pharmacie"/>
                               <input type='hidden' name="action" value="Afficher"/>
                           </form>          
           <!-- </c:if>-->         
    </body>
</html>
