<%-- 
    Document   : uploadProduit
    Created on : 29 janv. 2019, 21:54:56
    Author     : Hamza
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Geophar</title>
        <link href="style.css" rel="stylesheet" media="all"/>
        <style>       
.upl[type=submit] {
  background-color: #53a0e8;
  color: white;
  height: 42px;
  
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
}

.upl[type=submit]:hover {
  background-color: #487eb0;
}</style>
    </head>
    <body>
        <div class="top">
        <% int idPharmacie=0;
                    Cookie [] idpharmaci=request.getCookies();
                               for(int i=0;i<idpharmaci.length;i++)
                               {
                                   if((idpharmaci[i].getName()).equals("idPharmacie") ){
                                       idPharmacie=Integer.parseInt(idpharmaci[i].getValue());
                                   }
                               }%>
                               
                    <form action="uploadProduit" method="post" enctype="multipart/form-data">
                        sélectionnez une photo à utiliser comme aperçu de votre nouveau produit: <br> 
                    <input type="file" name="fileName" class="RP">
                    <input type="submit" value="Télécharger" class="upl">
           </form>
          </div>                     
    </body>
</html>
