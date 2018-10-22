package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IIngredienteRepository;
import com.example.demo.interfaces.IIngredienteService;
import com.example.demo.model.Ingrediente;

@Service
public class IngredienteSERVICE implements IIngredienteService {
	
	@Autowired
	private IIngredienteRepository ingredienteRepository;

	@Override
	public Ingrediente buscarIngrediente(int id) {
		// TODO Auto-generated method stub
		Ingrediente aux = new Ingrediente();
		Optional<Ingrediente> i = ingredienteRepository.findById(id);
		if (i.isPresent()) {
			aux = i.get();
		}else {
			aux = null;
		}
		return aux;
	}

	@Override
	public List<Ingrediente> listarIngredientes() {
		List<Ingrediente> ingredientes = new ArrayList();
		for (Ingrediente i : ingredienteRepository.findAll()) {
			ingredientes.add(i);
		}
		return ingredientes;
	}

	@Override
	public List<Ingrediente> filtrarIngredientes(String nombre) {
			Optional<List<Ingrediente>> lista = ingredienteRepository.findByNombre(nombre);
			if(lista.isPresent()) {
				return lista.get();
			} else {
				return null;
			}
	}
	
	
}
