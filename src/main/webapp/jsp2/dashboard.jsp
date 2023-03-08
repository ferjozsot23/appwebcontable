<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    
    <div class="container">
        <div class="bg-black text-white p-3">Contabilidad Personal</div>
        <div class="bg-body-secondary pt-2 pb-1 ps-2">
            <ul class="list-inline">
                <li class="list-inline-item"><a href="MovimientoController?ruta=cargarFormularioIngreso">Ingreso</a></li>
                <li class="list-inline-item"><a href="MovimientoController?ruta=cargarFormularioEgreso">Egreso</a></li>
                <li class="list-inline-item"><a href="">Transferencia</a></li>
                <li class="list-inline-item"><a href="dashboard.html">Dashboard</a></li>
            </ul>
        </div>
        <div>
        	<form method="get" action="DashboardController?ruta=ver">
        	Mes:
        	<select>
        	<c:forEach items="${meses}" var="mes">
        		<option value="${mes.id}" ${mes.id== messeleccionado ? 'selected':''} >${mes.nombre}</option>
        	</c:forEach>
        	</select>
        	</form>
      
        </div>
        <div class="row">
            <div class="col-2">
                <h1>Cuentas</h1>
             
                <c:forEach items="${ingresogastos}" var="ingresogasto">
	                <div class="bg-body-secondary text-dark border rounded text-center mt-3">
	                    <h4>${ingresogasto.nombre}</h4>
	                    <div>${ingresogasto.total}</div>
	                    <div><a href="">Movimientos</a></div>
	                </div>
                </c:forEach>

                
            </div>
            <div class="col-10">
                <h1>Cuentas INGRESO</h1>
                
                 <c:forEach items="${ingresos}" var="ingreso">
	                <div class="bg-body-secondary text-dark border rounded text-center mt-3">
	                    <h4>${ingreso.nombre}</h4>
	                    <div>${ingreso.totalcalculado}</div>
	                    <div><a href="">Movimientos</a></div>
	                </div>
                </c:forEach>
                
                <h1>Cuentas EGRESO</h1>

                <div class="d-inline-flex p-2">

                    <c:forEach items="${egresos}" var="egreso">
	                <div class="bg-body-secondary text-dark border rounded text-center mt-3">
	                    <h4>${egreso.nombre}</h4>
	                    <div>${egreso.totalcalculado}</div>
	                    <div><a href="">Movimientos</a></div>
	                </div>
                </c:forEach>
               
                   
                </div>
            </div>

        </div>

    </div>
</body>
</html>