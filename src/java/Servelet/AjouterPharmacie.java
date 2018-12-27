/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import GeoPharmacie.baseD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hamza
 */
@WebServlet(name = "AjouterPharmacie", urlPatterns = {"/AjouterPharmacie"})
public class AjouterPharmacie extends HttpServlet {

    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        baseD op=new baseD();
            System.out.println("avant recupirer les champs d'input*****************************************************************");

         String action = request.getParameter("action");
          if(action.equals("ajouterPhar")){
              String nomPharmacie = request.getParameter("nomPharmacie");
              String adresse=request.getParameter("adresse");
              int numeroPharmacien=Integer.parseInt(request.getParameter("numeroPharmacien"));
               String tel =request.getParameter("tel");
               
               if(!op.VerifierExistanceNomPharmacie(nomPharmacie)){
               op.insertInToPharmacie(0, nomPharmacie, adresse, numeroPharmacien, tel);
               response.sendRedirect("AfficherPharmacie.jsp");
               }
               else{
                response.sendRedirect("AfficherPharmacie.jsp");}
          }
        
        
        
       
    }
    

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AjouterPharmacie.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AjouterPharmacie.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}