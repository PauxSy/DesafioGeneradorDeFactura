<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

   <%
   
   String nombre = (String) request.getAttribute("nombre");
   String empresa = (String) request.getAttribute("empresa");
   String direccion = (String) request.getAttribute("direccion");
   String ciudad = (String) request.getAttribute("ciudad");
   String pais = (String) request.getAttribute("pais");
   
   int precioTotalVal = (Integer)request.getAttribute("precioTotalVal");
   int precioTotalTurbo = (Integer)request.getAttribute("precioTotalTurbo");
   int precioTotalFreno = (Integer)request.getAttribute("precioTotalFreno");
   int precioTotalRefri = (Integer)request.getAttribute("precioTotalRefri");
   int precioTotalPlumi = (Integer)request.getAttribute("precioTotalPlumi");
   
   int cantVal = (Integer)request.getAttribute("cantVal");
   int cantTurbo = (Integer)request.getAttribute("cantTurbo");
   int cantFreno = (Integer)request.getAttribute("cantFreno");
   int cantRefri = (Integer)request.getAttribute("cantRefri");
   int cantPlumi = (Integer)request.getAttribute("cantPlumi");
   
   int valorTotalNeto = (Integer)request.getAttribute("valorTotalNeto");
   int valorTotal = (Integer)request.getAttribute("valorTotal");

   String dcto = "10%";
   

   %>


</html>