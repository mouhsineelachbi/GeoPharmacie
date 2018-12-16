package GeoPharmacie;
import java.util.Date;


public class Paiement {
     private Date DatePaiement;
     private Double Montant;
     private Boolean Paye;

    public Paiement(Date DatePaiement, Double Montant, Boolean Paye) {
        this.DatePaiement = DatePaiement;
        this.Montant = Montant;
        this.Paye = Paye;
    }

    public Date getDatePaiement() {
        return DatePaiement;
    }

    public Double getMontant() {
        return Montant;
    }

    public Boolean getPaye() {
        return Paye;
    }

    public void setDatePaiement(Date DatePaiement) {
        this.DatePaiement = DatePaiement;
    }

    public void setMontant(Double Montant) {
        this.Montant = Montant;
    }

    public void setPaye(Boolean Paye) {
        this.Paye = Paye;
    }
     
}
