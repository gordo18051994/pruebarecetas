package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.interfaces.ICategoriaService;
import com.example.demo.interfaces.IRecetaService;
import com.example.demo.interfaces.IUsuarioService;
import com.example.demo.model.Receta;
import com.example.demo.model.Usuario;

@Controller
public class Controlador {
	@Autowired
	private IUsuarioService us;
	
	@Autowired
	private ICategoriaService categoriaService;
	
	@Autowired
	private IRecetaService recetaService;
	
	HttpSession session;
	
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
		session = req.getSession(true);
		ModelAndView m = new ModelAndView();
		String usuario = req.getParameter("usuario");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		Usuario u = new Usuario();
		u.setUsuario(usuario);
		u.setEmail(email);
		u.setPassword(password);
		 Usuario aux = us.loginUsuario(u);
		session.setAttribute("usuario", aux);
		
		return inicio(req);
	}
	

	@RequestMapping("/categorias")
	public String categorias (HttpServletRequest req) {
		session = req.getSession(true);
		System.out.println("entra en categorias");
		session.setAttribute("listarCategorias", categoriaService.listarCategorias());
		
		return "categorias";
	}
	
	@RequestMapping("/recetas")
	public String recetas(HttpServletRequest req) {
		session = req.getSession(true);
		System.out.println("entra en recetas");

		List<Receta> listaRecetas = recetaService.listarPorCategoria(3);
		req.setAttribute("listarRecetas", listaRecetas);
		
		// CONFIRMAR QUE ESTA COGIENDO LA ID DE LA RECETA
//		List<Receta> listaRecetas = recetaService.listarPorCategoria(Integer.parseInt(req.getParameter("id_categoria")));
//		
//		req.setAttribute("listarRecetas", listaRecetas);
		
		return "recetas";
	}
	
	
	@RequestMapping("/recetaCompleta")
	public String recetaCompleta(HttpServletRequest req) {
		 session = req.getSession(true);
		System.out.println("entra en recetaCompleta");
		
		Receta receta;
		//receta = recetaService.bus
		
		req.setAttribute("listarCategorias", categoriaService.listarCategorias());
		
		return "recetaCompleta";
	}
	
	
	@RequestMapping("/cerrarSesion")
	public ModelAndView cerrarSesion(HttpServletRequest req) {
		HttpSession session = req.getSession(true);
		ModelAndView m = new ModelAndView();
		session.invalidate();
		return inicio(req);

	}
	
	
	
	
}
