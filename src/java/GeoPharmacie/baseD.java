package GeoPharmacie;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.smartcardio.CommandAPDU;

/**
 *
 * @author Hamza
 */

public class baseD {
    private Connection con;
    public baseD () throws SQLException{
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(baseD.class.getName()).log(Level.SEVERE, null, ex);
        }
          this.con = DriverManager.getConnection(
                         "jdbc:mysql://localhost:3306/geophar",
                         "root",
                         "");
       
    }

    //**********************************************************INSERTION dans L'ADMIN******************************************************************************************
    public void insertInToAdmin( String nom,String prenom,String tele,String cin,String email,String pseudo,String adresse,String motDepasse,int numeroAdmin) throws SQLException
     {

            ////Connection con=connexion();
            Statement stmt = con.createStatement();
            
            String query="INSERT INTO administrateur VALUES (' "+nom+"',' "+prenom+"',"
                    + ""+ tele+",'"+ cin+"',' "+email+"','"+ pseudo+"','"
                    + adresse+"','"+motDepasse+"',"+numeroAdmin+")";
             
             stmt.executeUpdate(query);
           
             
     }
        //**********************************************************INSERTION dans Le client******************************************************************************************
    
     public void insertInToClient( String nom,String prenom,String tele,String cin,String email,String pseudo,String adresse,String motDepasse,int numeroClient) throws SQLException
     {

          //  //Connection con=connexion();
         System.out.println("ibase de donneeeeeeet************************");
            Statement stmt = con.createStatement();
            
            String query="INSERT INTO client  (nom, prenom,cin,tele,email, pseudo,adresse,numeroClient,motDepasse)VALUES(' "+nom+"',' "
                    +prenom+"','"+ cin+"','"
                    +tele+"',' "+email+"','"+ pseudo+"','"
                    + adresse+"',"+numeroClient+",'"+motDepasse+"')";
             System.out.println("ibase de clientttttt************************");
             stmt.executeUpdate(query);
            
             
     }
     //************************************************************************************************************************************************
    public void insertInToPharmacien( String nom,String prenom,String tele,String cin,String email,String pseudo,String adresse,String motDepasse,int numeroPharmacien,int idPharmacie) throws SQLException
     {

           // //Connection con=connexion();
            Statement stmt = con.createStatement();
            
            String query="INSERT INTO pharmacien (numeroPharmacien,+nom,prenom,cin, tele,email, pseudo, adresse,motDepasse,idPharmacie)VALUES ("
                    +numeroPharmacien+",'"+nom+"',' "+prenom+"','"
                    + cin+"','"+ tele+"',' "+email+"','"+ pseudo+"','"+ adresse+"','"+motDepasse+"','"+idPharmacie+"')";
             System.out.println("ibase de pharmacien************************");
             stmt.executeUpdate(query);
           
             
     }
    //*************************************************************************************************************
    public void insertIntoCommande(int numeroCommande,String DateCommande,String EtatCommande)throws SQLException{
       // //Connection con=connexion();
        Statement stmt =con.createStatement();
        
        String query="INSERT INTO commande (numeroCommande,DateCommande,EtatCommande) VALUES("+numeroCommande+",'"+DateCommande+"','"+EtatCommande+"')";
        stmt.execute(query);
        
    }
    //*********************************************************************************************************************
    
    public void insertIntoFacture(int numeroFacture,String DateFacture,double SommeTotale) throws SQLException{
        // //Connection con=connexion();
        Statement stmt =con.createStatement();
        
        String query="INSERT INTO facture (numeroFacture,DateFacture,SommeTotale) VALUES("+numeroFacture+",'"+DateFacture+"',"+SommeTotale+")";
        stmt.execute(query);
        
    }
    //********************************************************************************************************************************
    public void insertIntoLineCommande(int numeroProduit,int numeroCommande,double quantite) throws SQLException{
        ////Connection con=connexion();
        Statement stmt =con.createStatement();
        
        String query="INSERT INTO linecommande(numeroProduit,numeroCommande,quantite) VALUES("+numeroProduit+","+numeroCommande+","+quantite+")";
        stmt.execute(query);
    }
    //************************************************************************************************************************************
    public void insertIntoPaiementcarte(String datePaiement,double montant,int payer,String nomProprietaire,String prenomProprietaire,String numeroCarte,String adresseProprietaire,String CinClient) throws SQLException{
   //payer normalement boolean     
         //Connection con=connexion();
        Statement stmt =con.createStatement();
        
        String query="INSERT INTO paiementcarte(datePaiement,montant,payer,nomProprietaire,prenomProprietaire,numeroCarte,adresseProprietaire,CinClient) VALUES('"+datePaiement+"',"+montant+","+payer+",'"
                +nomProprietaire+"','"+prenomProprietaire+"','"+numeroCarte+"','"+adresseProprietaire+"','"+CinClient+"')";
        stmt.execute(query);
        

    }
    //*****************************************************************************************************************************
     public void insertIntoPaiementLivraison(String datePaiement,double montant,int payer,String nomClient,String prenomClient,String emailClient,String teleClient,String adresseClient,String CinClient) throws SQLException{
   //payer normalement boolean     
         //Connection con=connexion();
        Statement stmt =con.createStatement();
        
        String query="INSERT INTO paiementlivraision(datePaiement,montant,payer,nomClient,prenomClient,emailClient,teleClient,adresseClient,CinClient) VALUES('"+datePaiement+"',"+montant+","+payer+",'"
                +nomClient+"','"+prenomClient+"','"+emailClient+"','"+teleClient+"','"+adresseClient+"','"+CinClient+"')";
        stmt.execute(query);
        

    }
    //*******************************************************************************************************************
    public void insertIntoProduit(int referenceProduit,String libelle,String DateExpiration,String DateFabrication,double TemperatureStock,int numeroProduit,double prix,int idPharmacie) throws SQLException{
        //Connection con=connexion();
        Statement stmt =con.createStatement();
        
        String query="INSERT INTO produit( referenceProduit, libelle,DateExpiration, DateFabrication, TemperatureStock,numeroProduit, prix,idPharmacie)Values ("
                +referenceProduit+", '"+libelle+"','"+DateExpiration+"', '"+DateFabrication+"', "
                +TemperatureStock+","+numeroProduit+", "+prix+","+idPharmacie+")";
        stmt.execute(query);
    }
//*******************************************************************************************************************
    public void insertIntoPlanning(String dateOuverture,String dateFermeture,String dateFerie,String dateGarde) throws SQLException{
        //Connection con=connexion();
        Statement stmt =con.createStatement();
        
        String query="INSERT INTO planning( dateOuverture, dateFermeture,dateFerie,dateGarde)Values ('"+dateOuverture
                +"', '"+dateFermeture+"','"+dateFerie+"','"+dateGarde+"')";
        stmt.execute(query);
    }
    //******************************************************************SUPPRIMER PRODUIT**************
    public void deletProduit(int numeroProduit) throws SQLException{
        //Connection con=connexion();
    Statement stmt = con.createStatement();
  
    String query="delete from produit where numeroProduit = "+numeroProduit;
    stmt.executeUpdate(query);
    }
    //******************************************************************SUPPRIMER COMMANDE**************
    public void deletCommande(int numeroCommande) throws SQLException{
        //Connection con=connexion();
    Statement stmt = con.createStatement();
  
    String query="delete from commande where numeroCommande = "+numeroCommande;
    stmt.executeUpdate(query);
    }
    //-------------------------------****************************************Affichage de la liste des ADMINASTRATEURS***********************--------------------
    
    public ArrayList<Administrateur> selectAdmin() throws SQLException {

    //Connection con=connexion();
    Statement stmt = con.createStatement();
    
    String query="select * from administrateur";
    stmt.executeQuery(query);
    ResultSet rs=stmt.executeQuery(query);
    ArrayList<Administrateur> A=new ArrayList<Administrateur>();
      while(rs.next())
    {
        
        String adresse=rs.getString("adresse");
        String cin=rs.getString("cin");
        String email=rs.getString("email");
        String motDepasse=rs.getString("motDepasse");
        String nom=rs.getString("nom");
        int numeroAdmin=rs.getInt("numeroAdmin");
        String prenom=rs.getString("prenom");
        String pseudo=rs.getString("pseudo");
        String tele=rs.getString("tele");
        Administrateur ad=new Administrateur(numeroAdmin, nom, prenom, cin, tele, email, adresse, pseudo, motDepasse);
        A.add(ad);
                }
        return A;
    
    }
    //-------------------------------****************************************Affichage de la liste des CLIETS***********************--------------------
    public boolean VerifierExistanceClient(String cin) throws SQLException{
       String req="select numeroClient from client where cin='"+cin+"'";
       Statement smt=con.createStatement();
       ResultSet rs=smt.executeQuery(req);

       return rs.next();
    }
    public ArrayList<Client> selectClient() throws SQLException {

    //Connection con=connexion();
    Statement stmt = con.createStatement();
    
    String query="select * from client";
    stmt.executeQuery(query);
    ResultSet rs=stmt.executeQuery(query);
    ArrayList<Client> C=new ArrayList<Client>();
      while(rs.next())
    {
        
        String adresse=rs.getString("adresse");
        String cin=rs.getString("cin");
        String email=rs.getString("email");
        String motDepasse=rs.getString("motdepasse");
        String nom=rs.getString("nom");
        int numeroAdmin=rs.getInt("numeroClient");
        String prenom=rs.getString("prenom");
        String pseudo=rs.getString("pseudo");
        String tele=rs.getString("tele");
        Client cl=new Client(numeroAdmin, nom, prenom, cin, tele, email, adresse, pseudo, motDepasse);
        C.add(cl);
                }
        return C;
    
    }
    //***********************************************************************************************************
     public boolean VerifierExistancePharmacien(String cin) throws SQLException{
       String req="select numeroPharmacien from pharmacien where cin='"+cin+"'";
       Statement smt=con.createStatement();
       ResultSet rs=smt.executeQuery(req);

       return rs.next();
    }
    ///**********************************************************************************************************
     public ArrayList<Pharmacien> selectPharmacien() throws SQLException {

    //Connection con=connexion();
    Statement stmt = con.createStatement();
    
    String query="select * from pharmacien";
    stmt.executeQuery(query);
    ResultSet rs=stmt.executeQuery(query);
    ArrayList<Pharmacien> P=new ArrayList<Pharmacien>();
      while(rs.next())
    {
        
        String adresse=rs.getString("adresse");
        String cin=rs.getString("cin");
        String email=rs.getString("email");
        String motDepasse=rs.getString("motdepasse");
        String nom=rs.getString("nom");
        int numeroAdmin=rs.getInt("numeroPharmacien");
        String prenom=rs.getString("prenom");
        String pseudo=rs.getString("pseudo");
        String tele=rs.getString("tele");
        Pharmacien ph=new Pharmacien(numeroAdmin, nom, prenom, cin, tele, email, adresse, pseudo, motDepasse);
        P.add(ph);
                }
        return P;
    
    }
     //******************************************************************************************************************
     public ArrayList<Commande> selectCommande() throws SQLException {

    //Connection con=connexion();
    Statement stmt = con.createStatement();
    
    String query="select * from commande";
    stmt.executeQuery(query);
    ResultSet rs=stmt.executeQuery(query);
    ArrayList<Commande> Co=new ArrayList<Commande>();
     while(rs.next())
    {
       String dateCommande=rs.getString("dateCommande");
       String EtatCommade=rs.getString("EtatCommade");
       int numeroCommande=rs.getInt("numeroCommande");
       Commande com=new Commande( numeroCommande, dateCommande, EtatCommade);
       Co.add(com);
    
    
     }
    return Co;
     }
     //******************************************************************************************
     public LinkedList<Pharmacie> AfficherPharmacie() throws SQLException{
         String req = "select * from pharmacie";
        LinkedList<Pharmacie> phar = new LinkedList<Pharmacie>();
        Statement st = con.createStatement();
        ResultSet rst = st.executeQuery(req);
        while(rst.next()){
            int idpharmacie=rst.getInt(1);
            String nomPharmacie = rst.getString(2);
            String adresse =rst.getString(3);
            String tel =rst.getString(4);
            
            Pharmacie ph = new Pharmacie(idpharmacie, nomPharmacie, adresse, tel);
            phar.add(ph);
        }
        
        return phar;
     }
     //*****************************************************************************************************************************
     public LinkedList<Produit> AfficherProduit() throws SQLException{
        String req = "select * from produit";
        LinkedList<Produit> p = new LinkedList<Produit>();
        Statement st = con.createStatement();
        ResultSet rst = st.executeQuery(req);
        while(rst.next()){
            int num = rst.getInt(1);
            int ref = rst.getInt(2);
            String libelle = rst.getString(3);
            String d1 = rst.getString(4);
            String d2 = rst.getString(5);
            Double temp = rst.getDouble(6);
            Double prix = rst.getDouble(7);
          //  String d1 = new java.util.Date(dateEx.getTime());
           // String d2 = new java.util.Date(dateFb.getTime());
           
            Produit pr = new Produit(num, ref, libelle, d1, d2, temp, prix);
            p.add(pr);
        }
        return p;
    }
 
    public LinkedList<Facture> AfficherFacture(int numerofacture) throws SQLException{
        String req = "select * from facture where numerofacture="+numerofacture;
        LinkedList<Facture> p = new LinkedList<Facture>();
        Statement st = con.createStatement();
        ResultSet rst = st.executeQuery(req);
        while(rst.next()){
            int num = rst.getInt(1);
           String d1 = rst.getString(2);
            Double some = rst.getDouble(3);
            
            Facture f = new Facture(num, d1, some);
            p.add(f);
        }
        return p;
    }
//// UPDATE ADMIN
 
    public void modifierAdmin(int numeroAdmin ,String nom, String prenom, String cin, String tel, String email, String adresse, String pseudo, String motdepasse) throws SQLException{
        PreparedStatement stm = con.prepareStatement("update administrateur SET nom=?, prenom=?, cin=?, tele=?, email=?, adresse=?, pseudo=?, motdepasse=? where numeroadmin=?");
        stm.setString(1, nom);
        stm.setString(2, prenom);
        stm.setString(3,cin);
        stm.setString(4, tel);
        stm.setString(5, email);
        stm.setString(6, adresse);
        stm.setString(7, pseudo);
        stm.setString(8, motdepasse);
        stm.setInt(9, numeroAdmin);
        stm.executeUpdate();
    }
 
// UPDATE COMMANDE
    public void modifierCommande(int numeroCommande, String dateCommande, String EtatCommande) throws SQLException{
        PreparedStatement stm = con.prepareStatement("update Commande SET dateCommande=?, EtatCommande=? where numeroCommande=?");
    stm.setString(1, dateCommande);
    stm.setString(2, EtatCommande);
        stm.setInt(3, numeroCommande);
        stm.executeUpdate();
    }
 
// UPDATE CLIENT
     public void modifierClient(int numeroClient, String nom, String prenom, String cin, String tel, String email, String adresse, String pseudo, String motdepasse) throws SQLException{
        PreparedStatement stm = con.prepareStatement("update client SET nom=?, prenom=?, cin=?, tele=?, email=?, adresse=?, pseudo=?, motdepasse=? where numeroClient=?");
        stm.setString(1, nom);
    stm.setString(2, prenom);
    stm.setString(3,cin);
    stm.setString(4, tel);
    stm.setString(5, email);
    stm.setString(6, adresse);
    stm.setString(7, pseudo);
    stm.setString(8, motdepasse);
    stm.setInt(9, numeroClient);
        stm.executeUpdate();
    }
 
// UPDATE FACTURE
    public void modifierFacture(int numeroFacture, String DateFacture, double SommeTotale) throws SQLException{
        PreparedStatement stm = con.prepareStatement("update Facture SET DateFacture=?, SommeTotale=? where numeroFacture=?");
        stm.setString(1, DateFacture);
    stm.setDouble(2, SommeTotale);
    stm.setInt(3, numeroFacture);
        stm.executeUpdate();
    }
 
// UPDATE PHARMACIEN
    public void modifierPharmacien(int numeroPharmacien, String nom, String prenom, String cin, String tel, String email, String adresse, String pseudo, String motdepasse) throws SQLException{
        PreparedStatement stm = con.prepareStatement("update pharmacien SET nom=?, prenom=?, cin=?, tele=?, email=?, adresse=?, pseudo=?, motdepasse=? where numeroPharmacien=?");
        stm.setString(1, nom);
    stm.setString(2, prenom);
    stm.setString(3,cin);
    stm.setString(4, tel);
    stm.setString(5, email);
    stm.setString(6, adresse);
    stm.setString(7, pseudo);
    stm.setString(8, motdepasse);
    stm.setInt(9, numeroPharmacien);
        stm.executeUpdate();
    }
 
// UPDATE PRODUIT
    public void modifierProduit(int numeroProduit, int referenceProduit, String libelle, String dateExpiration, String dateFabrication, double TemperaturStock, double prix) throws SQLException{
        PreparedStatement stm = con.prepareStatement("update produit SET referenceProduit=?, libelle=?, dateExpiration=?, dateFabrication=?, TemperatureStock=?, prix=? where numeroProduit=?");
        stm.setInt(1, referenceProduit);
    stm.setString(2, libelle);
    stm.setString(3, dateExpiration);
    stm.setString(4, dateFabrication);
    stm.setDouble(5, TemperaturStock);
    stm.setDouble(6, prix);
    stm.setInt(7, numeroProduit);
        stm.executeUpdate();
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     public static void main(String[] args) throws SQLException, ParseException, ClassNotFoundException{
       baseD mydb = new baseD();// makandirouch had chi tanchedo la base données o tandiroha f classe bohdha chouf
      
     // mydb.insertInToAdmin("nomAdmin12","prenom2", "0670044061"," mc256482"," email"," pseudo"," adresse",3," motDepasse", 0);
      mydb.insertInToClient("hh", "pm"," tele", "in", "email", "pseudo", "adresse", "1234", 0);
    // mydb.insertInToPharmacien("nom"," prenom"," tele11", "cin"," email"," pseudo", "adresse", "motDepasse", 0,2);
     // mydb.insertIntoCommande(0, "2018-1-14", "EtatCommande");
     // mydb.insertIntoFacture(0,"2018-1-14",1523);
     // mydb.insertIntoLineCommande(8, 17, 7);
     // mydb.insertIntoPaiementcarte("2017-5-14", 121.0, 1, "nomp", "prenomProprietaire","123", "rue najd el jadida", "mc456182");
     // mydb.insertIntoPaiementLivraison("2017-4-14", 0, 0, "nomClient"," prenomClient"," emailClient"," teleClient"," adresseClient", "CinClient");
   // mydb.insertIntoProduit(0, "libelle", "2017-12-14", "2017-5-14", 2, 0, 12,2);
    // mydb.insertIntoPlanning("2018-1-14","2018-1-14","2018-1-14","2018-1-14");
   // mydb.deletProduit(1);
    }
    
}
