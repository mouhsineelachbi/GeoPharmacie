/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelet;

import GeoPharmacie.baseD;
import java.io.IOException;
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
 * @author Mythose
 */
@WebServlet(name = "ajouterProduit", urlPatterns = {"/ajouterProduit"})
public class ajouterProduit extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
            int ref = Integer.parseInt(request.getParameter("reference"));
            String libelle = request.getParameter("libelle");
            double prix = Double.parseDouble(request.getParameter("prix"));
            double temp = Double.parseDouble(request.getParameter("temp"));
            String datefab = request.getParameter("datefab");
            String dateex = request.getParameter("dateex");
            int quantite = Integer.parseInt(request.getParameter("quantite"));
            int idPharmacie = Integer.parseInt(request.getParameter("idPharmacie"));
            baseD db = new baseD();
            db.insertIntoProduit(ref, libelle, dateex, datefab, temp, prix, quantite, idPharmacie);
            request.getRequestDispatcher("AjouterProduit.jsp").forward(request, response);
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ajouterProduit.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ajouterProduit.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
