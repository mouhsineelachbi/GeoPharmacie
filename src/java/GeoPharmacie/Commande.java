package GeoPharmacie;
import java.util.Date;

public class Commande {
     private int NumCommande;
     private Date DateCommande;
     private String EtatCommande;

    public Commande(int NumCommande, Date DateCommande, String EtatCommande) {
        this.NumCommande = NumCommande;
        this.DateCommande = DateCommande;
        this.EtatCommande = EtatCommande;
    }

    public void setNumCommande(int NumCommande) {
        this.NumCommande = NumCommande;
    }

    public void setDateCommande(Date DateCommande) {
        this.DateCommande = DateCommande;
    }

    public void setEtatCommande(String EtatCommande) {
        this.EtatCommande = EtatCommande;
    }

    public int getNumCommande() {
        return NumCommande;
    }

    public Date getDateCommande() {
        return DateCommande;
    }

    public String getEtatCommande() {
        return EtatCommande;
    }
     
}
