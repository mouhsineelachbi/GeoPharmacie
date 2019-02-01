package GeoPharmacie;

public class Produit {
    
    private int ReferenceProduit;
    private String Libelle;
    private String DateFabrication;
    private String DateExpiration;
    private double TemperatureStock;
    private int NumeroProduit;
    private double Prix;
    private int idpharmacie;
    private String lien;
    private int quantite;

    public Produit(int NumeroProduit,int ReferenceProduit, String Libelle, String DateFabrication, String DateExpiration, double TemperatureStock,  double Prix,int idpharmacie ,String lien) {
        this.ReferenceProduit = ReferenceProduit;
        this.Libelle = Libelle;
        this.DateFabrication = DateFabrication;
        this.DateExpiration = DateExpiration;
        this.TemperatureStock = TemperatureStock;
        this.NumeroProduit = NumeroProduit;
        this.Prix = Prix;
        this.idpharmacie=idpharmacie;
        this.lien=lien;
    }
    
    public Produit(int NumeroProduit,int ReferenceProduit, String Libelle, String DateFabrication, String DateExpiration, double TemperatureStock,  double Prix,int idpharmacie ,int quantite, String lien) {
        this.ReferenceProduit = ReferenceProduit;
        this.Libelle = Libelle;
        this.DateFabrication = DateFabrication;
        this.DateExpiration = DateExpiration;
        this.TemperatureStock = TemperatureStock;
        this.NumeroProduit = NumeroProduit;
        this.Prix = Prix;
        this.idpharmacie=idpharmacie;
        this.lien=lien;
        this.quantite = quantite;
    }
    public Produit(int NumeroProduit,int ReferenceProduit, String Libelle, String DateFabrication, String DateExpiration, double TemperatureStock,  double Prix,int idpharmacie, int quantite) {
        this.ReferenceProduit = ReferenceProduit;
        this.Libelle = Libelle;
        this.DateFabrication = DateFabrication;
        this.DateExpiration = DateExpiration;
        this.TemperatureStock = TemperatureStock;
        this.NumeroProduit = NumeroProduit;
        this.Prix = Prix;
        this.idpharmacie=idpharmacie;
        this.lien=lien;
    }
    
    public Produit(int NumeroProduit,int ReferenceProduit, String Libelle, String DateFabrication, String DateExpiration, double TemperatureStock, double Prix,int idpharmacie) {
        this.ReferenceProduit = ReferenceProduit;
        this.Libelle = Libelle;
        this.DateFabrication = DateFabrication;
        this.DateExpiration = DateExpiration;
        this.TemperatureStock = TemperatureStock;
        this.NumeroProduit = NumeroProduit;
        this.Prix = Prix;
        this.idpharmacie=idpharmacie;
    }
    
    public Produit(int NumeroProduit,int ReferenceProduit, String Libelle, String DateFabrication, String DateExpiration, double TemperatureStock,  double Prix) {
        this.ReferenceProduit = ReferenceProduit;
        this.Libelle = Libelle;
        this.DateFabrication = DateFabrication;
        this.DateExpiration = DateExpiration;
        this.TemperatureStock = TemperatureStock;
        this.NumeroProduit = NumeroProduit;
        this.Prix = Prix;
        this.idpharmacie=idpharmacie;
    }

    public Produit() {
        
    }

    public void setTemperatureStock(double TemperatureStock) {
        this.TemperatureStock = TemperatureStock;
    }

    public void setPrix(double Prix) {
        this.Prix = Prix;
    }

    public void setIdpharmacie(int idpharmacie) {
        this.idpharmacie = idpharmacie;
    }

    public int getIdpharmacie() {
        return idpharmacie;
    }
    

    public int getReferenceProduit() {
        return ReferenceProduit;
    }

    public String getLibelle() {
        return Libelle;
    }

    public String getDateFabrication() {
        return DateFabrication;
    }

    public String getDateExpiration() {
        return DateExpiration;
    }

    public double getTemperatureStock() {
        return TemperatureStock;
    }

    public int getNumeroProduit() {
        return NumeroProduit;
    }

    public double getPrix() {
        return Prix;
    }

    public void setReferenceProduit(int ReferenceProduit) {
        this.ReferenceProduit = ReferenceProduit;
    }

    public void setLibelle(String Libelle) {
        this.Libelle = Libelle;
    }

    public void setDateFabrication(String DateFabrication) {
        this.DateFabrication = DateFabrication;
    }

    public void setDateExpiration(String DateExpiration) {
        this.DateExpiration = DateExpiration;
    }

    public void setTemperatureStock(float TemperatureStock) {
        this.TemperatureStock = TemperatureStock;
    }

    public void setNumeroProduit(int NumeroProduit) {
        this.NumeroProduit = NumeroProduit;
    }

    public void setPrix(float Prix) {
        this.Prix = Prix;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    } 

    public String getLien() {
        return lien;
    }

    public void setLien(String lien) {
        this.lien = lien;
    }
    
    
}
