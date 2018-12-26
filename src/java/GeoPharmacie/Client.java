package GeoPharmacie;
import java.util.LinkedList;



public class Client extends Utilisateur {
     private int NumClient;
     //constructeurs**************************************************************************************************
     
    public Client(){
        
    }
    
    
    public Client(int NumClient,String Nom, String Prenom, String Cin, String tel, String Email, String Adresse, String Pseudo, String motDePasse) {
        super(Nom, Prenom, Cin, tel, Email, Adresse, Pseudo, motDePasse);
        this.NumClient = NumClient;
    }
    //getters**************************************************************************************
    public int getNumClient() {
        return NumClient;
    }
    //setters****************************************************************************
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
