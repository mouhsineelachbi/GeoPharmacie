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
            <input type="radio" name="type" value="client"> Client <br>
            <input type="radio" name="type" value="pharmacie"> Pharmacien <br>
           
            <input type="submit" value="login"/>
        </form>
    </body>
</html>
