package GeoPharmacie;
import java.util.Date;
import java.util.LinkedList;

public class Planning {
    
    private int numeroPharmacien;
    private String dateOuverture;
    private String dateFermeture;
    private LinkedList<String> dateFerer;
    private LinkedList<String> dateGarde;
    private int idPharmacie;

    public Planning(int numeroPharmacien, String dateOuverture, String dateFermeture, LinkedList<String> dateFerer) {
        this.numeroPharmacien = numeroPharmacien;
        this.dateOuverture = dateOuverture;
        this.dateFermeture = dateFermeture;
        this.dateFerer = dateFerer;
        
    }

    public Planning(String dateOuverture, String dateFermeture, LinkedList<String> dateFerer, LinkedList<String> dateGarde, int idPharmacie) {
        this.dateOuverture = dateOuverture;
        this.dateFermeture = dateFermeture;
        this.dateFerer = dateFerer;
        this.dateGarde = dateGarde;
        this.idPharmacie = idPharmacie;
    }

    public void setNumeroPharmacien(int numeroPharmacien) {
        this.numeroPharmacien = numeroPharmacien;
    }

    public void setDateOuverture(String dateOuverture) {
        this.dateOuverture = dateOuverture;
    }

    public void setDateFermeture(String dateFermeture) {
        this.dateFermeture = dateFermeture;
    }

    public void setFerie(LinkedList<Date> ferie) {
        this.dateFerer = dateFerer;
    }

    public int getNumeroPharmacien() {
        return numeroPharmacien;
    }

    public String getDateOuverture() {
        return dateOuverture;
    }

    public String getDateFermeture() {
        return dateFermeture;
    }

    public LinkedList<String> getFerie() {
        return dateFerer;
    }

    public LinkedList<String> getDateFerer() {
        return dateFerer;
    }

    public LinkedList<String> getDateGarde() {
        return dateGarde;
    }

    public int getIdPharmacie() {
        return idPharmacie;
    }

    public void setDateFerer(LinkedList<String> dateFerer) {
        this.dateFerer = dateFerer;
    }

    public void setDateGarde(LinkedList<String> dateGarde) {
        this.dateGarde = dateGarde;
    }

    public void setIdPharmacie(int idPharmacie) {
        this.idPharmacie = idPharmacie;
    }
    
    public void ConsulterPlanning(){
        
    }
    
}
