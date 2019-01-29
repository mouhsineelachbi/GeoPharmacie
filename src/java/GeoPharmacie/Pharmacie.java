package GeoPharmacie;

public class Pharmacie {
    
    private int IdPharmacie;
    private String nomPharmacie;
    private String adresse;
    private String tele;
    private String lien;

   
    public Pharmacie(int IdPharmacie, String nomPharmacie, String adresse, String tele, String lien) {
        this.IdPharmacie = IdPharmacie;
        this.nomPharmacie = nomPharmacie;
        this.adresse = adresse;
        this.tele = tele;
        this.lien = lien;
    }
    public Pharmacie(int IdPharmacie, String nomPharmacie, String adresse,String tele) {
        this.IdPharmacie = IdPharmacie;
        this.nomPharmacie = nomPharmacie;
        this.adresse = adresse;
        this.tele=tele;
    }

    public Pharmacie() {
        
    } 
    public void setLien(String lien) {
        this.lien = lien;
    }

    public String getLien() {
        return lien;
    }


    public void setTele(String tele) {
        this.tele = tele;
    }

    public String getTele() {
        return tele;
    }

    public int getIdPharmacie() {
        return IdPharmacie;
    }

    public String getNomPharmacie() {
        return nomPharmacie;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setIdPharmacie(int IdPharmacie) {
        this.IdPharmacie = IdPharmacie;
    }

    public void setNomPharmacie(String nomPharmacie) {
        this.nomPharmacie = nomPharmacie;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }
    
    
}
