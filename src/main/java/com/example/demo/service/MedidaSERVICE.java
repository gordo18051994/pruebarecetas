package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IMedidaRepository;
import com.example.demo.interfaces.IMedidaService;
import com.example.demo.model.Medida;

@Service
public class MedidaSERVICE implements IMedidaService {
	
	@Autowired
	private IMedidaRepository medidaRepository;

	@Override
	public Medida buscarMedida(int id) {
		Medida aux = new Medida();
		Optional<Medida> m = medidaRepository.findById(id);
		if (m.isPresent()) {
			aux = m.get();
		}else {
			aux = null;
		}
		return aux;
	}

	@Override
	public List<Medida> listarMedidas() {
		List<Medida> medidas = new ArrayList();
		for (Medida m : medidaRepository.findAll()) {
			medidas.add(m);
		}
		return medidas;
	}

}
