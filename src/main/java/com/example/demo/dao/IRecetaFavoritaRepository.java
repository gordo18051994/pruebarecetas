package com.example.demo.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.RecetaFavorita;

public interface IRecetaFavoritaRepository extends CrudRepository<RecetaFavorita, Integer> {
	
	@Query(value="SELECT*FROM favoritas WHERE USUARIO_ID = :usuario_id", nativeQuery = true)
	public Optional <List<RecetaFavorita>> findByUsuario(@Param("usuario_id") int usuario_id);
	
	@Query(value="SELECT*FROM favoritas WHERE RECETA_ID = :receta_id", nativeQuery = true)
	public Optional <List<RecetaFavorita>> findByReceta(@Param("receta_id") int receta_id);
	
}
