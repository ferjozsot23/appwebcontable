package modelo.entidades;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cuenta implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column
	private String nombre;
	@Column
	private double total;
	@Enumerated
	private CuentaTipo tipo;
	
	public Cuenta() {}

	public Cuenta(String nombre, double total) {
		super();
		this.nombre = nombre;
		this.total = total;
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

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	
	public CuentaTipo getTipo() {
		return tipo;
	}

	public void setTipo(CuentaTipo tipo) {
		this.tipo = tipo;
	}

	@Override
	public String toString() {
		return "Cuenta [id=" + id + ", nombre=" + nombre + ", total=" + total + "]";
	}
	
	
}
