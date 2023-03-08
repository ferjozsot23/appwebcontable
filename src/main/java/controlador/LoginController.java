package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.dao.DAOFactory;
import modelo.entidades.Usuario;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		rutear(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		rutear(request,response);
	}
	
	private void rutear(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ruta = (request.getParameter("ruta"))==null?"ingresar":request.getParameter("ruta");
		
		switch (ruta) {
		case "ingresar":
			this.ingresar(request,response);
			break;
		case "login":
			this.login(request,response);
			break;
			
		default:
			throw new IllegalArgumentException("Unexpected value: " + ruta);
		}
	}
	
	
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario= request.getParameter("usuario");
		String clave= request.getParameter("password");
		Usuario autorizada=null;
		autorizada =DAOFactory.getFactory().getUsuarioDAO().autorizar(usuario, clave);
		if (autorizada!=null) {
			//creo la sesion 
			HttpSession sesion= request.getSession();
			sesion.setAttribute("usuario", autorizada);
			
			request.getRequestDispatcher("DashboardController?ruta=ver").forward(request, response);
		}else {
			response.sendRedirect("/jsp/login.jsp");
		}
		
	}
	private void ingresar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
	}
		
		
	
	

}
