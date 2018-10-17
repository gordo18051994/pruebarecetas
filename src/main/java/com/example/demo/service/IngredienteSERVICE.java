package com.example.demo.service;

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
	
}
