package Servelet;

import GeoPharmacie.Produit;
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

@WebServlet(name = "descriptionProduit", urlPatterns = {"/descriptionProduit"})
public class descriptionProduit extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        int numProduit = Integer.parseInt(request.getParameter("numproduit"));
        System.out.println("Descriptin produit numproduit = "+numProduit);
        baseD db = new baseD();
        Produit p = db.AfficherProduit(numProduit);
        request.setAttribute("produit", p);
        //response.sendRedirect("DescriptionProduit.jsp");
        ServletContext context= getServletContext();
        RequestDispatcher rd= context.getRequestDispatcher("/DescriptionProduit.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(descriptionProduit.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(descriptionProduit.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
