package com.example.demo.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.demo.model.Usuario;

public interface IUsuarioRepository extends CrudRepository<Usuario, Integer> {

	@Query (value="SELECT*FROM usuarios WHERE EMAIL = :email", nativeQuery = true)
	public Optional<Usuario> findByEmail(@Param("email")String email);
	
}
