package GeoPharmacie;
import java.util.LinkedList;

public class Pharmacien extends Utilisateur {
    
    private int NumeroPharmacien;
    private int idPharmacie;

  
    public Pharmacien(int NumeroPharmacien,String Nom, String Prenom, String Cin, String tel, String Email, String Adresse, String Pseudo, String motDePasse, int pharmacie){
        super(Nom, Prenom, Cin, tel, Email, Adresse, Pseudo, motDePasse);
        this.NumeroPharmacien = NumeroPharmacien;
        this.idPharmacie = idPharmacie;
    }
    
    public Pharmacien(int NumeroPharmacien,String Nom, String Prenom, String Cin, String tel, String Email, String Adresse, String Pseudo, String motDePasse) {
        super(Nom, Prenom, Cin, tel, Email, Adresse, Pseudo, motDePasse);
        this.NumeroPharmacien = NumeroPharmacien;
    }
   

    public int getNumeroPharmacien() {
        return NumeroPharmacien;
    }

    public void setNumeroPharmacien(int NumeroPharmacien) {
        this.NumeroPharmacien = NumeroPharmacien;
    }
    LinkedList<Produit> AjouterProduit(){
        return null;
    }
    LinkedList<Produit> SupprimerProduit(){
        return null;
    }
    LinkedList<Produit> ModifierProduit(){
        return null;
    }
    void AjouterDescription(){}
    void SupprimerDescription(){}
    void ModifierDescription(){}
    
    Compte creerCompte(){return null;}
   }
