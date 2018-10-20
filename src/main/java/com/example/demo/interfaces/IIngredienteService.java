package com.example.demo.interfaces;

import java.util.List;

import com.example.demo.model.Ingrediente;

public interface IIngredienteService {
	
	public Ingrediente buscarIngrediente(int id);
	public List<Ingrediente> listarIngredientes();
}
