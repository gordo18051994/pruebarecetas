package com.example.demo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ingredientesrecetas")
public class IngredienteReceta implements Serializable {
	
	@Id
	@Column(name="id")
	private int id;
	
	@ManyToOne
	@JoinColumn(name="receta_id")
	private Receta tablaRecetas;
	
	@OneToOne
	@JoinColumn(name="ingrediente_id")
	private Ingrediente tablaIngredientes;
	
	@Column(name="cantidad_ingrediente")
	private float cantidad_ingrediente;
	
	@OneToOne
	@JoinColumn(name="medida_ingrediente_id")
	private Medida tablaMedidas;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public float getCantidad_ingrediente() {
		return cantidad_ingrediente;
	}

	public void setCantidad_ingrediente(float cantidad_ingrediente) {
		this.cantidad_ingrediente = cantidad_ingrediente;
	}

	public Receta getTablaRecetas() {
		return tablaRecetas;
	}

	public void setTablaRecetas(Receta tablaRecetas) {
		this.tablaRecetas = tablaRecetas;
	}

	public Ingrediente getTablaIngredientes() {
		return tablaIngredientes;
	}

	public void setTablaIngredientes(Ingrediente tablaIngredientes) {
		this.tablaIngredientes = tablaIngredientes;
	}

	public Medida getTablaMedidas() {
		return tablaMedidas;
	}

	public void setTablaMedidas(Medida tablaMedidas) {
		this.tablaMedidas = tablaMedidas;
	}
	
	
}
