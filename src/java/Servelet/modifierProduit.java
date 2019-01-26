package Servelet;
import GeoPharmacie.Produit;
import GeoPharmacie.baseD;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "modifierProduit", urlPatterns = {"/modifierProduit"})
public class modifierProduit extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException, SQLException {
            System.out.println("ANA HNA");
            int numProduit = Integer.parseInt(request.getParameter("numproduit"));
            int ref = Integer.parseInt(request.getParameter("reference"));
            String libelle = request.getParameter("libelle");
            String dateex = request.getParameter("dateex");
            String datefab = request.getParameter("datefab");
            double temp = Double.parseDouble(request.getParameter("temp"));
            double prix = Double.parseDouble(request.getParameter("prix"));
            Produit p = new Produit(numProduit, ref, libelle, datefab, dateex, temp,  prix);
            baseD db = new baseD();
            db.modifierProduit(numProduit, ref, libelle, dateex, datefab, temp, prix);
            ServletContext context= getServletContext();
            RequestDispatcher rd = context.getRequestDispatcher("/listdesproduit.jsp");
            rd.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}