package GeoPharmacie;
import java.util.Date;


public class Compte {
     private String numCompte;
     private String NomProprietaire;
     private String PrenomProprietaire;
     private String CinProprietaire;
     private String TelProprietaire;
     private String EmailProprietaire;
     private Date DateExpiration;

    public Compte(String numCompte, String NomProprietaire, String PrenomProprietaire, String CinProprietaire, String TelProprietaire, String EmailProprietaire, Date DateExpiration) {
        this.numCompte = numCompte;
        this.NomProprietaire = NomProprietaire;
        this.PrenomProprietaire = PrenomProprietaire;
        this.CinProprietaire = CinProprietaire;
        this.TelProprietaire = TelProprietaire;
        this.EmailProprietaire = EmailProprietaire;
        this.DateExpiration = DateExpiration;
    }

    public void setNumCompte(String numCompte) {
        this.numCompte = numCompte;
    }

    public void setNomProprietaire(String NomProprietaire) {
        this.NomProprietaire = NomProprietaire;
    }

    public void setPrenomProprietaire(String PrenomProprietaire) {
        this.PrenomProprietaire = PrenomProprietaire;
    }

    public void setCinProprietaire(String CinProprietaire) {
        this.CinProprietaire = CinProprietaire;
    }

    public void setTelProprietaire(String TelProprietaire) {
        this.TelProprietaire = TelProprietaire;
    }

    public void setEmailProprietaire(String EmailProprietaire) {
        this.EmailProprietaire = EmailProprietaire;
    }

    public void setDateExpiration(Date DateExpiration) {
        this.DateExpiration = DateExpiration;
    }

    public String getNumCompte() {
        return numCompte;
    }

    public String getNomProprietaire() {
        return NomProprietaire;
    }

    public String getPrenomProprietaire() {
        return PrenomProprietaire;
    }

    public String getCinProprietaire() {
        return CinProprietaire;
    }

    public String getTelProprietaire() {
        return TelProprietaire;
    }

    public String getEmailProprietaire() {
        return EmailProprietaire;
    }

    public Date getDateExpiration() {
        return DateExpiration;
    }
     
     
}
