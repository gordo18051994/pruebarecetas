package com.example.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Receta;

public interface IRecetaRepository extends CrudRepository<Receta, Integer> {

}
