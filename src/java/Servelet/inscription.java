/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import GeoPharmacie.Client;
import GeoPharmacie.baseD;
import java.io.IOException;
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

@WebServlet(name = "inscription", urlPatterns = {"/inscription"})
public class inscription extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException{
        baseD op=new baseD();
        System.out.println("avant recupirer les champs d'input*****************************************************************");

        String action = request.getParameter("action");
        if(action.equals("ajouter")){
            System.out.println("valablité dial action=ajouter*****************************************************************");
               
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String cin =request.getParameter("cin");
            String tel =request.getParameter("tel");
            String email =request.getParameter("email");
            String adresse =request.getParameter("adresse");
            String pseudo =request.getParameter("pseudo");
            String motdepasse =request.getParameter("motdepasse");
            String type =request.getParameter("type");
            if(type.equals("Client")){
                    if(!op.VerifierExistanceClient(cin)){
                        op.insertInToClient(nom, prenom, tel, cin, email, pseudo, adresse, motdepasse, 0);
                        System.out.println("if de client************************"+nom+""+cin+"*****non existe dans bd***********************************************");


                        Client c = op.informationsClient(cin);
                    System.out.println("apreéé getRequestDispatcher du clien ***************************00000000000000000000");
                        request.setAttribute("Client", c);
                        ServletContext context= getServletContext();
                        RequestDispatcher rd= context.getRequestDispatcher("/MesInformations.jsp");
                       
                        rd.forward(request, response);
                    System.out.println("apreéé getRequestDispatcher du clien ***************************111111111111111");
                        
                       
                    }
                    else{

                            /*
                            try{


                                    JOptionPane.showMessageDialog(null, "CIN déja utilisé !");
                                  //Boîte du message d'information
                                 //JOptionPane jop1 = new JOptionPane();
                                 // jop1.showMessageDialog(null, "CIN déja utilisé ", "Information", JOptionPane.INFORMATION_MESSAGE);
                            }catch(HeadlessException ex){JOptionPane.showMessageDialog(null, ex);}*/
                          }
              }
              else
              {
                        int idPharmacie = Integer.parseInt(request.getParameter("idPharmacie"));//*****************************we are here 15/12/2018 00:08************************************
                        if(!op.VerifierExistancePharmacien(cin)){
                            op.insertInToPharmacien(nom, prenom, tel, cin, email, pseudo, adresse, motdepasse, 0, idPharmacie);
                            System.out.println("if de pharmacien************************"+nom+""+cin+"****************************************************");
                            response.sendRedirect("MesInformations.jsp");
                        }
                        else
                        {
                            //  java.awt.event.ActionEvent evt;
                              //JOptionPane jop1;

                            //Boîte du message d'information
                           // jop1 = new JOptionPane();
                           // jop1.showMessageDialog(null, "CIN déja utilisé ", "Information", JOptionPane.INFORMATION_MESSAGE);
                          // JOptionPane.showMessageDialog(null, "CIN déja utilisé !");

                          }
              }
              
              
          }
        else{
            if(action.equals("info"))
            response.sendRedirect("MesInformations.jsp");
        }
         
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(inscription.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(inscription.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(inscription.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(inscription.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
}
