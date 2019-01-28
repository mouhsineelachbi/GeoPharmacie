package GeoPharmacie;

public class Commande {
    
     private int NumCommande;
     private String DateCommande;
     private String EtatCommande;

    public Commande(int NumCommande, String DateCommande, String EtatCommande) {
        this.NumCommande = NumCommande;
        this.DateCommande = DateCommande;
        this.EtatCommande = EtatCommande;
    }
    
    public void setNumCommande(int NumCommande) {
        this.NumCommande = NumCommande;
    }

    public void setDateCommande(String DateCommande) {
        this.DateCommande = DateCommande;
    }

    public void setEtatCommande(String EtatCommande) {
        this.EtatCommande = EtatCommande;
    }

    public int getNumCommande() {
        return NumCommande;
    }

    public String getDateCommande() {
        return DateCommande;
    }

    public String getEtatCommande() {
        return EtatCommande;
    }
     
}
