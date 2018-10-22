package com.example.demo.service;

import java.util.List;
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
	public Usuario loginUsuario(Usuario u) {
		Usuario aux = new Usuario();
		List<Usuario> usuarios = (List<Usuario>)usuarioRepository.findAll();
		for (Usuario usuario : usuarios) {
			if(usuario.getEmail().equals(u.getEmail())) {
				aux = usuario;
				break;
			} else {
				aux = null;
			}
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

	@Override
	public Usuario buscarUsuario(String email) {
		Usuario aux = new Usuario();
		Optional<Usuario> u = usuarioRepository.findByEmail(email);
		if(u.isPresent()) {
			aux = u.get();
		}else {
			aux = null;
		}
		return aux;
	}
	
	

}
