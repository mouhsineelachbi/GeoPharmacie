<%-- 
    Document   : uploadPharmacie
    Created on : 27 janv. 2019, 06:02:31
    Author     : Hamza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UploadDownloadFileServlet" method="post" enctype="multipart/form-data">
                    Select File to Upload:  <input type="file" name="fileName">
                    <br>
                    <input type="submit" value="Upload">
                </form>
    </body>
</html>
