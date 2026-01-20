package Reto2Grupo6;

import java.time.LocalDate;
import java.time.LocalTime;

public class Sesion {


	private int insesion;
	private LocalDate fecha;
	private LocalTime horainicio;
	private  LocalTime horafin;
	public double precio;
	private Sala sala;
	private  Pelicula pelicula;

	public Sesion(int identificador, LocalDate fecha, LocalTime horainicio, LocalTime horafin, double precio, Sala sala,
			Pelicula pelicula) {
		super();
		this.insesion = identificador;
		this.fecha = fecha;
		this.horainicio = horainicio;
		this.horafin = horafin;
		this.precio = precio;
		this.sala = sala;
		this.pelicula = pelicula;
	}

	public int getIdentificador() {
		return insesion;
	}

	public LocalDate getFecha() {
		return fecha;
	}

	public LocalTime getHorainicio() {
		return horainicio;
	}

	public LocalTime getHorafin() {
		return horafin;
	}

	public Sala getSala() {
		return sala;
	}

	public Pelicula getPelicula() {
		return pelicula;
	}
	

	

}
