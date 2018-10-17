package com.example.demo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.IUsuarioRepository;
import com.example.demo.interfaces.IUsuarioService;
import com.example.demo.model.Usuario;

@Service
public class UsuarioSERVICE implements IUsuarioService {
	
	@Autowired
	private IUsuarioRepository usuarioRepository;
	
	@Override
	public Usuario loginUsuario(int id) {
		Usuario aux = new Usuario();
		Optional<Usuario> u = usuarioRepository.findById(id);
		if (u.isPresent()) {
			aux = u.get();
		}else {
			aux = null;
		}
		return aux;
	}

	@Override
	public Usuario addUsuario(Usuario usuario) {
		Usuario u = new Usuario();
		if (usuarioRepository.existsById(usuario.getId())) {
			u = null;
		}else {
			usuarioRepository.save(usuario);
			u = usuario;
		}
		return u;
	}

}
