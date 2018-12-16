package GeoPharmacie;
import java.util.Date;


public class Facture {
     private int NumFacture;
     private String DateFacture;
     private String NumCommande;
     private double Some_Total;
     
    public Facture(int NumFacture, String DateFacture, double Some_Total) {
        this.NumFacture = NumFacture;
        this.DateFacture = DateFacture;
        this.Some_Total = Some_Total;
    }
    
    public Facture(int NumFacture, String DateFacture, String NumCommande, double Some_Total) {
        this.NumFacture = NumFacture;
        this.DateFacture = DateFacture;
        this.NumCommande = NumCommande;
        this.Some_Total = Some_Total;
    }

    public void setNumFacture(int NumFacture) {
        this.NumFacture = NumFacture;
    }

    public void setDateFacture(String DateFacture) {
        this.DateFacture = DateFacture;
    }

    public void setNumCommande(String NumCommande) {
        this.NumCommande = NumCommande;
    }

    public void setSome_Total(double Some_Total) {
        this.Some_Total = Some_Total;
    }

    public int getNumFacture() {
        return NumFacture;
    }

    public String getDateFacture() {
        return DateFacture;
    }

    public String getNumCommande() {
        return NumCommande;
    }

    public double getSome_Total() {
        return Some_Total;
    }
     
}
