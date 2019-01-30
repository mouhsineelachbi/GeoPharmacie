<%-- 
    Document   : MesInformationsPharmacien
    Created on : 21 janv. 2019, 22:19:14
    Author     : Hamza
--%>

<%@page import="javax.faces.bean.SessionScoped"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page import="GeoPharmacie.Pharmacien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="pragma" content="no-cache" />
        <meta http-equiv="cache-control" content="no-cache" />
        <meta http-equiv="expires" content="0" />
        <title>INFORMATIONPHARMACIEN</title>
    </head>
    <body>
        
            <%
                String cin;
                Cookie ck[] = request.getCookies();
                for (int i = 0; i < ck.length; i++) {
                    String name = ck[i].getName();
                    String value = ck[i].getValue();
                    if(name.equals("cin")) {cin = name; break;}
                }
            %>
        
        <%
             //recupier depuis Slogin
            baseD op = new baseD();
            Pharmacien cl=new Pharmacien();
            cl =(Pharmacien)request.getAttribute("Pharmacien");
              
                              // cl= op.selectPharmacien(cl.getCin()); 
                //recuperer le client
           
                     //   request.getSession(true);
                     //  if(session.isNew()){
          //  Cookie ck[]= request.getCookies();
               //         for(int i=0;i<ck.length;i++){
                           
                            
                       
                    //    ck[i].setValue("");
                   //     }
                
           //}
                %>
         <c:if test="${!empty sessionScope.cin && !empty sessionScope.password}">
                <p>  Bienvenue ${sessionScope.nom} ${sessionScope.prenom}
                <!-- Bon Journéé Mr.<%=cl.getNom()%>  <%=cl.getPrenom()%>-->
                   
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
                           <input type="hidden" name="action" value="ModifierPharmacien"/>
                             <input type="submit" value="Modifier les informations"/>
                                       
        </form>
                           
                           
                         <!-- //**********ici modification a faire**********<a href="AjouterPharmacie.jsp">AJOUTER VOTRE PHARMACIE</a>   -->
                         
                          <form action="AjouterPharmacie" method="post">
                               <input type="hidden" name="numeroPharmacien" value="<%=cl.getNumeroPharmacien()%>"/>
                               <input type="submit" value="AJOUTER VOTRE PHARMACIE"/>
                               <input type='hidden' name="action" value="ajouterCien"/>
                           </form>  
                           
                           <form action="AjouterPharmacie" method="post">
                               <input type="hidden" name="idPharmacie" value="<%=cl.getIdPharmacie() %>"/>
                               <input type="submit" value="Afficher les Informations de la pharmacie"/>
                               <input type='hidden' name="action" value="Afficher"/>
                           </form>      
                            <form action="ModifierPharmacien" method="post">
                                  <input type="hidden" name="idpharmacie" value="<%=cl.getIdPharmacie() %>"/> 
                                  <input type="hidden" name="action" value="dateferie"/>
                                  <input type="submit" value="Ajouter une date Ferie"/>
                                       
                            </form>
                            <form action="ModifierPharmacien" method="post">
                                  <input type="hidden" name="idpharmacie" value="<%=cl.getIdPharmacie() %>"/> 
                                  <input type="hidden" name="action" value="dategarde"/>
                                  <input type="submit" value="Ajouter une date de garde"/>
                                       
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
            
%>  <br>
     <form action="ModifierPharmacien" method="post">
        <input type="submit" value="LISTER TOUT LES PHARMACIES"/>
        <input type="hidden" name="idpharmaciePharmacien" value="<%=cl.getIdPharmacie() %>"/> 
        <input type="hidden" name="action" value="IDPHARMACIEN"/>
        </form>

      <!--  <a href="AfficherPharmaciePharmacien.jsp">LISTER TOUT LES PHARMACIES </a> 
        -->
        </form>
    </body>
</html>
