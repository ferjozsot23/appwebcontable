<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MI CHAUCHERITA</title>
     <link href="css/estilos.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/3980df44c2.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="cuerpo">
        <div class="titulo">
            <div>
                <div class="btnCaja"><i class="fa-solid fa-coins fa-5x"></i></div>
                <div>
                    <h1>MI</h1>
                    <h1>CHAUCHERITA</h1>
                </div><br><br>
                <div>
                    <h3>PERSONAL ACCOUNTING MANAGMENT SYSTEM</h3>
                </div>
            </div>
        </div>

        <div class="pantalla">
            <div>
                <form method="POST" action="LoginController?ruta=login">
                    <div class="titulopantalla">LOGIN</div><br><br>
                    <label>Username</label><br>
                    <input class="cajas" type="text" name="usuario" value="Insert your name" onclick = "if(this.value=='Insert your name') this.value=''">
                    <br><br>
                    <label>Password</label><br>
                    <input class="cajas" type="password" name="password" value="Password" size="15" onclick = "if(this.value=='Password') this.value=''">
                    <br><br><br>
                    <input type="submit" value="Submit" class="btnPantalla">
                </form>
            </div>
        </div>
    </div>
</body>
</html>