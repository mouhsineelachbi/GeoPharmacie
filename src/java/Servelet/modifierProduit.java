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
        throws ServletException, IOException, SQLException {
            int numProduit = Integer.parseInt(request.getParameter("numproduit"));
            int ref = Integer.parseInt(request.getParameter("reference"));
            String libelle = request.getParameter("libelle");
            String dateex = request.getParameter("dateex");
            String datefab = request.getParameter("datefab");
            double temp = Double.parseDouble(request.getParameter("temp"));
            double prix = Double.parseDouble(request.getParameter("prix"));
            Produit p = new Produit(numProduit, ref, libelle, datefab, dateex, temp, prix);
            baseD db = new baseD();
            db.modifierProduit(numProduit, ref, libelle, dateex, datefab, temp, prix);
            request.setAttribute("produit", p);
            // Forward to to the JSP file.
            request.getRequestDispatcher("modifier_ListProduit.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(modifierProduit.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}