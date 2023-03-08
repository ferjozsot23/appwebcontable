package Test;

import modelo.dao.DAOFactory;
import modelo.entidades.Cuenta;
import modelo.entidades.CuentaTipo;

public class TestEntityManager {

	public static void main(String[] args) {
		Cuenta cuentaPichincha = new Cuenta();
		cuentaPichincha.setNombre("PICHINCHA");
		cuentaPichincha.setTipo(CuentaTipo.INGRESOGASTO);
		cuentaPichincha.setTotal(0);
		
		DAOFactory.getFactory().getCuentaDAO().create(cuentaPichincha);

	}

}
