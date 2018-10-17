package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.interfaces.IUsuarioService;
import com.example.demo.model.Usuario;

@Controller
public class Controlador {
	@Autowired
	private IUsuarioService us;
	
	@RequestMapping("/")
	public ModelAndView inicio(HttpServletRequest req) {
		ModelAndView m = new ModelAndView();
		m.setViewName("index");
		return m;
	}
	@RequestMapping("/login")
	public ModelAndView viewLogin(HttpServletRequest req) {
		ModelAndView m = new ModelAndView();
		m.setViewName("login");
		return m;
	}
	@RequestMapping("/registro")
	public ModelAndView viewRegistro(HttpServletRequest req) {
		ModelAndView m = new ModelAndView();
		m.setViewName("registro");
		return m;
	}
	@RequestMapping("/registrar")
	public ModelAndView registrar(HttpServletRequest req) {
		ModelAndView m = new ModelAndView();
		String usuario = req.getParameter("usuario");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		Usuario u = new Usuario();
		u.setUsuario(usuario);
		u.setEmail(email);
		u.setPassword(password);
		System.out.println(u.getUsuario());
		us.addUsuario(u);
		
		return viewLogin(req);
	}
	@RequestMapping("/logear")
	public ModelAndView login(HttpServletRequest req) {
		HttpSession session = req.getSession(true);
		ModelAndView m = new ModelAndView();
		String usuario = req.getParameter("usuario");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		Usuario u = new Usuario();
		u.setUsuario(usuario);
		u.setEmail(email);
		u.setPassword(password);
		 Usuario aux = us.loginUsuario(u);
		 System.out.println(aux.getUsuario());
		session.setAttribute("usuario", aux);
		
		return inicio(req);
	}
	
	
	
	
}
