package GeoPharmacie;


public class Utilisateur {
     protected String Nom;
     protected String Prenom;
     protected String Cin;
     protected String tel;
     protected String Email;
     protected String Adresse;
     protected String Pseudo;
     protected String motDePasse;
     
     public Utilisateur(){
         
     }

    public Utilisateur(String Nom, String Prenom, String Cin, String tel, String Email, String Adresse, String Pseudo, String motDePasse) {
        this.Nom = Nom;
        this.Prenom = Prenom;
        this.Cin = Cin;
        this.tel = tel;
        this.Email = Email;
        this.Adresse = Adresse;
        this.Pseudo = Pseudo;
        this.motDePasse = motDePasse;
    }

    public void setNom(String Nom) {
        this.Nom = Nom;
    }

    public void setPrenom(String Prenom) {
        this.Prenom = Prenom;
    }

    public void setCin(String Cin) {
        this.Cin = Cin;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public void setAdresse(String Adresse) {
        this.Adresse = Adresse;
    }

    public void setPseudo(String Pseudo) {
        this.Pseudo = Pseudo;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }


    public String getNom() {
        return Nom;
    }

    public String getPrenom() {
        return Prenom;
    }

    public String getCin() {
        return Cin;
    }

    public String getTel() {
        return tel;
    }

    public String getEmail() {
        return Email;
    }

    public String getAdresse() {
        return Adresse;
    }

    public String getPseudo() {
        return Pseudo;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

 boolean Authentification(String login,String Password){
     return true;
 }    
    
}
