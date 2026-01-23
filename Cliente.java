package Reto2Grupo6;

public class Cliente {
	private String DNI;
	private String nombre;
	private String apellido;
	private String gmail;
	private String contraseña;
	
	
	public Cliente(String DNI, String nombre, String apellido, String gmail, String contraseña) {
		this.DNI = DNI;
		this.nombre = nombre;
		this.apellido = apellido;
		this.gmail = gmail;
		this.contraseña = contraseña;
	}
	
	public Cliente() {
		this.DNI = "";
		this.nombre = "";
		this.apellido = "";
		this.gmail = "";
		this.contraseña = "";
	}



	public void setDNI(Cliente DNI) {
		this.DNI = DNI;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellido() {
		return apellido;
	}


	public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	public String getGmail() {
		return gmail;
	}


	public void setGmail(String gmail) {
		this.gmail = gmail;
	}


	public String getContraseña() {
		return contraseña;
	}


	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}
	
	
}
