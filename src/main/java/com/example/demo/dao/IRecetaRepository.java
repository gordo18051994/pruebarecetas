package com.example.demo.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.Receta;

public interface IRecetaRepository extends CrudRepository<Receta, Integer> {
	
	@Query (value="SELECT*FROM recetas WHERE CATEGORIA_ID = :categoria_id", nativeQuery = true)
	public Optional<List<Receta>> findByCategoria (@Param("categoria_id")int categoria_id);
	
	@Query (value="SELECT*FROM recetas WHERE USUARIO_ID = :usuario_id", nativeQuery = true)
	public Optional<List<Receta>> findByUsuario (@Param("usuario_id") int usuario_id);
	
	@Query(value="DELETE FROM recetas WHERE id = :id;", nativeQuery = true)
	public  void deleteReceta(@Param("id")int id);
}
