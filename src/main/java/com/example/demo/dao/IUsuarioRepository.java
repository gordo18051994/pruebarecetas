package com.example.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Usuario;

public interface IUsuarioRepository extends CrudRepository<Usuario, Integer> {

}
