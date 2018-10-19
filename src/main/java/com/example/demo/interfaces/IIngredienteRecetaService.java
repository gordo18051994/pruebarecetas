package com.example.demo.interfaces;

import java.util.List;

import com.example.demo.model.IngredienteReceta;

public interface IIngredienteRecetaService {
	
	public List<IngredienteReceta> listarPorReceta(int receta_id);
	public IngredienteReceta listarRecetas();
	public IngredienteReceta buscarRecetaCompleta(int receta_id);

}
