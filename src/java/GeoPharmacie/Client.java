package GeoPharmacie;
import java.util.LinkedList;



public class Client extends Utilisateur {
     private int NumClient;
     
    public Client(){
        
    }

    public Client(int NumClient,String Nom, String Prenom, String Cin, String tel, String Email, String Adresse, String Pseudo, String motDePasse) {
        super(Nom, Prenom, Cin, tel, Email, Adresse, Pseudo, motDePasse);
        this.NumClient = NumClient;
    }

    public int getNumClient() {
        return NumClient;
    }

    public void setNumClient(int NumClient) {
        this.NumClient = NumClient;
    }
    
// Les commandes
    LinkedList<Produit> AjouterCommande(){
        return null;
    }
    
    LinkedList<Produit> SupprimerCommande(){
        return null;
    }
    
    LinkedList<Produit> ModifierCommande(){
        return null;
    }
    
// Les commantaires
    LinkedList<Produit> AjouterCommantaire(){
        return null;
    }
   
    LinkedList<Produit> SupprimerCommantaire(){
        return null;
    }
    
    LinkedList<Produit> ModifierCommantaire(){
        return null;
    } 
    
// Evaluation des pharmacie
   void EvaluerPharmacie(){
   }
   
// Paiement de facture   
   void PayerFacture(){
       
   }
}
