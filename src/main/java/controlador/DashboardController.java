package controlador;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.DAOFactory;
import modelo.dto.CuentaDTO;
import modelo.entidades.Cuenta;
import utilidades.Mes;

@WebServlet("/DashboardController")
public class DashboardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DashboardController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ruteador(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ruteador(request, response);
	}
	
	private void ruteador(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ruta = (request.getParameter("ruta")==null?"ver":request.getParameter("ruta"));
		
		switch(ruta) {
		case "ver":
			showDashboard(request, response);
			break;
		}
	}
	private void showDashboard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int mes = LocalDate.now().getMonth().getValue();
		
		if(request.getParameter("mes")!=null) {
			mes = Integer.parseInt( request.getParameter("mes"));
		}
		
		List<CuentaDTO> conjuntoingresos = DAOFactory.getFactory().getCuentaDAO().getConsolidadoCuentasIngreso(mes);
		List<CuentaDTO> conjuntogastos = DAOFactory.getFactory().getCuentaDAO().getConsolidadoCuentsEgreso(mes);
		List<Cuenta> conjuntoingresogasto = DAOFactory.getFactory().getCuentaDAO().getConsolidadoCuentasIngresoEgreso();
		
		request.setAttribute("messeleccionado", mes);
		request.setAttribute("meses", Mes.getMeses());
		request.setAttribute("ingresos", conjuntoingresos);
		request.setAttribute("egresos", conjuntogastos);
		request.setAttribute("ingresogastos", conjuntoingresogasto);
		request.getRequestDispatcher("/jsp/dashboard.jsp").forward(request, response);
	
	}

}
