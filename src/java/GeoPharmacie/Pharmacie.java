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
public class Pharmacie {
    private int IdPharmacie;
    private String nomPharmacie;
    private String adresse;
    private String tele;

    public Pharmacie(int IdPharmacie, String nomPharmacie, String adresse,String tele) {
        this.IdPharmacie = IdPharmacie;
        this.nomPharmacie = nomPharmacie;
        this.adresse = adresse;
        this.tele=tele;
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
