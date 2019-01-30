package Servelet;

import GeoPharmacie.baseD;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


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
            String cin = new String();
            Cookie[] ck = request.getCookies();
            if(ck != null) {
                for (int i = 0; i < ck.length; i++) {
                    Cookie cookie = ck[i];
                    String name = cookie.getName();
                    String value = cookie.getValue();
                    if(name.equals("username")){
                        cin = value;
                        break;
                    }
                }
            }
            System.out.println("CIN = "+cin);
            System.out.println(db.getNumClient(cin));
            db.insertIntoCommande(date , "non payé", cin);
            System.out.println(cin);
            int maxNumCommande = db.getMaxNumCommande();
            db.insertIntoLineCommande(numeroProduit, maxNumCommande, quantite);
            response.sendRedirect("listdesproduit.jsp");
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
