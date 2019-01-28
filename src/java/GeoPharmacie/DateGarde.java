package GeoPharmacie;

public class DateGarde {
    
    private int idDateGarde;
    private String heureDM;
    private String heureFM;
    private String heureDS;
    private String heureFS;
    private int idPharmacie;
    private String jourGarde;

    public DateGarde() {
        
    }

    public DateGarde(int idDateGarde, String heureDM, String heureFM, String heureDS, String heureFS, int idPharmacie, String jourGarde) {
        this.idDateGarde = idDateGarde;
        this.heureDM = heureDM;
        this.heureFM = heureFM;
        this.heureDS = heureDS;
        this.heureFS = heureFS;
        this.idPharmacie = idPharmacie;
        this.jourGarde = jourGarde;
    }

    public void setIdDateGarde(int idDateGarde) {
        this.idDateGarde = idDateGarde;
    }

    public void setHeureDM(String heureDM) {
        this.heureDM = heureDM;
    }

    public void setHeureFM(String heureFM) {
        this.heureFM = heureFM;
    }

    public void setHeureDS(String heureDS) {
        this.heureDS = heureDS;
    }

    public void setHeureFS(String heureFS) {
        this.heureFS = heureFS;
    }

    public void setIdPharmacie(int idPharmacie) {
        this.idPharmacie = idPharmacie;
    }

    public void setJourFerie(String jourGarde) {
        this.jourGarde = jourGarde;
    }

    public int getIdDateGarde() {
        return idDateGarde;
    }

    public String getHeureDM() {
        return heureDM;
    }

    public String getHeureFM() {
        return heureFM;
    }

    public String getHeureDS() {
        return heureDS;
    }

    public String getHeureFS() {
        return heureFS;
    }

    public int getIdPharmacie() {
        return idPharmacie;
    }

    public String getJourGarde() {
        return jourGarde;
    }
    
    
}
