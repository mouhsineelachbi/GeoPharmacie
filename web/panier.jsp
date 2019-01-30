<%@page import="GeoPharmacie.baseD"%>
<%@page import="java.util.LinkedList"%>
<%@page import="GeoPharmacie.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="assets/css/custom.css"/>
    </head>
    <body>
        <%
            String cin = new String();
            Cookie[] ck = request.getCookies();
            if(ck != null) {
                for (int i = 0; i < ck.length; i++) {
                    Cookie cookie = ck[i];
                    String name = cookie.getName();
                    String value = cookie.getValue();
                    if(name.equals("username")){
                        cin = value;
                        break;
                        }
                    }
                }
                %>
        
            <nav class="navbar">
			<div class="container">
				<a class="navbar-brand" href="#">Your online store</a>
				<div class="navbar-right">
					<div class="container minicart"></div>
				</div>
			</div>
            </nav>
		
            <div class="container-fluid breadcrumbBox text-center">
			<ol class="breadcrumb">
				<li><a href="#">Review</a></li>
				<li class="active"><a href="#">Commander</a></li>
				<li><a href="#">Payement</a></li>
			</ol>
            </div>
		<div class="container text-center">

			<div class="col-md-5 col-sm-12">
				<div class="bigcart"></div>
				<h1>Your shopping cart</h1>
				
			</div>
                <div class="col-md-7 col-sm-12 text-left">
				<ul>
					<li class="row list-inline columnCaptions">
						<span>QTY</span>
						<span>ITEM</span>
						<span>Price</span>
					</li>
                                        <%
                                            baseD db = new baseD();
                                            LinkedList<Produit> pl = db.getClientProduit(cin);
                                            int numeroClient = db.getNumClient(cin);
                                            double sommePayement = 0;
                                            for(int i=0; i<pl.size(); i++){
                                                Produit p = pl.get(i);
                                                sommePayement += p.getPrix();
                                                int num = db.getNumClient(cin);
                                                int quantite = db.getQuantiteProduitClient(cin, p.getNumeroProduit());
                                                
                                        %>
					<li class="row">
						<span class="quantity"><%=quantite%></span>
						<span class="itemName"><%=p.getLibelle()%></span>
						<span class="popbtn"><a class="arrow"></a></span>
						<span class="price"><%=p.getPrix()%> DH</span>
					</li>
                                        <%}%>
					<li class="row totals">
						<span class="itemName">Total:</span>
						<span class="price"><%=sommePayement%> DH</span>
						<span class="order"> <a href="#" class="text-center">Commander</a></span>
					</li>
				</ul>
			</div>

		</div>

		<!-- The popover content -->

		<div id="popover" style="display: none">
			<a href="#"><span class="glyphicon glyphicon-pencil"></span></a>
			<a href="#"><span class="glyphicon glyphicon-remove"></span></a>
		</div>
		
		<!-- JavaScript includes -->

		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script> 
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/customjs.js"></script>
                
                
    </body>
</html>
