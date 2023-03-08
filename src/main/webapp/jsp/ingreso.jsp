<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>INCOME ACCOUNT</title>
     <link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div class="cuerpo">
        <div class="titulo">
            <div>
            <div class="btnCaja">
            <div class="btnBack t-centrar"><a href="DashboardController?ruta=ver" >Back</a></div>
            </div>
                
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
                <form method="POST" action="MovimientoController?ruta=crearIngreso">
                    <div class="titulopantalla">INCOME RECORD</div><br><br>
                    <label>Source account</label><br>
                    
                    <select name="ingresoCuenta">
                        <c:forEach items="${ingresos}" var="ingreso">
	                    	<option value="${ingreso.id}">${ingreso.nombre}</option>
               			 </c:forEach>
                    </select>
                    
                    
                    <br><br>

                    <label>Concept of the transaction</label><br>
                    <input class="cajas" type="text" name="concepto" value="Insert the concept of your transaction"
                        onclick="if(this.value=='Insert the concept of your transaction') this.value=''">
                    <br><br>

                    <label>Date</label><br>
                    <input class="cajas" type="date" name="fecha" class="borde-azul">
                    <br><br>
                    

                    <label>Value of the transaction</label><br>
                    <input class="cajas" type="text" name="valor" value="Insert the value of your transaction"
                        onclick="if(this.value=='Insert the value of your transaction') this.value=''">
                    <br><br>

                    <label class="t-20px">Destination account</label><br>
                    
                    <select name="ingresoGastoCuenta" class="borde-azul">
	                    <c:forEach items="${ingresogastos}" var="ingresogasto">
	                        <option value="${ingresogasto.id}">${ingresogasto.nombre}</option>
	                    	
	                    </c:forEach>
                    </select>
                    <br><br><br>

                    <input type="submit" value="Guardar" class="btnPantalla">
                   
                </form>
            </div>
        </div>
    </div>
</body>

</html>