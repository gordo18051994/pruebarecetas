package com.example.demo.interfaces;

import com.example.demo.model.Usuario;

public interface IUsuarioService {
	
	public Usuario loginUsuario(int id);
	public Usuario addUsuario(Usuario usuario);

}
