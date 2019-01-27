/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import GeoPharmacie.Client;
import GeoPharmacie.DateFerie;
import GeoPharmacie.Pharmacien;
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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;

/**
 *
 * @author Hamza
 */
@WebServlet(name = "ModifierPharmacien", urlPatterns = {"/ModifierPharmacien"})
public class ModifierPharmacien extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
       baseD op = new baseD();
        String action = request.getParameter("action");
        if(action.equals("ModifierPharmacien")){
            int numeroPharmacien =Integer.parseInt(request.getParameter("numeroPharmacien"));
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String cin = request.getParameter("cin");
            String email = request.getParameter("email");
            String tel = request.getParameter("tele");
            String adresse = request.getParameter("adresse");
            String pseudo = request.getParameter("pseudo");
            String motdepasse =request.getParameter("motdepasse");
            int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
            Pharmacien c;
                  c = new Pharmacien();
                  c.setNom(nom);
                  c.setPrenom(prenom);
                  c.setCin(cin);
                  c.setEmail(email);
                  c.setTel(tel);
                  c.setAdresse(adresse);
                  c.setPseudo(pseudo);
                  c.setNumeroPharmacien(numeroPharmacien);
                  c.setMotDePasse(motdepasse);
                  c.setIdPharmacie(idPharmacie);
                  
            request.setAttribute("Pharmacien", c);
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/ModifierPharmacien.jsp");
            rd.forward(request, response);
        }
        if(action.equals("modifier")){
            int numeroPharmacien =Integer.parseInt(request.getParameter("numeroPharmacien"));
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String cin = request.getParameter("cin");
            String email = request.getParameter("email");
            String tel = request.getParameter("tele");
            String adresse = request.getParameter("adresse");
            String pseudo = request.getParameter("pseudo");
            String motdepasse=request.getParameter("motdepasse");
            int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
            Pharmacien c;
                  c = new Pharmacien();
                  c.setNom(nom);
                  c.setPrenom(prenom);
                  c.setCin(cin);
                  c.setEmail(email);
                  c.setTel(tel);
                  c.setAdresse(adresse);
                  c.setPseudo(pseudo);
                  c.setNumeroPharmacien(numeroPharmacien);
                  c.setMotDePasse(motdepasse);
                  c.setIdPharmacie(idPharmacie);
                  op.modifierPharmacien(idPharmacie, nom, prenom, cin, tel, email, adresse, pseudo, motdepasse,numeroPharmacien);
                  System.out.println("----------------------------------------------------idpharmacie=    "+idPharmacie);
                  
                  request.setAttribute("Pharmacien", c);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/MesInformationsPharmacien.jsp");
                rd.forward(request, response);
                   System.out.println("***********************dans action=modifier**************   tele=    ****************** modifierClient.java avant la redirection"+c.getTel());
//                  response.sendRedirect("MesInformationsPharmacien.jsp");
                  System.out.println("***********************dans action=modifier************************************ modifierClient.java apres la redirection");
        }
        if(action.equals("dateferie")){
             int idpharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
             request.setAttribute("idpharmacie", idpharmacie);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/AjouterDateFerie.jsp");
                rd.forward(request, response);
        }
        if(action.equals("dategarde")){
             int idpharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
             request.setAttribute("idpharmacie", idpharmacie);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/AjouterDateGarde.jsp");
                rd.forward(request, response);
        }
        if(action.equals("AjouterDateFerie")){
            
             String jourferie=request.getParameter("jourferie");
             String heureDM=request.getParameter("heureDM");
             String heureFM=request.getParameter("heureFM");
             String heureDS=request.getParameter("heureDS");
             String heureFS=request.getParameter("heureFS");
            int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
            op.insertIntoDateFerie(0, heureDM, heureFM, heureDS, heureFS, idPharmacie, jourferie);
            
             request.setAttribute("idpharmacie", idPharmacie);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/AfficherDateFerie.jsp");
                rd.forward(request, response);
            
           
          response.sendRedirect("AfficherDateFerie.jsp");
        }
        if(action.equals("AjouterDateGarde")){
            
             String jourgarde=request.getParameter("jourgarde");
             String heureDM=request.getParameter("heureDM");
             String heureFM=request.getParameter("heureFM");
             String heureDS=request.getParameter("heureDS");
             String heureFS=request.getParameter("heureFS");
            int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
            op.insertIntoDateGarde(0, heureDM, heureFM, heureDS, heureFS, idPharmacie, jourgarde);
            
             request.setAttribute("idpharmacie", idPharmacie);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/AfficherDateGarde.jsp");
                rd.forward(request, response);
            
           
          response.sendRedirect("AfficherDateGarde.jsp");
        }
        //********************************************************************************
            if(action.equals("affichageIndepondante")){
            int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
            request.setAttribute("idpharmacie", idPharmacie);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/AfficherDateGarde.jsp");
                rd.forward(request, response);
            
           
          response.sendRedirect("AfficherDateGarde.jsp");
        }
            //********************************************************************
        if(action.equals("affichageIndepondanteF")){
            int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
            request.setAttribute("idpharmacie", idPharmacie);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/AfficherDateFerie.jsp");
                rd.forward(request, response);
            
           
          response.sendRedirect("AfficherDateFerie.jsp");
        }
        //**************************************************************************************
        if(action.equals("affichageIndepondantep")){
            int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
            request.setAttribute("idpharmacie", idPharmacie);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/AfficherDateGardePharmacien.jsp");
                rd.forward(request, response);
            
           
          response.sendRedirect("AfficherDateGardePharmacien.jsp");
        }
        if(action.equals("affichageIndepondanteFp")){
            int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
            request.setAttribute("idpharmacie", idPharmacie);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/AfficherDateFeriePharmacien.jsp");
                rd.forward(request, response);
            
           
//          response.sendRedirect("AfficherDateFeriePharmacien.jsp");
        }
    
       if(action.equals("deconnecter")){
          /* int numeroPharmacien =Integer.parseInt(request.getParameter("numeroPharmacien"));
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String cin = request.getParameter("cin");
            String email = request.getParameter("email");
            String tel = request.getParameter("tele");
            String adresse = request.getParameter("adresse");
            String pseudo = request.getParameter("pseudo");
            String motdepasse=request.getParameter("motdepasse");
            int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
            */
                        HttpSession session =request.getSession(true);
                        session.removeAttribute("Pharmacien");   
                        session.invalidate();
                        Cookie ck[]= request.getCookies();
           for (Cookie ck1 : ck) {
               ck1.setValue("");
               ck1.setMaxAge(-1);
               
               String a = ck1.getValue();
               System.out.println("44444444444444444444444444444444444444444444444444444get value"+a);
           }
                        response.sendRedirect("login.jsp");
                               

                              
       }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ModifierClient.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ModifierClient.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
}
