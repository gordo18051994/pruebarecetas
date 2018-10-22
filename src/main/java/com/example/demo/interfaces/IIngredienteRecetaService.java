package com.example.demo.interfaces;

import java.util.List;

import com.example.demo.model.IngredienteReceta;

public interface IIngredienteRecetaService {
	
	public List<IngredienteReceta> listarPorReceta(int receta_id);
	public List<IngredienteReceta> listarRecetas();
	public IngredienteReceta buscarRecetaCompleta(int receta_id);
	public void insertarReceta(IngredienteReceta a);
	public void borrarIngrediente(IngredienteReceta a);

}
