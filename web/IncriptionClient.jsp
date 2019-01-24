<%-- 
    Document   : IncriptionClient
    Created on : 14 déc. 2018, 22:48:08
    Author     : Hamza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="IC.css" rel="stylesheet" media="all"/>
        
    </head>
    <body>
        <div class="K">
        
        <form action="inscription" method="post">
            
            <h1>Inscription</h1>
            
                <input name="nom" type="text" placeholder="nom" class="txtb"> <input name="prenom" type="text" placeholder="prenom" class="txtb">
                <input name="cin" type="text" placeholder="cin" class="txtb">
                <input name="tel" type="tel" placeholder="tel" class="txtb">
                <input name="email" type="email" placeholder="email" class="txtb">
                <input name="adresse" type="text" placeholder="adresse" class="txtb">
                <input name="pseudo" type="text" placeholder="pseudo" class="txtb">
                <input name="motdepasse" type="password"  placeholder="motdepasse" class="txtb">
                <div class="b">
                  <p><centet>TYPE :</centet></p>
                        <label>
                            <select name="type" id="list">
                                        <option value="Client">Client</option>
                                        <option value="Pharmacien">Pharmacien</option> 
                            </select>
                        </label>
                </div>
                <div id="5">
                <input id="4"  name="idPharmacie" placeholder="idPharmacie" class="txtb">
                <input type='hidden' name="action" value="ajouter">
                </div>
                <input type="submit" value="Enregister" class="signup-btn" />
                <a href="http://localhost:8080/GeoPharmacieweb/PageClient.jsp?">déjà inscrit</a>
                                       
        </div>
        <div class="X">
             <a><img src="bg3.png" alt=""/></a>
            <h1>Giopharmacie vous aide à trouver votre médecin plus rapidement et à l'endroit le plus proche.</h1>
        </div>
                
               
                       <script>
                           
                           document.getElementById('4').style.visibility = 'hidden';
                                var list = document.getElementById('list'); 
                                list.addEventListener('change', function() {
                                // On affiche le contenu de l'élément <option> ciblé par la propriété selectedIndex
                                if(list.options[list.selectedIndex].innerHTML=='Pharmacien'){
                                    
                                    document.getElementById('4').style.visibility = 'visible';
                                    document.getElementById('5').style.visibility = 'visible';
                                    document.getElementById('idPharmacie').type = 'text';
                                    document.getElementById('id2').type = 'number';
                                }
                                else{
                                     
                                    document.getElementById('4').style.visibility = 'hidden';
                                    document.getElementById('5').style.visibility = 'hidden';
                                    
                                }
                                    
                                //alert(list.options[list.selectedIndex].innerHTML);
                                }, true);
                       </script>
        
            
        </form>
        </div>
    </body>
</html>
