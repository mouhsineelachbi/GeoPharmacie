<%-- 
    Document   : PageClient
    Created on : 22 janv. 2019, 23:30:58
    Author     : abdel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css" rel="stylesheet" media="all"/>
    </head>
    <body>
        <nav class="menu">
            <div class="logo"><a><img src="bg3.png" alt=""/><a></div>
            <ul>
            <li><a>Accueil</a></li>
            <li><a>Pharmacies</a></li>
            <li><a>Produits</a></li>
            <li><a>à propos de nous</a>
            <ul>
                <li><a>notre équipe</a></li>
                <li><a>contact</a></li>
                <li><a>Ressources</a></li>
            </ul>
            </li>
        </ul>
            <form class="search-form">
                <input type="text" placeholder="chercher">
                <button>chercher</button>
            </form>
        </nav>
    </body>
</html>
