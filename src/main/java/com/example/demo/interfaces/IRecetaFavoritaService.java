package com.example.demo.interfaces;

import java.util.List;

import com.example.demo.model.Receta;
import com.example.demo.model.RecetaFavorita;

public interface IRecetaFavoritaService {
	
	public List<RecetaFavorita> listarPorUsuario(int id);
	public void borrarRecetaFavorita(int usuario_id);
	public RecetaFavorita addReceta(RecetaFavorita receta);


}
