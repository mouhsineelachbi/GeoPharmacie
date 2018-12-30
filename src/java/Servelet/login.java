package Servelet;
import GeoPharmacie.Client;
import GeoPharmacie.Pharmacien;
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


@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
         baseD db ;
        String cin = request.getParameter("cin");
        String password = request.getParameter("password");
        String type = request.getParameter("type");
       
        //Client c=db.informationsClient(cin);

       
            Cookie ck = new Cookie("username", cin);
            ck.setMaxAge(3600);
            Cookie pass = new Cookie("password", password);
           pass.setMaxAge(3600);
           response.addCookie(ck);
            response.addCookie(pass);
       
       
       
        
            db = new baseD();
        

        if(type.equals("client")){
            if(db.VerifierExistanceClient(cin)){
                Client c = db.informationsClient(cin);
                 
            
                if((c.getMotDePasse()).equals(password)){
                        // CLIENT EXIST
                        request.setAttribute("Client", c);
                        ServletContext context= getServletContext();
                        RequestDispatcher rd= context.getRequestDispatcher("/MesInformations.jsp");
                        rd.forward(request, response);
                        String nom=c.getNom();
                        String prenom=c.getPrenom();
                        HttpSession session =request.getSession();
                        session.setAttribute("nom", nom);
                        session.setAttribute("prenom", prenom);
                        session.setAttribute("cin", cin);
                        session.setAttribute("password", password);
                        
                        response.sendRedirect("MesInformations.jsp");
                        
                        
                    }
                    else{
                        // WRONG PASSWORD
                        response.sendRedirect("wrongPassword.jsp");
                    }
                }
                else{
                    // CLIENT DOESNT EXIST
                    //response.sendRedirect("login.jsp");
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