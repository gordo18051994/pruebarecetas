package com.example.demo.interfaces;

import java.util.List;

import com.example.demo.model.Medida;

public interface IMedidaService {
	
	public Medida buscarMedida (int id);
	public List<Medida> listarMedidas();
	
}
