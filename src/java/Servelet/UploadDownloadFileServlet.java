package Servelet;

import GeoPharmacie.Pharmacie;
import GeoPharmacie.baseD;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



/**
 * Servlet implementation class test
 */
@WebServlet("/uploadA")
public class UploadDownloadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletFileUpload uploader = null;

   
        
        
        /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadDownloadFileServlet() {
        super();
        // TODO Auto-generated constructor stub
        
    }
    public void init() throws ServletException{
		DiskFileItemFactory fileFactory = new DiskFileItemFactory();
		File filesDir = (File) getServletContext().getAttribute("FILES_DIR_FILE");
		fileFactory.setRepository(filesDir);
		this.uploader = new ServletFileUpload(fileFactory);
                System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            try {
                System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
			List<FileItem> fileItemsList = uploader.parseRequest(request);
			Iterator<FileItem> fileItemsIterator = fileItemsList.iterator();
			while(fileItemsIterator.hasNext()){
				FileItem fileItem = fileItemsIterator.next();
				System.out.println("FieldName="+fileItem.getFieldName());
				System.out.println("FileName="+fileItem.getName());
				System.out.println("ContentType="+fileItem.getContentType());
				System.out.println("Size in bytes="+fileItem.getSize());
				
				//int a = (int) services.getMaxArticle();
				//Article article = services.getArticleByID(a);
				
				Pharmacie p = new Pharmacie();
                baseD bd = new baseD();
                p = bd.getLastPharmacie();
                String[] parts = fileItem.getName().split("\\.");
                String nom = p.getNomPharmacie()+"."+parts[1];
				
				
				
				/*String libelle = article.getLibelle();
				String nom = fileItem.getName();
				String[] parts = nom.split("\\.");
				String part1= parts[1];
				nom = libelle+"."+part1;*/
				
				
				//String s = "C:\\Users\\Hamza\\Documents\\NetBeansProjects\\GeoPharmacieweb\\web\\image\\";
                
				String s ="C:\\Users\\abdel\\OneDrive\\Documentos\\NetBeansProjects\\GeoPharmacieweb\\web\\image\\";
				
				File file = new File(s+nom);
				//article.setLien(file.getAbsolutePath());
				//services.UpdateArticle(article);
				String lien = file.getAbsolutePath();
                
                p.setLien(lien);
                System.out.println("lienlienlienloienlielineleinelinelilenie"+lien);
                bd.updatePharmacie(p);
				
				
				System.out.println("++++++++++++++++++++++++++++"+file.getAbsolutePath());
				System.out.println("Absolute Path at server="+file.getAbsolutePath());
				fileItem.write(file);
				/*ArrayList<Article> array = new ArrayList<Article>();
				array = services.getAllArticles();
				request.setAttribute("listeArticles",array);*/
				String nextJSP = "/MesInformationsPharmacien.jsp";
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
				dispatcher.forward(request,response);
				}
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
