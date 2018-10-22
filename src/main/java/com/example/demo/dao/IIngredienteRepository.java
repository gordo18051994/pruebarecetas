package com.example.demo.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.Ingrediente;
import com.example.demo.model.RecetaFavorita;

public interface IIngredienteRepository extends CrudRepository<Ingrediente, Integer> {
	@Query(value="SELECT*FROM ingredientes WHERE nombre LIKE CONCAT('%', :nombre, '%') ", nativeQuery = true)
	public Optional <List<Ingrediente>> findByNombre(@Param("nombre") String nombre);
}
