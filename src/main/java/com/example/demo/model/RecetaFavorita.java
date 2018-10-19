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
	private  Receta tablaRecetas;
	
	
	@Column(name="usuario_id")
	private int usuario_id;

	public RecetaFavorita(int id, Receta tablaRecetas, int usuario_id) {
		super();
		this.id = id;
		this.tablaRecetas = tablaRecetas;
		this.usuario_id = usuario_id;
	}

	public RecetaFavorita() {
		super();
	}



	public int getId() {
		return id;
	}

	public Receta getTablaRecetas() {
		return tablaRecetas;
	}

	public void setTablaRecetas(Receta tablaRecetas) {
		this.tablaRecetas = tablaRecetas;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUsuario_id() {
		return usuario_id;
	}

	public void setUsuario_id(int usuario_id) {
		this.usuario_id = usuario_id;
	}

}
