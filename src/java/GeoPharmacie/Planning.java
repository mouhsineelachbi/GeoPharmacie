/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GeoPharmacie;

import java.util.Date;
import java.util.LinkedList;

/**
 *
 * @author Hamza
 */
public class Planning {
    private int numeroPharmacien;
    private String dateOuverture;
    private String dateFermeture;
    private LinkedList<String> dateFerer;
    private LinkedList<String>dateGarde;

    public Planning(int numeroPharmacien, String dateOuverture, String dateFermeture, LinkedList<String> dateFerer) {
        this.numeroPharmacien = numeroPharmacien;
        this.dateOuverture = dateOuverture;
        this.dateFermeture = dateFermeture;
        this.dateFerer = dateFerer;
        
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
    
    
   public void ConsulterPlanning(){
        
    }
    
}
