package Reto2Grupo6;

public class Pelicula {
	private String idpelicula;
	private String titulo;
	private int duracion;
	private String genero;
	private double precio;
	
	public Pelicula(String idpelicula, String titulo, int duracion, String genero, double precio) {
		this.idpelicula = idpelicula;
		this.titulo = titulo;
		this.duracion = duracion;
		this.genero = genero;
		this.precio = precio;
	}
	
	public Pelicula() {
		this.idpelicula = "";
		this.titulo = "";
		this.duracion = 0;
		this.genero = "";
		this.precio = 0;
	}

	public String getIdpelicula() {
		return idpelicula;
	}

	public void setIdpelicula(String idpelicula) {
		this.idpelicula = idpelicula;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public int getDuracion() {
		return duracion;
	}

	public void setDuracion(int duracion) {
		this.duracion = duracion;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}
	
}
