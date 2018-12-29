package GeoPharmacie;
import java.util.LinkedList;

public class Client extends Utilisateur {
     private int NumClient;

// Constructeurs
     
    public Client(){
    }
     
    public Client(int NumClient,String Nom, String Prenom, String Cin, String tel, String Email, String Adresse, String Pseudo, String motDePasse) {
        super(Nom, Prenom, Cin, tel, Email, Adresse, Pseudo, motDePasse);
        this.NumClient = NumClient;
    }
    //*********************************************************************
    
// Getters
    public int getNumClient() {
        return NumClient;
    }
// Setters
    public void setNumClient(int NumClient) {
        this.NumClient = NumClient;
    }
    //les commande*****************************************************************************
    LinkedList<Produit> AjouterCommande(){
        return null;
    }
    LinkedList<Produit> SupprimerCommande(){
        return null;
    }
    LinkedList<Produit> ModifierCommande(){
        return null;
    }
    //les commantares*****************************************************************************
   LinkedList<Produit> AjouterCommantaire(){
        return null;
    }
    LinkedList<Produit> SupprimerCommantaire(){
        return null;
    }
    LinkedList<Produit> ModifierCommantaire(){
        return null;
    } 
    //******************************
   void EvaluerPharmacie(){}
   //**********************************
   void PayerFacture(){
       
   }

   
}
