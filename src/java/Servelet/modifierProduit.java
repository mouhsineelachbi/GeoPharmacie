package Servelet;
import GeoPharmacie.Produit;
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


@WebServlet(name = "modifierProduit", urlPatterns = {"/modifierProduit"})
public class modifierProduit extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //(request, response);
            int numProduit = Integer.parseInt(request.getParameter("numProduit"));
            int ref = Integer.parseInt(request.getParameter("ref"));
            String libelle = request.getParameter("libelle");
            String dateex = request.getParameter("dateex");
            String datefab = request.getParameter("datefab");
            double temp = Double.parseDouble(request.getParameter("temp"));
            double prix = Double.parseDouble(request.getParameter("prix"));
            //int idPharmacie = Integer.parseInt(request.getParameter("idPharmacie"));
            Produit p = new Produit(numProduit, ref, libelle, datefab, dateex, temp,  prix);
            baseD db = new baseD();
            db.modifierProduit(numProduit, ref, libelle, dateex, datefab, temp, prix);
            //request.setAttribute("Produit", p);
            //request.getRequestDispatcher("ModifierProduit.jsp").forward(request, response); 
        } catch (SQLException ex) {
            Logger.getLogger(modifierProduit.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}