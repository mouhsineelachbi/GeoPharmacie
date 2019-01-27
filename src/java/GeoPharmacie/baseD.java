package GeoPharmacie;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;


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
    public void insertInToAdmin( String nom,String prenom,String tele,String cin,String email,String pseudo,String adresse,String motDepasse,int numeroAdmin) throws SQLException{
        Statement stmt = con.createStatement();
        String query="INSERT INTO administrateur VALUES (' "+nom+"',' "+prenom+"',"
                    + ""+ tele+",'"+ cin+"',' "+email+"','"+ pseudo+"','"
                    + adresse+"','"+motDepasse+"',"+numeroAdmin+")";
        stmt.executeUpdate(query);
           
             
     }
//**********************************************************INSERTION dans Le client******************************************************************************************
    
    public void insertInToClient( String nom,String prenom,String tele,String cin,String email,String pseudo,String adresse,String motDepasse,int numeroClient) throws SQLException{
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
    public void insertInToPharmacie(int idpharmacie,String nomPharmacie,String adresse,String tel) throws SQLException{
        Statement stmt = con.createStatement();
        String query="INSERT INTO pharmacie (idpharmacie, nomPharmacie, adresse,numeroPharmacien,tel)VALUES ("+idpharmacie+",'"
                    +nomPharmacie+"',' "+adresse+"','"+tel+"')";
        System.out.println("ibase de pharmacien************************");
        stmt.executeUpdate(query);
    }

//************************************************************************************************************************************************
    public void insertInToPharmacien( String nom,String prenom,String tele,String cin,String email,String pseudo,String adresse,String motDepasse,int numeroPharmacien,int idPharmacie) throws SQLException{
        Statement stmt = con.createStatement();
        String query="INSERT INTO pharmacien (numeroPharmacien,nom,prenom,cin, tele,email, pseudo, adresse,motDepasse,idPharmacie)VALUES ("
                    +numeroPharmacien+",'"+nom+"',' "+prenom+"','"
                    + cin+"','"+ tele+"',' "+email+"','"+ pseudo+"','"+ adresse+"','"+motDepasse+"',"+idPharmacie+")";
        System.out.println("**********************ibase de pharmacien********        idPharmacie   "+idPharmacie+"              ****************");
        stmt.executeUpdate(query);
    }
    
    //*************************************************************************************************************
    public void insertIntoCommande(int numeroCommande,String DateCommande,String EtatCommande)throws SQLException{
        Statement stmt =con.createStatement();
        String query="INSERT INTO commande (numeroCommande,DateCommande,EtatCommande) VALUES("+numeroCommande+",'"+DateCommande+"','"+EtatCommande+"')";
        stmt.execute(query);
    }

//*********************************************************************************************************************
    
    public void insertIntoFacture(int numeroFacture,String DateFacture,double SommeTotale) throws SQLException{
        Statement stmt =con.createStatement();
        String query="INSERT INTO facture (numeroFacture,DateFacture,SommeTotale) VALUES("+numeroFacture+",'"+DateFacture+"',"+SommeTotale+")";
        stmt.execute(query);
    }
    
//********************************************************************************************************************************
 
    public void insertIntoLineCommande(int numeroProduit,int numeroCommande,double quantite) throws SQLException{
        Statement stmt =con.createStatement();
        String query="INSERT INTO linecommande(numeroProduit,numeroCommande,quantite) VALUES("+numeroProduit+","+numeroCommande+","+quantite+")";
        stmt.execute(query);
    }
    
//************************************************************************************************************************************
    public void insertIntoPaiementcarte(String datePaiement,double montant,int payer,String nomProprietaire,String prenomProprietaire,String numeroCarte,String adresseProprietaire,String CinClient) throws SQLException{
        Statement stmt =con.createStatement();
        String query="INSERT INTO paiementcarte(datePaiement,montant,payer,nomProprietaire,prenomProprietaire,numeroCarte,adresseProprietaire,CinClient) VALUES('"+datePaiement+"',"+montant+","+payer+",'"
                +nomProprietaire+"','"+prenomProprietaire+"','"+numeroCarte+"','"+adresseProprietaire+"','"+CinClient+"')";
        stmt.execute(query);
    }
    
//*****************************************************************************************************************************
    public void insertIntoPaiementLivraison(String datePaiement,double montant,int payer,String nomClient,String prenomClient,String emailClient,String teleClient,String adresseClient,String CinClient) throws SQLException{
        Statement stmt =con.createStatement();
        String query="INSERT INTO paiementlivraision(datePaiement,montant,payer,nomClient,prenomClient,emailClient,teleClient,adresseClient,CinClient) VALUES('"+datePaiement+"',"+montant+","+payer+",'"
                +nomClient+"','"+prenomClient+"','"+emailClient+"','"+teleClient+"','"+adresseClient+"','"+CinClient+"')";
        stmt.execute(query);}
    
//*******************************************************************************************************************

    public void insertIntoProduit(int referenceProduit,String libelle,String DateExpiration,String DateFabrication,double TemperatureStock,int numeroProduit,double prix,int idPharmacie) throws SQLException{
        Statement stmt =con.createStatement();
        String query="INSERT INTO produit( referenceProduit, libelle,DateExpiration, DateFabrication, TemperatureStock,numeroProduit, prix,idPharmacie)Values ("
                +referenceProduit+", '"+libelle+"','"+DateExpiration+"', '"+DateFabrication+"', "
                +TemperatureStock+","+numeroProduit+", "+prix+","+idPharmacie+")";
        stmt.execute(query);
    }

//*******************************************************************************************************************
    
    public void insertIntoPlanning(String dateOuverture,String dateFermeture,String dateFerie,String dateGarde) throws SQLException{
        Statement stmt =con.createStatement();
        String query="INSERT INTO planning( dateOuverture, dateFermeture,dateFerie,dateGarde)Values ('"+dateOuverture
                +"', '"+dateFermeture+"','"+dateFerie+"','"+dateGarde+"')";
        stmt.execute(query);
    }
    //ajouter une date de ferie 
     public void insertIntoDateFerie(int idDateFirie,String heureDM,String heureFM,String heureDS,String heureFS,int idPharmacie,String jourFerie) throws SQLException{
        Statement stmt =con.createStatement();
        String query="INSERT INTO datefirieropos (idDateFirie,heureDM,heureFM,heureDS,heureFS,idPharmacie,jourFerie) VALUES("+idDateFirie+",'"+heureDM+"','"+heureFM+"','"+heureDS+"','"+heureFS+"',"+idPharmacie+",'"+jourFerie+"')";
        stmt.execute(query);
    }
     //ajouter une date de Garde
     public void insertIntoDateGarde(int idDateGarde,String heureDM,String heureFM,String heureDS,String heureFS,int idPharmacie,String jourGarde) throws SQLException{
        Statement stmt =con.createStatement();
        String query="INSERT INTO dategarde (idDateGarde,heureDM,heureFM,heureDS,heureFS,idPharmacie,jourGarde) VALUES("+idDateGarde+",'"+heureDM+"','"+heureFM+"','"+heureDS+"','"+heureFS+"',"+idPharmacie+",'"+jourGarde+"')";
        stmt.execute(query);
    }
    //******************************************************************SUPPRIMER PRODUIT**************
    public void deletProduit(int numeroProduit) throws SQLException{
        Statement stmt = con.createStatement();
        String query="delete from produit where numeroProduit = "+numeroProduit;
        stmt.executeUpdate(query);
    }
    
//******************************************************************SUPPRIMER COMMANDE**************
    
    public void deletCommande(int numeroCommande) throws SQLException{
        Statement stmt = con.createStatement();
        String query="delete from commande where numeroCommande = "+numeroCommande;
        stmt.executeUpdate(query);
    }
    
//-------------------------------****************************************Affichage de la liste des ADMINASTRATEURS***********************--------------------
    
    public ArrayList<Administrateur> selectAdmin() throws SQLException {
        Statement stmt = con.createStatement();
        String query="select * from administrateur";
        stmt.executeQuery(query);
        ResultSet rs=stmt.executeQuery(query);
        ArrayList<Administrateur> A=new ArrayList<Administrateur>();
        while(rs.next()){
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
       String req = "select numeroClient from client where cin='"+cin+"'";
       Statement st = con.createStatement();
       ResultSet rs = st.executeQuery(req);
       return rs.next();
    }
    //afficher les date de gareds de la pharmacie
    public LinkedList<DateGarde> AfficherDateGarde(int idpharmacie)throws SQLException {
        LinkedList<DateGarde> fs=new LinkedList<DateGarde>(); 
        String req = "select * from dategarde where idpharmacie ="+idpharmacie+"";
        Statement st = con.createStatement();
        ResultSet rst = st.executeQuery(req);
        while(rst.next()){
        int idDateGarde=rst.getInt(1);
        String heureDM=rst.getString(3);     
        String heureFM=rst.getString(4);
        String heureDS=rst.getString(5);
        String heureFS=rst.getString(6);
        String jourGarde=rst.getString(2);
             
        DateGarde f=new DateGarde(idDateGarde, heureDM, heureFM, heureDS, heureFS, idpharmacie, jourGarde);
            fs.add(f);
        } 
        return fs;
    }
    
//Afficher une suel date de ferie de la pharmacie
    public DateFerie DateFerie(int idDateFirie)throws SQLException {
         DateFerie f=new DateFerie();
        String req = "select * from datefirieropos where idDateFirie ="+idDateFirie+"";
        Statement st = con.createStatement();
        ResultSet rst = st.executeQuery(req);
        while(rst.next()){
        int idpharmacie=rst.getInt(6);
        String heureDM=rst.getString(2);     
        String heureFM=rst.getString(3);
        String heureDS=rst.getString(4);
        String heureFS=rst.getString(5);
        String jourferie=rst.getString(7);
             
        f=new DateFerie(idDateFirie, heureDM, heureFM, heureDS, heureFS, idpharmacie, jourferie);
            
        } 
        return f;
    }
//afficher les dates de feries de la pharmacie        
    public LinkedList<DateFerie> AfficherDateFeries(int idpharmacie)throws SQLException {
        LinkedList<DateFerie> fs=new LinkedList<DateFerie>(); 
        String req = "select * from datefirieropos where idpharmacie ="+idpharmacie+"";
        Statement st = con.createStatement();
        ResultSet rst = st.executeQuery(req);
        while(rst.next()){
        int idDateFirie=rst.getInt(1);
        String heureDM=rst.getString(2);     
        String heureFM=rst.getString(3);
        String heureDS=rst.getString(4);
        String heureFS=rst.getString(5);
        String jourferie=rst.getString(7);
             
        DateFerie f=new DateFerie(idDateFirie, heureDM, heureFM, heureDS, heureFS, idpharmacie, jourferie);
            fs.add(f);
        } 
        return fs;
    }
    //afficher une seule Client
    public Client selectClient(String cin) throws SQLException{
        String req = "select * from client where cin ='"+cin+"'";
        Statement st = con.createStatement();
        ResultSet rst = st.executeQuery(req);

        int numClient = rst.getInt(1);
        String nom = rst.getString(2);
        String prenom = rst.getString(3);
        String email = rst.getString(5);
        String tel = rst.getString(6);
        String adresse = rst.getString(7);
        String pseudo = rst.getString(8);
        String password = rst.getString(9);
        Client c = new Client(numClient, nom, prenom, cin, tel, email, adresse, pseudo, password);
        return c;
    }
    // AFFUICHER LA LISTES DES CLIENT 
    public LinkedList<Client> selectClient() throws SQLException{
        LinkedList<Client> lc = new LinkedList<Client>();
        String req = "select * from client";
        Statement st = con.createStatement();
        ResultSet rst = st.executeQuery(req);
        while(rst.next()){
            int numClient = rst.getInt(1);
            String nom = rst.getString(2);
            String prenom = rst.getString(3);
            String cin = rst.getString(4);
            String email = rst.getString(5);
            String tel = rst.getString(6);
            String adresse = rst.getString(7);
            String pseudo = rst.getString(8);
            String password = rst.getString(9);
            Client c = new Client(numClient, nom, prenom, cin, tel, email, adresse, pseudo, password);
            lc.add(c);
        }
        return lc;
    }
    //  AFFICHER UN SEULE CLIEN 
    public Client informationsClient(String cin) throws SQLException{
        Client c = new Client();
        Statement stmt = con.createStatement();
        String query="select * from client where cin='"+cin+"' ";
        stmt.executeQuery(query);
        ResultSet rs = stmt.executeQuery(query);
        while(rs.next()){
        //cin=rs.getString("cin");
        String email=rs.getString("email");
        String motDepasse=rs.getString("motdepasse");
        String nom=rs.getString("nom");
        int numeroAdmin=rs.getInt("numeroClient");
        String prenom=rs.getString("prenom");
        String pseudo=rs.getString("pseudo");
        String tele=rs.getString("tele");
        String adresse=rs.getString(7);
         c= new Client(numeroAdmin, nom, prenom, cin, tele, email, adresse, pseudo, motDepasse);
        }
         return c;
    }
        
//**********************************************************************************************************
    public boolean VerifierExistanceNomPharmacie(String nom) throws SQLException{
         String req="select idpharmacie from pharmacie where nomPharmacie='"+nom+"'";
       Statement smt=con.createStatement();
       ResultSet rs=smt.executeQuery(req);
       return rs.next();
    }
    
//***********************************************************************************************************
    public boolean VerifierExistancePharmacien(String cin) throws SQLException{
       String req="select numeroPharmacien from pharmacien where cin='"+cin+"'";
       Statement smt=con.createStatement();
       ResultSet rs=smt.executeQuery(req);
       return rs.next();
    }
     
//**********************************************************************************************************
    public Pharmacien selectPharmacien(String cin) throws SQLException{
        Pharmacien p=new Pharmacien();
        Statement st = con.createStatement();
        String req = "select * from pharmacien where cin='"+cin+"'";
        st.executeQuery(req);
        ResultSet rst = st.executeQuery(req);
        while(rst.next()){
        int numeroPharmacien = rst.getInt(1);
        String nom = rst.getString(2);
        String prenom = rst.getString(3);
        String tel = rst.getString(5);
        String email = rst.getString(6);
        String pseudo = rst.getString(7);
        String adresse = rst.getString(8);
        String password = rst.getString(9);
        int idPharmacie = rst.getInt(10);
     
        p =new Pharmacien(numeroPharmacien, nom, prenom, cin, tel, email, adresse, pseudo, password, idPharmacie);
        }
        return p;
    }
 
    public String NomPharmacie(int idPharmacie) throws SQLException{
        Pharmacie p=new Pharmacie();
        String nomPharmacie="";
        Statement st = con.createStatement();
        String req = "select * from pharmacie where idpharmacie='"+idPharmacie+"'";
        st.executeQuery(req);
        ResultSet rst = st.executeQuery(req);
        while(rst.next()){
        
        nomPharmacie = rst.getString(2);
        }
        return nomPharmacie;
    }
    public Pharmacie selectPharmacie(int idPharmacie) throws SQLException{
        Pharmacie p=new Pharmacie();
        Statement st = con.createStatement();
        String req = "select * from pharmacie where idpharmacie='"+idPharmacie+"'";
        st.executeQuery(req);
        ResultSet rst = st.executeQuery(req);
        while(rst.next()){
        
        String nomPharmacie = rst.getString(2);
        String adresse = rst.getString(3);
        String tel = rst.getString(4);
        
            System.out.println("*******************************bd1********************idPharmacie="+idPharmacie);
        p =new Pharmacie(idPharmacie, nomPharmacie, adresse, tel);
        
         System.out.println("**********************************bd2*****************idPharmacie="+nomPharmacie);
       
        }
        return p;
    }
    
    public ArrayList<Pharmacien> selectPharmacien() throws SQLException {
        Statement stmt = con.createStatement();
        String query="select (numeroPharmacien,nom,prenom,cin tele,email,pseudo,adresse,password,idpharmacie) from pharmacien";
        stmt.executeQuery(query);
        ResultSet rst = stmt.executeQuery(query);
        ArrayList<Pharmacien> P = new ArrayList<Pharmacien>();
        while(rst.next()){
            int numeroPharmacien = rst.getInt(1);
            String nom = rst.getString(2);
            String prenom = rst.getString(3);
            String cin = rst.getString(4);
            String tel = rst.getString(5);
            String email = rst.getString(6);
            String pseudo = rst.getString(7);
            String adresse = rst.getString(8);
            String password = rst.getString(9);
            int idPharmacie = Integer.parseInt(rst.getString(10));
            System.out.println(rst.getInt(10));
            Pharmacien ph=new Pharmacien(numeroPharmacien , nom, prenom, cin, tel, email, adresse, pseudo, password, idPharmacie);
            P.add(ph);
        }
        return P;
    }
    
//******************************************************************************************************************
    public ArrayList<Commande> selectCommande() throws SQLException {
        Statement stmt = con.createStatement();
        String query="select * from commande";
        stmt.executeQuery(query);
        ResultSet rs=stmt.executeQuery(query);
        ArrayList<Commande> Co = new ArrayList<Commande>();
        while(rs.next()){
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

//******************************************************************************************
    
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
            int idpharmacie=rst.getInt(8);
            String lien=rst.getString(9);
            Produit pr = new Produit(num, ref, libelle, d1, d2, temp, prix,idpharmacie,lien);
            p.add(pr);
        }
        return p;
    }
    //*****************************************************************************************
 
    public LinkedList<Facture> AfficherFacture(int numerofacture) throws SQLException{
        String req = "select * from facture where numerofacture="+numerofacture+"";
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
    //AFFICHER PLANIING DE LA PHARMACIE
    public LinkedList<Planning> AfficherPlannig(int idPharmacie) throws SQLException{
        String req = "select * from Plannig where idPharmacie="+idPharmacie+"";
        LinkedList<Planning> p = new LinkedList<Planning>();
        Statement st = con.createStatement();
        ResultSet rst = st.executeQuery(req);
        while(rst.next()){
            int idplanning = rst.getInt(1);
            String dateOuverture = rst.getString(2);
            String dateFermeture = rst.getString(3);
            String dateFerie = rst.getString(4);
            String dateGarde = rst.getString(5);
             
            Double prix = rst.getDouble(7);
            int idpharmacie=rst.getInt(8);
            Planning pr = new Planning(dateOuverture, dateFermeture, dateFerie, dateGarde, idpharmacie);
            p.add(pr);
        }
        return p;
    }
    
    //Rechercher par nom de produit
    public LinkedList<Produit> rechercheProduit(String nomProd) throws SQLException{
        Produit p;
         LinkedList <Produit>lisprod=new LinkedList<>();
        Statement stmt = con.createStatement();
        String query="select * from produit where libelle LIKE '%"+nomProd+"%'";
        stmt.executeQuery(query);
        ResultSet rs=stmt.executeQuery(query);
        while(rs.next()){
            int numeroProduit=rs.getInt(1);
            int referenceProduit=rs.getInt(2);
            String libelle=rs.getString(3);
            String DateFabrication=rs.getString(5);
            String DateExpiration=rs.getString(4);
            double TemperatureStock=rs.getDouble(6);
            double prix=rs.getDouble(7);
            int idpharmacie=rs.getInt(8);
            String lien=rs.getString(9);
            p=new Produit(numeroProduit, referenceProduit, libelle, DateFabrication, DateExpiration, TemperatureStock, prix,idpharmacie,lien);
            lisprod.add(p);
        }
       
        return lisprod;
    }
    public LinkedList<Pharmacie> recherchePharmacie(String nomPharcie) throws SQLException{
        Pharmacie p;
         LinkedList <Pharmacie>lispharcie=new LinkedList<>();
        Statement stmt = con.createStatement();
        String query="select * from pharmacie where nomPharmacie LIKE '%"+nomPharcie+"%'";
        stmt.executeQuery(query);
        ResultSet rs=stmt.executeQuery(query);
        while(rs.next()){
           int idpharmacie=rs.getInt(1);
            String adress=rs.getString(3);
            String tel =rs.getString(4);
           String nomPharmacie=rs.getString(2);
            
            p=new Pharmacie(idpharmacie, nomPharmacie, adress, tel);
            
            lispharcie.add(p);
        }
       
        return lispharcie;
    }
    //AFFICHER 1-PRODUIT PAR NOM
    public  Produit UneProduit(String libelle) throws SQLException{
        Produit p=new Produit();
        Statement stmt = con.createStatement();
        if(!libelle.equals(""))
        {
            String query=" select * from produit where libelle like'%"+libelle+"%'";
            System.out.println("1-libelle---------------"+libelle);
            //stmt.executeQuery(query);
             ResultSet rs;
            rs=stmt.executeQuery(query);
            System.out.println("2-libelle---------------"+libelle+" "+rs);
            while(rs.next()){
                int numeroProduit=rs.getInt(1);
                int referenceProduit=rs.getInt(2);
                String DateFabrication=rs.getString(5);
                String DateExpiration=rs.getString(4);
                double TemperatureStock=rs.getDouble(6);
                double prix=rs.getDouble(7);
                int idpharmacie=rs.getInt(8);
                String lien=rs.getString(9);
                p=new Produit(numeroProduit, referenceProduit, libelle, DateFabrication, DateExpiration, TemperatureStock, prix,idpharmacie,lien);
            }
        }
        return p;
    }
     //AFFICHER 1-PRODUIT PAR NOM
    public  Pharmacie UnePharmacie(String libelle) throws SQLException{
        Pharmacie p=new Pharmacie();
        Statement stmt = con.createStatement();
        String query=" select * from Pharmacie where nomPharmacie like'%"+libelle+"%'";
        System.out.println("1-libelle---------------"+libelle);
        //stmt.executeQuery(query);
         ResultSet rs;
        rs=stmt.executeQuery(query);
        System.out.println("2-libelle---------------"+libelle+" "+rs);
        while(rs.next()){
            int idpharmacie=rs.getInt(1);
            String adress=rs.getString(3);
            String tel =rs.getString(4);
           
            
            p=new Pharmacie(idpharmacie, libelle, adress, tel);
        }
        return p;
    }
    //Update date ferie
     public void UpdateDateFerie(int idDateFirie,String heureDM,String heureFM,String heureDS,String heureFS,int idPharmacie,String jourFerie) throws SQLException{
        PreparedStatement stm = con.prepareStatement("update datefirieropos SET  heureDM=?, heureFM=?, heureDS=?, heureFS=?, idPharmacie=?, jourFerie=? where idDateFirie=?");
        
        stm.setString(1, heureDM);
        stm.setString(2, heureFM);
        stm.setString(3,heureDS);
        stm.setString(4, heureFS);
        stm.setString(6, jourFerie);
        stm.setInt(5, idPharmacie);
        stm.setInt(7, idDateFirie);
        stm.executeUpdate();
        
    }
 
    //update date garde 
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
	// UPDATE PHARMACIE
	public void modifierPharmacie(Pharmacie c) throws SQLException{
        System.out.println("nomPharmacie"+c.getNomPharmacie());
         Statement st = con.createStatement();
        String req = "update pharmacie SET nomPharmacie='"+c.getNomPharmacie()+"', adresse='"+c.getAdresse()+"', tel='"+c.getTele()+"' where idpharmacie="+c.getIdPharmacie()+" ";
        //st.executeQuery(req);
       // PreparedStatement stm = con.prepareStatement("");
       System.out.println("nomPharmacie"+c.getNomPharmacie());
        st.executeUpdate(req);
      
    }
    
 
// UPDATE PHARMACIEN
    public void modifierPharmacien(int idPharmacie, String nom, String prenom, String cin, String tel, String email, String adresse, String pseudo, String motdepasse,int numeroPharmacien) throws SQLException{
        PreparedStatement stm = con.prepareStatement("update pharmacien SET nom=?, prenom=?, cin=?, tele=?, email=?, adresse=?, pseudo=?, motdepasse=? ,idPharmacie=? where numeroPharmacien=?");
        stm.setString(1, nom);
        stm.setString(2, prenom);
        stm.setString(3,cin);
        stm.setString(4, tel);
        stm.setString(5, email);
        stm.setString(6, adresse);
        stm.setString(7, pseudo);
        stm.setString(8, motdepasse);
        stm.setInt(9, idPharmacie);
        stm.setInt(10, numeroPharmacien);
        stm.executeUpdate();
        System.out.println("======================================================= IdPharmacie ==="+idPharmacie+" tele =======   "+tel);
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
        //mydb.insertInToClient("hh", "pm"," tele", "in", "email", "pseudo", "adresse", "1234", 0);
        // mydb.insertInToPharmacien("nom"," prenom"," tele11", "cin"," email"," pseudo", "adresse", "motDepasse", 0,2);
        // mydb.insertIntoCommande(0, "2018-1-14", "EtatCommande");
        // mydb.insertIntoFacture(0,"2018-1-14",1523);
        // mydb.insertIntoLineCommande(8, 17, 7);
        // mydb.insertIntoPaiementcarte("2017-5-14", 121.0, 1, "nomp", "prenomProprietaire","123", "rue najd el jadida", "mc456182");
        // mydb.insertIntoPaiementLivraison("2017-4-14", 0, 0, "nomClient"," prenomClient"," emailClient"," teleClient"," adresseClient", "CinClient");
        // mydb.insertIntoProduit(0, "libelle", "2017-12-14", "2017-5-14", 2, 0, 12,2);
        // mydb.insertIntoPlanning("2018-1-14","2018-1-14","2018-1-14","2018-1-14");
        // mydb.deletProduit(1);
        
       /* Pharmacie c = mydb.selectPharmacie(1);
        c.setNomPharmacie("anasio");
        
        mydb.modifierPharmacie(c);
         System.out.println(c);
         System.out.println("hello !!");*/
       mydb.insertIntoDateGarde(0, "19:30:10","19:30:10", "19:30:10","19:30:10", 1, "2018-1-14");
       mydb.insertIntoDateFerie(0, "19:30:10","19:30:10", "19:30:10","19:30:10", 1, "2018-1-14");
    }
    
}