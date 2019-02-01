package Servelet;
import GeoPharmacie.Pharmacie;
import GeoPharmacie.baseD;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "AjouterPharmacie", urlPatterns = {"/AjouterPharmacie"})
public class AjouterPharmacie extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        baseD op=new baseD();
            System.out.println("avant recupirer les champs d'input*****************************************************************");

         String action = request.getParameter("action");
         
                  if(action.equals("ajouterCien")){
                      int numeroPharmacien=Integer.parseInt(request.getParameter("numeroPharmacien"));
                      request.setAttribute("numeroPharmacien", numeroPharmacien);
                        ServletContext context= getServletContext();
                        context.getRequestDispatcher("/AjouterPharmacie.jsp").forward(request, response);
                       
                  }
          if(action.equals("ajouterPhar")){
              String nomPharmacie = request.getParameter("nomPharmacie");
              String adresse=request.getParameter("adresse");
            
               String tel =request.getParameter("tel");
               
               //String lien=request.getParameter("lien");
               
               if(!op.VerifierExistanceNomPharmacie(nomPharmacie)){
               op.insertInToPharmacie(0, nomPharmacie, adresse, tel);
               int numeroPharmacien=Integer.parseInt(request.getParameter("numeroPharmacien"));
               op.modifierIdPharmacie_Cien(numeroPharmacien);
               response.sendRedirect("uploadPharmacie.jsp");
               }
               else{
                response.sendRedirect("MesInformationsPharmacien.jsp");}
          }
          if(action.equals("Afficher")){
                int idPharmacie=Integer.parseInt(request.getParameter("idPharmacie"));
                Pharmacie phcie =new Pharmacie();
                phcie=(Pharmacie)op.selectPharmacie(idPharmacie);
                String nomPharmacie =phcie.getNomPharmacie();
                String adresse =phcie.getAdresse();
                String tel=phcie.getTele();
                Pharmacie p=new Pharmacie(idPharmacie, nomPharmacie, adresse, tel);
                request.setAttribute("Pharmacie", p);
                ServletContext context= getServletContext();
                context.getRequestDispatcher("/InfoMonPharmacie.jsp").forward(request, response);
                
              
          }
    }
    

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AjouterPharmacie.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AjouterPharmacie.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
