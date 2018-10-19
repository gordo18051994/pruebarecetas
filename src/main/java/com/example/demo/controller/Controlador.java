package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.interfaces.ICategoriaService;
import com.example.demo.interfaces.IIngredienteRecetaService;
import com.example.demo.interfaces.IRecetaService;
import com.example.demo.interfaces.IUsuarioService;
import com.example.demo.model.Categoria;
import com.example.demo.model.IngredienteReceta;
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
	
	@Autowired
	private IIngredienteRecetaService  ingRecetaService;
	
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
	@RequestMapping("/categoriasAjax")
	public @ResponseBody List<Categoria> categoriasAjax (HttpServletRequest req) {
		session = req.getSession(true);
		System.out.println("entra en categorias");
		List<Categoria> lista = categoriaService.listarCategorias();
		
		return lista;
	}
	
	
	
	@RequestMapping("/recetas")
	public String recetas(HttpServletRequest req) {
		session = req.getSession(true);
		System.out.println("entra en recetas");

		List<Receta> listaRecetas = recetaService.listar();
		session.setAttribute("listarRecetas", listaRecetas);
		
		// CONFIRMAR QUE ESTA COGIENDO LA ID DE LA RECETA
//		List<Receta> listaRecetas = recetaService.listarPorCategoria(Integer.parseInt(req.getParameter("id_categoria")));
//		
//		req.setAttribute("listarRecetas", listaRecetas);
		session.setAttribute("listarCategorias", categoriaService.listarCategorias());
		return "recetas";
	}
	
	@RequestMapping("/recetasCategoria")
	public String recetasCategoria(HttpServletRequest req) {
		session = req.getSession(true);
		int id_categoria = Integer.parseInt(req.getParameter("id_categoria"));
		System.out.println("entra en recetasCategoria");


		List<Receta> listaRecetas = recetaService.listarPorCategoria(id_categoria); 
		session.setAttribute("listarRecetas", listaRecetas);
		
		return "recetas";
	}
	
	@RequestMapping("/receta")
	public String recetaCompleta(HttpServletRequest req) {
		 session = req.getSession(true);
		 
		System.out.println("entra en receta completa");
		 int receta_id = Integer.parseInt(req.getParameter("id_receta"));
		 System.out.println(""+receta_id);
		List<IngredienteReceta> pepe= (List<IngredienteReceta>) ingRecetaService.listarPorReceta(receta_id);
		
		req.setAttribute("recetaCompleta", pepe);
		
		
		return "recetaCompleta";
	}
	
	
	@RequestMapping("/recetaUsuario")
	public String recetaUsuario(HttpServletRequest req) {
		 session = req.getSession(true);
		System.out.println("entra en recetaUsuario");
		Usuario u = (Usuario) session.getAttribute("usuario");
		Receta receta = (Receta)recetaService.listarPorUsuario(u.getId());
		
		req.setAttribute("recetaUsuario", receta);	
		
		return "recetaCompleta";
	}
	
	
	@RequestMapping("/cerrarSesion")
	public ModelAndView cerrarSesion(HttpServletRequest req) {
		HttpSession session = req.getSession(true);
		ModelAndView m = new ModelAndView();
		session.invalidate();
		return inicio(req);

	}
	
	@RequestMapping("/perfil")
	public String perfil(HttpServletRequest req) {
		return "perfil";
	}
	
	@RequestMapping("/añadirReceta")
	public String añadirReceta(HttpServletRequest req) {
		System.out.println("entra en add receta");
		return "addReceta";
	}
	
	@RequestMapping("addReceta1")
	public String addReceta1(HttpServletRequest req) {
		
		
		
		return"perfil";
	}
	
	
	
	
}
