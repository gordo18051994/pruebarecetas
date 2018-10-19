package com.example.demo.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;
import javax.persistence.Column;

@Entity
@Table(name="medida")
public class Medida implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="nombre")
	private String nombre;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="id")
	private List<IngredienteReceta> ingRecetas = new ArrayList<IngredienteReceta>();

	public List<IngredienteReceta> getIngRecetas() {
		return ingRecetas;
	}

	public void setIngRecetas(List<IngredienteReceta> ingRecetas) {
		this.ingRecetas = ingRecetas;
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
	
}
