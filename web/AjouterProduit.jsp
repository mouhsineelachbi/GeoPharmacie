<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.baseD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter Produit Au Stock</title>
    </head>
    <body>
        <form  action="ajouterProduit" method="POST">
            REFERENCE PRODUIT <input type="text" name="reference"><br>
            LIBELLE <input type="text" name="libelle"><br>
            PRIX <input type="text" name="prix"><br>
            TEMPERATURE <input type="text" name="temp"><br>
            DATE DE FABRICATION <input type="date" name="datefab"><br>         
            DATE D'EXPIRATION <input type="date" name="dateex"><br>
            ID PHARMACIE
            <select name="idPharmacie">
                <%
                    baseD db = new baseD();
                    LinkedList<String> Lid = db.GetPharId();
                    for(int i=0; i<Lid.size(); i++){
                        String field = Lid.get(i).toString();
                    
                %>
                    <option value="<%=field %>"><%=field %></option>
                <%
                    }
                %>
            </select><br>
            <input type="submit" value="Ajouter"/>
        </form>
    </body>
</html>
