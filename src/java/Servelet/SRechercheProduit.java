/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import GeoPharmacie.Produit;
import GeoPharmacie.baseD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hamza
 */
@WebServlet(name = "SRechercheProduit", urlPatterns = {"/SRechercheProduit"})
public class SRechercheProduit extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
         
        baseD op = new baseD();
        String action = request.getParameter("action");
        if(action.equals("rechercher")){
            System.out.println("hna fi action=rechercher-----------------------------------------------------");
            String libelle = request.getParameter("libelle");
            
           Produit p=new Produit();
            p= op.UneProduit(libelle);
            System.out.println("Servelt    prix========================================================"+p.getPrix());
            request.setAttribute("Produit", p);
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/ResultRechercheProduit.jsp");
            rd.forward(request, response);
            
        
    }
        else{
     //       response.sendRedirect("RechercheProduit.jsp");
        }
    }
  
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SRechercheProduit.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SRechercheProduit.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
}
