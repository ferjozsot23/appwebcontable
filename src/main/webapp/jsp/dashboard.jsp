<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PERSONAL ACCOUNTING</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<script src="https://kit.fontawesome.com/3980df44c2.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="cuerpodashboard">
		<header class="barramenu">
			<div class="banner">
				<div class="logo">
					<i class="fa-solid fa-coins fa-3x"></i>
				</div>
				<div class="bienvenida">
					<h3>WELCOME TO YOUR PERSONAL ACCOUNTING</h3>
				</div>
				<br>
			</div>
			<br>
			<hr>
			<br>
			<div class="banner">
				<ul>
					<li class=""><a
						href="MovimientoController?ruta=cargarFormularioIngreso">Income</a></li>
					<li class=""><a
						href="MovimientoController?ruta=cargarFormularioEgreso">Expense</a></li>
				</ul>
			</div>
		</header>

		<div class="maindsh">
			<form method="POST" action="" class="perfilusuario">
				<div class="perfil">
					<div>USER PROFILE</div>
					<br>
					<div>
						<i class="fa-solid fa-user fa-7x"></i>
					</div>
					<br>
					<hr>
					<br>
					<div class="nombreperfil">
						<div>${usuario.nombre}</div>
					</div>
					<br> 
				</div>
				<br>
			</form>

			<div class="contenedorcuentas">
				<div class="cajames">
					<form method="post" action="DashboardController?ruta=ver">
						<span>Month:</span> 
						<select class="negrilla" name="mes">
							<c:forEach items="${meses}" var="mes">
								<option value="${mes.id}"
									${mes.id== messeleccionado ? 'selected':''}>${mes.nombre}</option>
							</c:forEach>
						</select>
						<input type="submit" value="Search" class="bt">
					</form>
				</div>

				<div class="cuentas">
					<div class="contenedor">
						<br>
						<h2>Income/Expense Account</h2>
						<br>
						<hr>
						
						<c:forEach items="${ingresogastos}" var="ingresogasto">
							<div>
								<div class="trasaccion">
									<h4 class="azul">${ingresogasto.nombre}</h4>
									<div class="azul">$ ${ingresogasto.total}</div>
								</div>
								<br>
							</div>
						</c:forEach>
					</div>
					<div class="contenedor">
						<br>
						<h2>Income Account</h2>
						<br>
						<hr>
						<c:forEach items="${ingresos}" var="ingreso">
							<div>
								<div class="trasaccion">
									<h4 class="azul">${ingreso.nombre}</h4>
									<div class="azul">$ ${ingreso.totalcalculado}</div>
								</div>
								<br>

							</div>
						</c:forEach>
					</div>

					<div class="contenedor">
						<br>
						<h2>Expense Account</h2>
						<br>
						<hr>
						
						<c:forEach items="${egresos}" var="egreso">
							<div>
								<div class="trasaccion">
									<h4 class="azul">${egreso.nombre}</h4>
									<div class="azul">$ -${egreso.totalcalculado}</div>
								</div>
								<br>
							</div>

						</c:forEach>
					</div>
				</div>

			</div>
		</div>

	</div>
</body>

</html>