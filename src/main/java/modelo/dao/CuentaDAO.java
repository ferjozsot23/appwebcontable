package modelo.dao;

import java.util.List;

import modelo.dto.CuentaDTO;
import modelo.entidades.Cuenta;
import modelo.entidades.CuentaTipo;

public interface CuentaDAO extends GenericDAO<Cuenta, Integer> {

	public List<CuentaDTO> getConsolidadoCuentasIngreso(int mes);
	public List<CuentaDTO> getConsolidadoCuentsEgreso(int mes);
	public List<Cuenta> getConsolidadoCuentasIngresoEgreso();
	public List<Cuenta> getCuentasByType(CuentaTipo tipo);
}
