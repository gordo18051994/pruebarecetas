package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IRecetaFavoritaRepository;
import com.example.demo.interfaces.IRecetaFavoritaService;

@Service
public class RecetaFavoritaSERVICE implements IRecetaFavoritaService {
	
	@Autowired
	private IRecetaFavoritaRepository recetaFavoritaRepository;

}
