package GeoPharmacie;
import java.util.Date;



public class PaiementLivraision extends Paiement {
     private String NomCl;
     private String PrenomCl;
     private String EmailCl;
     private String Tel;
     private String AdrresseCl;

    public PaiementLivraision(String NomCl, String PrenomCl, String EmailCl, String Tel, String AdrresseCl, Date DatePaiement, Double Montant, Boolean Paye) {
        super(DatePaiement, Montant, Paye);
        this.NomCl = NomCl;
        this.PrenomCl = PrenomCl;
        this.EmailCl = EmailCl;
        this.Tel = Tel;
        this.AdrresseCl = AdrresseCl;
    }
     
}
