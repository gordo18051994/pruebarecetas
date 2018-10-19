package com.example.demo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="favoritas")
public class RecetaFavorita implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@OneToOne
	@JoinColumn(name="receta_id")
	private Receta tablaRecetas;
	
	@OneToOne
	@JoinColumn(name="usuario_id")
	private Usuario tablaUsuarios;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Receta getTablaRecetas() {
		return tablaRecetas;
	}

	public void setTablaRecetas(Receta tablaRecetas) {
		this.tablaRecetas = tablaRecetas;
	}

	public Usuario getTablaUsuarios() {
		return tablaUsuarios;
	}

	public void setTablaUsuarios(Usuario tablaUsuarios) {
		this.tablaUsuarios = tablaUsuarios;
	}



}
