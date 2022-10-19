<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String nombre = (String) request.getAttribute("nombre");
String empresa = (String) request.getAttribute("empresa");
String direccion = (String) request.getAttribute("direccion");
String ciudad = (String) request.getAttribute("ciudad");
String pais = (String) request.getAttribute("pais");

int precioTotalVal = (Integer) request.getAttribute("precioTotalVal");
int precioTotalTurbo = (Integer) request.getAttribute("precioTotalTurbo");
int precioTotalFreno = (Integer) request.getAttribute("precioTotalFreno");
int precioTotalRefri = (Integer) request.getAttribute("precioTotalRefri");
int precioTotalPlumi = (Integer) request.getAttribute("precioTotalPlumi");

int cantVal = (Integer) request.getAttribute("cantVal");
int cantTurbo = (Integer) request.getAttribute("cantTurbo");
int cantFreno = (Integer) request.getAttribute("cantFreno");
int cantRefri = (Integer) request.getAttribute("cantRefri");
int cantPlumi = (Integer) request.getAttribute("cantPlumi");

int valorTotalNeto = (Integer) request.getAttribute("valorTotalNeto");
int valorTotal = (Integer) request.getAttribute("valorTotal");
int dscto = (Integer) request.getAttribute("dscto");
%>

<html lang="es">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Factura</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body>
	<div class="container border border-grey border-2">
		<h1>Factura Nº 4125</h1>
		<br>
		<%="Nombre: " + nombre%>
		<%="<p>Empresa: " + empresa + "</p>"%>
		<%="<p>Direccion: " + direccion + "</p>"%>
		<%="<p>Ciudad: " + ciudad + "</p>"%>
		<%="<p>Pais: " + pais + "</p>"%>
		<br> <br>
		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th scope="col">ITEM</th>
					<th scope="col">DESCRIPTION</th>
					<th scope="col">VALOR UNIDAD</th>
					<th scope="col">CANTIDAD</th>
					<th scope="col">VALOR TOTAL</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<%
					int pValvula = 120000;
					int pTurbo = 1700000;
					int pFreno = 760000;
					int pRefri = 2300000;
					int pPlumi = 10000;
					%>
					<td>Valvulas Titaneo</td>
					<td>Valvulas de carrera</td>
					<td><%="$" + pValvula%></td>
					<td><%=+cantVal%></td>
					<td><%=+precioTotalVal%></td>
				</tr>
				<tr>
					<td>Turbo Full Carrera</td>
					<td>Turbo de competicion multimarca</td>
					<td><%="$" + pTurbo%></td>
					<td><%=+cantTurbo%></td>
					<td><%=+precioTotalTurbo%></td>
				</tr>
				<tr>
					<td>Kit de freno competición</td>
					<td>Juego de discos, balatas, caliper de competición</td>
					<td><%="$" + pFreno%></td>
					<td><%=+cantFreno%></td>
					<td><%=+precioTotalFreno%></td>
				</tr>
				<tr>
					<td>Sistema de Refrigeración</td>
					<td>Sistema enfriamiento motor carrera</td>
					<td><%="$" + pRefri%></td>
					<td><%=+cantRefri%></td>
					<td><%=+precioTotalRefri%></td>
				</tr>
				<tr>
					<td>Plumillas limpia parabrisas Standard</td>
					<td>Plumillas para la lluvia</td>
					<td><%="$" + pPlumi%></td>
					<td><%=+cantPlumi%></td>
					<td><%=+precioTotalPlumi%></td>
				</tr>
			</tbody>
		</table>
		
			<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th scope="col">VALOR TOTAL NETO</th>
					<th scope="col">DESCUENTO</th>
					<th scope="col">VALOR TOTAL<th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%=+valorTotalNeto%></td>
					<td><%="$" + dscto + "%"%></td>
					<td><%="$" + valorTotal%></td>
				</tr>
			</tbody>
		</table>
		<br>
	</div>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>

</html>