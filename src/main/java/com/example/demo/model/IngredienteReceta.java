package com.example.demo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ingredientesrecetas")
public class IngredienteReceta implements Serializable {
	
	@Id
	@Column(name="id")
	private int id;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name="receta_id")
	private int receta_id;
	
	@Column(name="ingrediente_id")
	private int ingrediente_id;
	
	@Column(name="cantidad_ingrediente")
	private float cantidad_ingrediente;
	
	@Column(name="medida_ingrediente_id")
	private int medida_ingrediente_id;

	public int getReceta_id() {
		return receta_id;
	}

	public void setReceta_id(int receta_id) {
		this.receta_id = receta_id;
	}

	public int getIngrediente_id() {
		return ingrediente_id;
	}

	public void setIngrediente_id(int ingrediente_id) {
		this.ingrediente_id = ingrediente_id;
	}

	public float getCantidad_ingrediente() {
		return cantidad_ingrediente;
	}

	public void setCantidad_ingrediente(float cantidad_ingrediente) {
		this.cantidad_ingrediente = cantidad_ingrediente;
	}

	public int getMedida_ingrediente_id() {
		return medida_ingrediente_id;
	}

	public void setMedida_ingrediente_id(int medida_ingrediente_id) {
		this.medida_ingrediente_id = medida_ingrediente_id;
	}
	
	
}
