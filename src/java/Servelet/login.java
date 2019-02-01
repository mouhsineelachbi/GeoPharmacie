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
        String message ;
       
        //Client c=db.informationsClient(cin);

       if(password.trim().isEmpty() || cin.trim().isEmpty() || type.isEmpty())
       {
            message ="Vous devez remplire tous les champs SVP!";
           request.setAttribute("message", message);
           ServletContext context= getServletContext();
                        RequestDispatcher rd= context.getRequestDispatcher("/PageClient.jsp");
                        rd.forward(request, response);
       }
            else
       {
          Cookie idPharmaci;
          Cookie idPharmacien;
       
         Cookie ck = new Cookie("username", cin);
           ck.setMaxAge(3600);
           response.addCookie(ck);
           
           Cookie pass = new Cookie("password", password);
           pass.setMaxAge(3600);
            response.addCookie(pass); 
            
       
       
       
        
            db = new baseD();
        

        if(type.equals("client")){
            if(db.VerifierExistanceClient(cin)){
                Client c = db.informationsClient(cin);
                 
            
                if((c.getMotDePasse()).equals(password)){
                        // CLIENT EXIST
                        request.setAttribute("Client", c);
                        ServletContext context= getServletContext();
                        message ="login avec succés";
                        request.setAttribute("message", message);
                        RequestDispatcher rd= context.getRequestDispatcher("/MesInformations.jsp");
                        rd.forward(request, response);
                        String nom=c.getNom();
                        String prenom=c.getPrenom();
                        String email=c.getEmail();
                        //session
                        
                        
                        HttpSession session =request.getSession(true);
                        session.setAttribute("Client", c);
                        session.setAttribute("nom", nom);
                        session.setAttribute("prenom", prenom);
                        session.setAttribute("cin", cin);
                        session.setAttribute("password", password);
                        session.setAttribute("email", email);
                        session.setAttribute("type", type);
                        System.out.println("********************************************************************** login avant la redirection");
                       // response.sendRedirect("MesInformations.jsp");
                        System.out.println("********************************************************************** login apres la redirection");
                       
                    }
                    else{
                        // WRONG PASSWORD
                        response.sendRedirect("wrongPassword.jsp");
                    }
                }
                else{
                    // CLIENT DOESNT EXIST
                    //response.sendRedirect("PageClient.jsp");
                }
            }
            else{
                // TYPE = PHARMACIEN
                if(db.VerifierExistancePharmacien(cin)){
                     // PHARMACIEN EXIST
                     Pharmacien p = db.selectPharmacien(cin);
                     
                     if((p.getMotDePasse()).equals(password)){
                         
                        String nom=p.getNom();
                        String prenom=p.getPrenom();
                        String email=p.getEmail();
                        String adresse=p.getAdresse();
                        String pseudo=p.getPseudo();
                        String tel=p.getTel();
                        int idPharmacie=p.getIdPharmacie();
                         int numeroPharmacien=p.getNumeroPharmacien();
                         
                         String cien;
                         cien = String.valueOf(numeroPharmacien);
                         idPharmacien = new Cookie("numeroPharmacien", cien);
                         idPharmacien.setMaxAge(3600);
                        
                         
                         String cie;
                         cie = String.valueOf(idPharmacie);
                         idPharmaci = new Cookie("idPharmacie", cie);
                         idPharmaci.setMaxAge(3600);
                         
                        response.addCookie(idPharmaci);
                         message ="login avec succés";
                        request.setAttribute("message", message);
                        
                        
                        
                       
                        HttpSession session = request.getSession(true);	 
                        session.setAttribute("type", type);
                        session.setAttribute("Pharmacien", p);
                        session.setAttribute("nom", nom);
                        session.setAttribute("prenom", prenom);
                        session.setAttribute("cin", cin);
                        session.setAttribute("password", password);
                        session.setAttribute("email", email);
                        session.setAttribute("adresse", adresse);
                        session.setAttribute("pseudo", pseudo);
                        session.setAttribute("idPharmacie", idPharmacie);
                        session.setAttribute("tel", tel);
                        session.setAttribute("password", p.getMotDePasse());
                        session.setAttribute("numeroPharmacien", numeroPharmacien);
                       // session.setAttribute("Pharmacien", p);
                        request.setAttribute("Pharmacien", p);
                         ServletContext context= getServletContext();
                        context.getRequestDispatcher("/MesInformationsPharmacien.jsp").forward(request, response);
                      //  context.getRequestDispatcher("/InfoMonPharmacie.jsp").forward(request, response);
                        // response.sendRedirect("MesInformationsPharmacien.jsp");
                     }
                     else{
                         // WRONG PASSWORD
                         response.sendRedirect("PageClient.jsp");
                     }
                }
                else{
                    // PHAARMACIEN DOESNT EXIST
                    response.sendRedirect("PageClient.jsp");
                }
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