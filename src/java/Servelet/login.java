package Servelet;
import GeoPharmacie.Client;
import GeoPharmacie.Pharmacien;
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


@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        String cin = request.getParameter("cin");
        String password = request.getParameter("password");
        String type = request.getParameter("type");
        baseD db = null;
        try {
            db = new baseD();
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }

        if(type.equals("client")){
            if(db.VerifierExistanceClient(cin)){
                Client c = db.selectClient(cin);
                if((c.getMotDePasse()).equals(password)){
                        // CLIENT EXIST
                        response.sendRedirect("login.jsp");
                    }
                    else{
                        // WRONG PASSWORD
                        response.sendRedirect("wrongPassword.jsp");
                    }
                }
                else{
                    // CLIENT DOESNT EXIST
                    response.sendRedirect("login.jsp");
                }
            }
            else{
                // TYPE = PHARMACIEN
                if(db.VerifierExistancePharmacien(cin)){
                     // PHARMACIEN EXIST
                     Pharmacien p = db.selectPharmacien(cin);
                     if((p.getMotDePasse()).equals(password)){
                         response.sendRedirect("login.jsp");
                     }
                     else{
                         // WRONG PASSWORD
                         response.sendRedirect("login.jsp");
                     }
                }
                else{
                    // PHAARMACIEN DOESNT EXIST
                    response.sendRedirect("login.jsp");
                }
            }

        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
}
