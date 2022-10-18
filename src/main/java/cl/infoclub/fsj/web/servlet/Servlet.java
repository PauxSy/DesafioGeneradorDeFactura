package cl.infoclub.fsj.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Servlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println(request.getParameter("nombre"));
		System.out.println(request.getParameter("empresa"));
		System.out.println(request.getParameter("rut"));
		System.out.println(request.getParameter("direccion"));
		System.out.println(request.getParameter("ciudad"));
		System.out.println(request.getParameter("valvula"));
		System.out.println(request.getParameter("turbo"));
		System.out.println(request.getParameter("freno"));
		System.out.println(request.getParameter("refri"));
		System.out.println(request.getParameter("plumi"));


	}

}
