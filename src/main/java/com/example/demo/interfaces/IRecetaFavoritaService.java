package com.example.demo.interfaces;

import java.util.List;

import com.example.demo.model.RecetaFavorita;

public interface IRecetaFavoritaService {
	
	public List<RecetaFavorita> listarPorUsuario(int id);
	public void borrarRecetaFavorita(int recetaFavorita_id);
	public void addReceta(RecetaFavorita receta);
	public RecetaFavorita buscarReceta(int receta_id);


}
