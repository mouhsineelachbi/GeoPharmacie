/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import GeoPharmacie.DateFerie;
import GeoPharmacie.DateGarde;
import GeoPharmacie.Pharmacie;
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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hamza
 */
@WebServlet(name = "SModifierDateFD", urlPatterns = {"/SModifierDateFD"})
public class SModifierDateFD extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
         baseD op = new baseD();
        String action = request.getParameter("action");
        if(action.equals("EnvSerModifierF")){
            int idpharmaciePharmacien=Integer.parseInt(request.getParameter("idpharmaciePharmacien"));
            System.out.println("----------------------------------------------idpharmaciePharmacien= "+idpharmaciePharmacien);
           
            int idDateFerie=Integer.parseInt(request.getParameter("idDateFerie"));
             String jourferie=request.getParameter("jourferie");
             String heureDM=request.getParameter("heureDM");
             String heureFM=request.getParameter("heureFM");
             String heureDS=request.getParameter("heureDS");
             String heureFS=request.getParameter("heureFS");
             int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
             System.out.println("---------------------------------------------------------------idPharmacie= "+idPharmacie);
             DateFerie f=new DateFerie();
             f.setHeureDM(heureDM);
             f.setHeureDS(heureDS);
             f.setHeureFM(heureFM);
             f.setHeureFS(heureFS);
             f.setIdDateFirie(idDateFerie);
             f.setJourFerie(jourferie);
             f.setIdPharmacie(idPharmacie);
             if(idpharmaciePharmacien==idPharmacie){
             request.setAttribute("ferie",f );
             ServletContext context= getServletContext();
             RequestDispatcher rd= context.getRequestDispatcher("/ModifierFerie.jsp");
             rd.forward(request, response);
             }
             else
               response.sendRedirect("login.jsp");  
            
        }
        if(action.equals("ModifierDateFerie")){
             int idDateFerie=Integer.parseInt(request.getParameter("idDateFerie"));
             String jourferie=request.getParameter("jourferie");
             String heureDM=request.getParameter("heureDM");
             String heureFM=request.getParameter("heureFM");
             String heureDS=request.getParameter("heureDS");
             String heureFS=request.getParameter("heureFS");
             int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
             
             op.UpdateDateFerie(idDateFerie, heureDM, heureFM, heureDS, heureFS, idPharmacie, jourferie);///modification en base de donnée
            
            //DateFerie d=op.DateFerie(idDateFerie);
            
            LinkedList<Integer> list=new LinkedList<Integer>() ;
            list.add(idPharmacie);
             list.add(0);
            request.setAttribute("list", list);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/AfficherDateFeriePharmacien.jsp");
                rd.forward(request, response);
            
//            response.sendRedirect("login.jsp");
        }
         if(action.equals("EnvSerModifierG")){
            int idpharmaciePharmacien=Integer.parseInt(request.getParameter("idpharmaciePharmacien"));
            System.out.println("----------------------------------------------idpharmaciePharmacien= "+idpharmaciePharmacien);
           
            int idDateGarde=Integer.parseInt(request.getParameter("idDateGarde"));
             String jourgarde=request.getParameter("jourgarde");
             String heureDM=request.getParameter("heureDM");
             String heureFM=request.getParameter("heureFM");
             String heureDS=request.getParameter("heureDS");
             String heureFS=request.getParameter("heureFS");
             int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
             System.out.println("---------------------------------------------------------------idPharmacie= "+idPharmacie);
             DateGarde f=new DateGarde();
             f.setHeureDM(heureDM);
             f.setHeureDS(heureDS);
             f.setHeureFM(heureFM);
             f.setHeureFS(heureFS);
             f.setIdDateGarde(idDateGarde);
             f.setJourFerie(jourgarde);
             f.setIdPharmacie(idPharmacie);
             
             if(idpharmaciePharmacien==idPharmacie){
                 
             request.setAttribute("garde",f );
             ServletContext context= getServletContext();
             RequestDispatcher rd= context.getRequestDispatcher("/ModifierGarde.jsp");
             rd.forward(request, response);
             }
             else
               response.sendRedirect("login.jsp");  
            
        }
         if(action.equals("ModifierDateGarde")){
             int idDateGarde=Integer.parseInt(request.getParameter("idDateGarde"));
             String jourferie=request.getParameter("jourgarde");
             String heureDM=request.getParameter("heureDM");
             String heureFM=request.getParameter("heureFM");
             String heureDS=request.getParameter("heureDS");
             String heureFS=request.getParameter("heureFS");
             int idPharmacie=Integer.parseInt(request.getParameter("idpharmacie"));
             op.UpdateDateGarde(idDateGarde, heureDM, heureFM, heureDS, heureFS, idPharmacie, jourferie);///modification en base de donnée
            DateFerie d=op.DateFerie(idDateGarde);
            //Pharmacien p=op.selectPharmacien(idPharmacie);
             LinkedList<Integer> list=new LinkedList<Integer>() ;
            list.add(idPharmacie);
            
            list.add(0);
            request.setAttribute("list", list);
                ServletContext context= getServletContext();
                RequestDispatcher rd= context.getRequestDispatcher("/AfficherDateGardePharmacien.jsp");
                rd.forward(request, response);
          //  response.sendRedirect("AfficherDateGardePharmacien.jsp");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SModifierDateFD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SModifierDateFD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
}
