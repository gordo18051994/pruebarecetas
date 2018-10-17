package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IRecetaFavoritaRepository;
import com.example.demo.interfaces.IRecetaFavoritaService;
import com.example.demo.model.RecetaFavorita;

@Service
public class RecetaFavoritaSERVICE implements IRecetaFavoritaService {
	
	@Autowired
	private IRecetaFavoritaRepository recetaFavoritaRepository;
	
	@Override
	public List<RecetaFavorita> listarPorUsuario(int usuario_id) {
		Optional<List<RecetaFavorita>> rf = recetaFavoritaRepository.findByUsuario(usuario_id);
		if (rf.isPresent()) {
			return rf.get();
		}else {
			return null;
		}
	}

	@Override
	public void borrarRecetaFavorita(int id) {
		recetaFavoritaRepository.deleteById(id);
	}

}
