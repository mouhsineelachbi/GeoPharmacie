/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GeoPharmacie;

/**
 *
 * @author Hamza
 */
public class DateFerie {
    private int idDateFirie;
    private String heureDM;
    private String heureFM;
    private String heureDS;
    private String heureFS;
    private int idPharmacie;
    private String jourFerie;

    public DateFerie() {
    }

    public DateFerie(int idDateFirie, String heureDM, String heureFM, String heureDS, String heureFS, int idPharmacie, String jourFerie) {
        this.idDateFirie = idDateFirie;
        this.heureDM = heureDM;
        this.heureFM = heureFM;
        this.heureDS = heureDS;
        this.heureFS = heureFS;
        this.idPharmacie = idPharmacie;
        this.jourFerie = jourFerie;
    }

    public void setIdDateFirie(int idDateFirie) {
        this.idDateFirie = idDateFirie;
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

    public void setJourFerie(String jourFerie) {
        this.jourFerie = jourFerie;
    }

    public int getIdDateFirie() {
        return idDateFirie;
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

    public String getJourFerie() {
        return jourFerie;
    }
    
}
