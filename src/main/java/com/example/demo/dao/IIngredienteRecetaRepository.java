package com.example.demo.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.IngredienteReceta;

public interface IIngredienteRecetaRepository extends CrudRepository<IngredienteReceta, Integer> {
	
	@Query(value="SELECT*FROM ingredientesrecetas WHERE RECETA_ID = :receta_id", nativeQuery = true)
	public Optional<List<IngredienteReceta>> findByReceta(@Param("receta_id")int receta_id);
	
}
