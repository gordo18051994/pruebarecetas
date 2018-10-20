package com.example.demo.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="recetas")
public class Receta implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@JoinColumn(name="id")
	private List<Receta> recetas = new ArrayList<Receta>();

	
	@Column(name="titulo")
	private String titulo;
	
	@Column(name="descripcion")
	private String descripcion;
	
	@ManyToOne
	@JsonIgnore
	@JoinColumn(name="categoria_id", insertable=false, updatable=false)
	private Categoria tablaCategoria;
	
	@ManyToOne
	@JsonIgnore
	@JoinColumn(name="usuario_id", insertable=false, updatable=false)
	private Usuario tablaUsuario;
	
	public Usuario getTablaUsuario() {
		return tablaUsuario;
	}

	public void setTablaUsuario(Usuario tablaUsuario) {
		this.tablaUsuario = tablaUsuario;
	}

	public Categoria getTablaCategoria() {
		return tablaCategoria;
	}

	public void setTablaCategoria(Categoria tablaCategoria) {
		this.tablaCategoria = tablaCategoria;
	}

	@Column(name="imagen")
	private String imagen;
	
	
	
	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getCategoria_id() {
		return categoria_id;
	}

	public void setCategoria_id(int categoria_id) {
		this.categoria_id = categoria_id;
	}

	public int getUsuario_id() {
		return usuario_id;
	}

	public void setUsuario_id(int usuario_id) {
		this.usuario_id = usuario_id;
	}

	@Column(name="categoria_id")
	private int categoria_id;
	
	@Column(name="usuario_id")
	private int usuario_id;

}
