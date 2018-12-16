package GeoPharmacie;
import java.util.Date;


public class Commentaire {
     private Date DateCom;
     private Date HeureCom;
     private String description;
     private int numeroUtilisateur;

    public Commentaire(Date DateCom, Date HeureCom, String description, int numeroUtilisateur) {
        this.DateCom = DateCom;
        this.HeureCom = HeureCom;
        this.description = description;
        this.numeroUtilisateur = numeroUtilisateur;
    }
     
    public Date getDateCom() {
        return DateCom;
    }

    public Date getHeureCom() {
        return HeureCom;
    }

    public void setDateCom(Date DateCom) {
        this.DateCom = DateCom;
    }

    public void setHeureCom(Date HeureCom) {
        this.HeureCom = HeureCom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNumeroUtilisateur() {
        return numeroUtilisateur;
    }

    public void setNumeroUtilisateur(int numeroUtilisateur) {
        this.numeroUtilisateur = numeroUtilisateur;
    }
}
