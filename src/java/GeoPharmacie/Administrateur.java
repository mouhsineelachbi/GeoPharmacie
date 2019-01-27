package GeoPharmacie;
import java.util.LinkedList;

public class Administrateur extends Utilisateur {
     private int NumeroAdmin;
     
     public Administrateur(String Nom, String Prenom, String Cin, String tel, String Email, String Adresse, String Pseudo, String motDePasse) {
        super(Nom, Prenom, Cin, tel, Email, Adresse, Pseudo, motDePasse);
    }

    public int getNumeroAdmin() {
        return NumeroAdmin;
    }

    public Administrateur(int NumeroAdmin, String Nom, String Prenom, String Cin, String tel, String Email, String Adresse, String Pseudo, String motDePasse) {
        super(Nom, Prenom, Cin, tel, Email, Adresse, Pseudo, motDePasse);
        this.NumeroAdmin = NumeroAdmin;
    }

    public void setNumeroAdmin(int NumeroAdmin) {
        
        this.NumeroAdmin = NumeroAdmin;
    }
    LinkedList<Compte> CréerCompte(){
        return null;
    }
    LinkedList<Compte> SupprimerCompte(){
        return null;
    }
    LinkedList<Compte> ModifierCompte(){
        return null;
    }
    LinkedList<Planning> AjouterPlanning(){
        return null;
    }
      LinkedList<Planning> ModifierPlanning(){
        return null;
    }
      boolean AccepteDemandeInscription(){
          return true;
      }
      boolean ReffuserDemandeInscription(){
          return true;
      }
      
}
