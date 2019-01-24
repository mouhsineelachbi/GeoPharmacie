/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import GeoPharmacie.Client;
import GeoPharmacie.Pharmacien;
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
      

        String action = request.getParameter("action");
        if(action.equals("ajouter")){
            
               
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
                       


                        Client c = op.informationsClient(cin);
                   
                        request.setAttribute("Client", c);
                        ServletContext context= getServletContext();
                        RequestDispatcher rd= context.getRequestDispatcher("/MesInformations.jsp");
                       
                        rd.forward(request, response);
                   
                        
                       
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
                        int idPharmacie = Integer.parseInt(request.getParameter("idPharmacie"));
                        System.out.println("idPharmacie="+idPharmacie+"**************************************");
                        if(!op.VerifierExistancePharmacien(cin)){
                            op.insertInToPharmacien(nom, prenom, tel, cin, email, pseudo, adresse, motdepasse, 0, idPharmacie);
                           
                            Pharmacien c = op.selectPharmacien(cin);
                           // c.getIdPharmacie()=idPharmacie;
                           System.out.println("transfere des donner vers mesInformationparmatien**************************************"+c.getIdPharmacie());
                            request.setAttribute("Pharmacien", c);
                            ServletContext context= getServletContext();
                            RequestDispatcher rd= context.getRequestDispatcher("/MesInformationsPharmacien.jsp");
                            rd.forward(request, response);
                            System.out.println("transfere des donner vers mesInformationparmatien**************************************"+c.getIdPharmacie());
                            //response.sendRedirect("MesInformations.jsp");
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
