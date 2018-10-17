package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IIngredienteRecetaRepository;
import com.example.demo.interfaces.IIngredienteRecetaService;
import com.example.demo.model.IngredienteReceta;

@Service
public class IngredienteRecetaSERVICE implements IIngredienteRecetaService {

	@Autowired
	private IIngredienteRecetaRepository ingredienteRecetaRepository;

	@Override
	public List<IngredienteReceta> listarPorReceta(int receta_id) {
		// TODO Auto-generated method stub
		Optional<List<IngredienteReceta>> ir = ingredienteRecetaRepository.findByReceta(receta_id);
		if (ir.isPresent()) {
			return ir.get();
		}else {
			return null;
		}

	}
	
}
