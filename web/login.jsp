<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
   
    <body>
     
        <form action="login" method="POST">
            
            Username <input type="text" name="cin"/><br><br>
            Login <input type="password" name="password"/><br><br>
            Type <br>
            <input type="radio" name="type" checked="checked" value="client" onclick="Controle();"> Client <br>
            <input type="radio" name="type" value="pharmacie" id="ssp" onclick="test()"> Pharmacien <br>
            
            
           
            <div id="toc"></div>
          <script type="text/javascript">
        function test() {
            if(document.getElementById('ssp').checked) {
                document.getElementById('toc').innerHTML = 'Vous étes un pharmacien ? <br> si oui velliez continu';
               // var test =  setTimeout(function(){document.getElementById('imgPatienter').style.display = "none";document.getElementById('animFlash').style.display = "block";},5000);
            }
        }
          </script>
            <input type="submit" value="login"/>
        </form>
        <b style="color: red;">
        <%
            String message=(String)request.getAttribute("message");
            if(message !=null){
               out.print(message);
            }
            
        %>
        </b>
    </body>
</html>
