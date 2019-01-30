package Servelet;

import GeoPharmacie.baseD;
import java.io.IOException;
import java.sql.SQLException;
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

@WebServlet(name = "Commande", urlPatterns = {"/Commande"})
public class Commande extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
            int numeroProduit = Integer.parseInt(request.getParameter("numeroProduit"));
            /**int ref = Integer.parseInt(request.getParameter("reference"));
            String libelle = request.getParameter("libelle");
            double prix = Double.parseDouble(request.getParameter("prix"));
            double temp = Double.parseDouble(request.getParameter("temp"));
            String datefab = request.getParameter("datefab");
            String dateex = request.getParameter("dateex");**/
            int quantite = Integer.parseInt(request.getParameter("quantite"));
            //int idPharmacie = Integer.parseInt(request.getParameter("idPharmacie"));
            baseD db = new baseD();
            String date = db.getDate();
            //HttpSession session = request.getSession(true);
            //String cin = session.getAttribute("cin").toString();
            Cookie[] cks = request.getCookies();
            String cin = new String();
            for (int i = 0; i < cks.length; i++) {
                String name = cks[i].getName();
                cin = cks[i].getValue();
                if (name.equals("cin")) {
                    break;
                }
            }
            
            db.insertIntoCommande(date , "non payé", cin);
            System.out.println(cin);
            int maxNumCommande = db.getMaxNumCommande();
            db.insertIntoLineCommande(numeroProduit, maxNumCommande, quantite);
            response.sendRedirect("panier.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Commande.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Commande.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
