/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import GeoPharmacie.Pharmacie;

import GeoPharmacie.baseD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
@WebServlet(name = "SModifierPharmacie", urlPatterns = {"/SModifierPharmacie"})
public class SModifierPharmacie extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        
        baseD op = new baseD();
        String action = request.getParameter("action");
        if(action.equals("ModifierPharmacie")){
            int idpharmacie =Integer.parseInt(request.getParameter("idpharmacie"));
            String nomPharmacie = request.getParameter("nomPharmacie");
             System.out.println("----------------------------------------------------nommmme=    "+nomPharmacie);
            String tel = request.getParameter("tel");
            String adresse = request.getParameter("adresse");
            Pharmacie c;
                  c = new Pharmacie();
                  c.setNomPharmacie(nomPharmacie); 
                  c.setTele(tel);
                  c.setAdresse(adresse);
                  c.setIdPharmacie(idpharmacie);
                  System.out.println("dkhalna lModifierPharmacie +++++++++++++++++++hamza0000000000++++++++++++++++++++++++++++++++++++++++++");
            request.setAttribute("Pharmacie", c);
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/ModifierPharmacie.jsp");
            rd.forward(request, response);
        }
        if(action.equals("modifier")){
            System.out.println("dkhalna lmodifier +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
            String nomPharmacie = request.getParameter("nomPharmacie");
            String tel = request.getParameter("tel");
            String adresse = request.getParameter("adresse");
            int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
             System.out.println("(modifier)nomPharmacie  "+nomPharmacie+"  adess  "+adresse+"  tel  "+tel+"  idphar "+idPharmacie);
            Pharmacie c;
                  c = new Pharmacie();
                  c.setNomPharmacie(nomPharmacie);
                  c.setTele(tel);
                  c.setAdresse(adresse);
                  c.setIdPharmacie(idPharmacie);
                  System.out.println("-----------------------------*********-----------------------nommmme=    "+nomPharmacie);
                  //modifier dans la base de donnée
                   op.modifierPharmacie(c);
                  System.out.println("-------------------------------********---------------------nommmme=    "+nomPharmacie);
                //  
                  request.setAttribute("Pharmacie", c);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/InfoMonPharmacie.jsp");
                rd.forward(request, response);
                   System.out.println("***********************dans action=modifier**************   tele=    ****************** modifierClient.java avant la redirection"+c.getTele());
//                  response.sendRedirect("MesInformationsPharmacien.jsp");
                  System.out.println("***********************dans action=modifier************************************ modifierClient.java apres la redirection");
        }
        
    }

   
     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SModifierPharmacie.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SModifierPharmacie.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

  

}
