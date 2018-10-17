package com.example.demo.service;

import com.example.demo.dao.ICategoriaRepository;
import com.example.demo.interfaces.ICategoriaService;
import com.example.demo.model.Categoria;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoriaSERVICE implements ICategoriaService {
	
	@Autowired
	private ICategoriaRepository categoriaRepository;

	@Override
	public List<Categoria> listarCategorias() {
		// TODO Auto-generated method stub
		List<Categoria> categorias = new ArrayList();
		for (Categoria c: categoriaRepository.findAll()) {
			categorias.add(c);
		}
		return categorias;
	}
	
}
