package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IRecetaRepository;
import com.example.demo.interfaces.IRecetaService;
import com.example.demo.model.Receta;

@Service
public class RecetaSERVICE implements IRecetaService {
	
	@Autowired
	private IRecetaRepository recetaRepository;
	

	@Override
	public List<Receta> listarPorUsuario(int usuario_id) {
		Optional<List<Receta>> o = recetaRepository.findByUsuario(usuario_id);
		if (o.isPresent()) {
			return o.get();
		}else {
			return null;
		}
	}

	@Override
	public List<Receta> listar() {
		List<Receta> recetas = new ArrayList();
		for (Receta r : recetaRepository.findAll()) {
			recetas.add(r);
		}
		return recetas;
	}

	@Override
	public List<Receta> listarPorCategoria(int categoria_id) {
		Optional<List<Receta>> o = recetaRepository.findByCategoria(categoria_id);
		if (o.isPresent()) {
			return o.get();
		}else {
			return null;
		}
	}

	@Override
	public void borrarReceta(int receta_id) {
		recetaRepository.deleteById(receta_id);
	}

	@Override
	public Receta addReceta(Receta receta) {
		Receta r = new Receta();
		if (recetaRepository.existsById(receta.getId())) {
			r = null;
		}else {}
		recetaRepository.save(receta);
		r = receta;
		return r;
	}

	@Override
	public void actualizarReceta(Receta receta) {
		recetaRepository.save(receta);
	}

	@Override
	public Receta buscarReceta(int receta_id) {
		Receta aux = new Receta();
		Optional<Receta> r = recetaRepository.findById(receta_id);
		if (r.isPresent()) {
			aux = r.get();
		}else {
			aux = null;
		}
		return aux;
	}

	@Override
	public List<Receta> listarPorUsuario(String attribute) {
		// TODO Auto-generated method stub
		return null;
	}

}
