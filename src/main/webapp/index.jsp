<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generador de Facturas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
    <div class="container border border-grey border-2" >
   <h1>Generador de Facturas</h1>
   <br>
   <form action="formulario" method="post">
    <div class="form-group">
      <label for="nombre">Nombre completo</label> 
      <input id="nombre" name="nombre" type="text" required="required" class="form-control" style="width: 500px" >
    </div>
    <br>
    <div class="form-group">
      <label for="empresa">Empresa</label> 
      <input id="empresa" name="empresa" type="text" required="required" class="form-control" style="width: 500px">
    </div>
    <br>
    <div class="form-group">
      <label for="rut">RUT</label> 
      <input id="rut" name="rut" type="text" required="required" class="form-control" style="width: 500px">
    </div>
    <br>
    <div class="form-group">
      <label for="direccion">Dirección</label> 
      <input id="direccion" name="direccion" type="text" required="required" class="form-control" style="width: 500px">
    </div>
    <br>
    <div class="form-group">
      <label for="ciudad">Ciudad</label> 
      <input id="ciudad" name="ciudad" type="text" required="required" class="form-control" style="width: 500px">
    </div>
    <br>
    <div class="form-group">
      <label for="pais">Pais</label> 
      <input id="pais" name="pais" type="text" required="required" class="form-control" style="width: 500px" >
    </div>
  <br>
  <br>
  <table class="table table-striped table-dark">
    <thead>
    <tr>
      <th scope="col">ITEM</th>
      <th scope="col">DESCRIPTION</th>
      <th scope="col">VALOR UNIDAD</th>
      <th scope="col">CANTIDAD</th>
    </tr>
  </thead>
  <tbody>
    <tr>
     <%int pvalvula = 120000; int pturbo = 1700000; int pfreno = 760000; int prefri = 2300000; String pplumi = "10000";%>
      <td>Valvulas Titaneo</td>
      <td>Valvulas de carrera</td>
      <td><%="$"+pvalvula%></td>
      <td><input id="valvula" name="valvula" type="number" class="form-control"></td>
    </tr>
    <tr>
        <td>Turbo Full Carrera</td>
        <td>Turbo de competicion multimarca</td>
   	  	<td><%="$"+pturbo%></td>
        <td><input id="turbo" name="turbo" type="number" class="form-control"></td>
    </tr>
    <tr>
        <td>Kit de freno competición</td>
        <td>Juego de discos, balatas, caliper de competición</td>
      	<td><%="$"+pfreno%></td>
        <td><input id="freno" name="freno" type="number" class="form-control"></td>
    </tr>
    <tr>
        <td>Sistema de Refrigeración</td>
        <td>Sistema enfriamiento motor carrera</td>
      	<td><%="$"+prefri%></td>
        <td><input id="refri" name="refri" type="number" class="form-control"></td>
    </tr>
    <tr>
        <td>Plumillas limpia parabrisas Standard</td>
        <td>Plumillas para la lluvia</td>
      	<td><%="$"+pplumi%></td>
        <td><input id="plumi" name="plumi" type="number" class="form-control"></td>
    </tr>
  </tbody>
</table>
<br>
<br> 
<div class="form-group">
  <button name="generar" type="submit" class="btn btn-primary mx-4">Generar Factura</button>
  <button name="clean" type="reset" class="btn btn-secondary">Limpiar</button>

</div>
<br>
</form>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>