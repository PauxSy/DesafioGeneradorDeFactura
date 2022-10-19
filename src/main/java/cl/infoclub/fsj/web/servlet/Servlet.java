package cl.infoclub.fsj.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/formulario")
public class Servlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		String nombre, empresa, rut, direccion, ciudad, pais;

		int valorTotal, valorTotalNeto;

		int precioValvulas = 120000;
		int precioTurbo = 1700000;
		int precioFreno = 760000;
		int precioRefri = 2300000;
		int precioPlumi = 10000;

		int cantVal = Integer.parseInt(request.getParameter("valvula"));
		int cantTurbo = Integer.parseInt(request.getParameter("turbo"));
		int cantFreno = Integer.parseInt(request.getParameter("freno"));
		int cantRefri = Integer.parseInt(request.getParameter("refri"));
		int cantPlumi = Integer.parseInt(request.getParameter("plumi"));

		nombre = request.getParameter("nombre");
		empresa = request.getParameter("empresa");
		rut = request.getParameter("rut");
		direccion = request.getParameter("direccion");
		ciudad = request.getParameter("ciudad");
		pais = request.getParameter("pais");

		request.setAttribute("cantVal", cantVal);
		request.setAttribute("cantTurbo", cantTurbo);
		request.setAttribute("cantFreno", cantFreno);
		request.setAttribute("cantRefri", cantRefri);
		request.setAttribute("cantPlumi", cantPlumi);

		request.setAttribute("precioTotalVal", cantVal * precioValvulas);
		request.setAttribute("precioTotalTurbo", cantTurbo * precioTurbo);
		request.setAttribute("precioTotalFreno", cantFreno * precioFreno);
		request.setAttribute("precioTotalRefri", cantRefri * precioRefri);
		request.setAttribute("precioTotalPlumi", cantPlumi * precioPlumi);

		valorTotal = ((cantVal * precioValvulas) + (cantTurbo * precioTurbo) + (cantFreno * precioFreno)
				+ (cantRefri * precioRefri) + (cantPlumi * precioPlumi));
		
		valorTotalNeto = valorTotal-(valorTotal/10);
		
		int dscto = 10;
		
		request.setAttribute("valorTotal", valorTotal);
		request.setAttribute("valorTotalNeto", valorTotalNeto);
		request.setAttribute("dscto", dscto);

		
		request.getRequestDispatcher("/generaFactura").forward(request, response);

	}
}
