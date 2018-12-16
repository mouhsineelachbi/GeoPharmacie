package GeoPharmacie;

import java.util.LinkedList;

public class Pharmacien extends Utilisateur {
     private int NumeroPharmacien;

  

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
    
    public void  AjouterProduit(){
    }
    
    public void  SupprimerProduit(){
    }
    
    public void  ModifierProduit(){
        
    }
    void AjouterDescription(){}
    void SupprimerDescription(){}
    void ModifierDescription(){}
    
    Compte creerCompte(){
        return null;
    }
}
