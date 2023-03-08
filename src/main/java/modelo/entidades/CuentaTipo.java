package modelo.entidades;

public enum CuentaTipo {
	INGRESO ("INGRESO", 1),
	GASTO ("GASTO", 2),
	INGRESOGASTO ("INGRESOGASTO",3);
	
	private String nombreTipo;
	private int idTipo;
	CuentaTipo(String nombreTipo, int id) {
		this.idTipo = id;
		this.nombreTipo = nombreTipo; 
	}
	public String getNombreTipo() {
		return nombreTipo;
	}
	public void setNombreTipo(String nombreTipo) {
		this.nombreTipo = nombreTipo;
	}
	public int getIdTipo() {
		return idTipo;
	}
	public void setIdTipo(int idTipo) {
		this.idTipo = idTipo;
	}
	
	
}
