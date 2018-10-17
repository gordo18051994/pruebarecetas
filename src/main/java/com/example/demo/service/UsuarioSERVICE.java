package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IUsuarioRepository;
import com.example.demo.interfaces.IUsuarioService;

@Service
public class UsuarioSERVICE implements IUsuarioService {
	
	@Autowired
	private IUsuarioRepository usuarioRepository;

}
