package com.example.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Ingrediente;

public interface IIngredienteRepository extends CrudRepository<Ingrediente, Integer> {

}
