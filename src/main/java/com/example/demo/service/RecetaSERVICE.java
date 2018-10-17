package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IRecetaRepository;
import com.example.demo.interfaces.IRecetaService;

@Service
public class RecetaSERVICE implements IRecetaService {
	
	@Autowired
	private IRecetaRepository recetasRepository;

}
