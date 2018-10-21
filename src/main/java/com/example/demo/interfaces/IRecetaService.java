package com.example.demo.interfaces;

import java.util.List;

import com.example.demo.model.Receta;

public interface IRecetaService {
	
	public List<Receta> listarPorUsuario(int usuario_id);
	public List<Receta> listar();
	public List<Receta> listarPorCategoria(int categoria_id);
	public void borrarReceta(int id_receta);
	public Receta addReceta(Receta receta);
	public void actualizarReceta(Receta receta);
	public Receta buscarReceta(int receta_id);
	public List<Receta> listarPorUsuario(String attribute);
	public List<Receta> filtrado(int categoria_id, String titulo, String ingrediente);

}
