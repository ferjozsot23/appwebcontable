package modelo.dto;

import modelo.entidades.Cuenta;
import modelo.jpa.JPAGenericDAO;

public class CuentaDTO {

	private int id;
	private String nombre;
	private double totalcalculado;
	
	public CuentaDTO() {}

	public CuentaDTO(int id, String nombre, double totalcalculado) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.totalcalculado = totalcalculado;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public double getTotalcalculado() {
		return totalcalculado;
	}

	public void setTotalcalculado(double totalcalculado) {
		this.totalcalculado = totalcalculado;
	}
}
