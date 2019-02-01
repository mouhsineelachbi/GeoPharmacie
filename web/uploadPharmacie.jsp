<%-- 
    Document   : uploadPharmacie
    Created on : 27 janv. 2019, 06:02:31
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
        <form action="uploadA" method="post" enctype="multipart/form-data">
            <h1>Sélectionnez une photo à utiliser comme couverture de votre nouvelle pharmacie</h1>  <input type="file" name="fileName" class="RP">
                    
                    <input type="submit" value="Télécharger" class="upl">
                </form>
        </div>
    </body>
</html>
