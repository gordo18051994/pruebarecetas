package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.SortingFocusTraversalPolicy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.interfaces.ICategoriaService;
import com.example.demo.interfaces.IIngredienteRecetaService;
import com.example.demo.interfaces.IIngredienteService;
import com.example.demo.interfaces.IRecetaFavoritaService;
import com.example.demo.interfaces.IRecetaService;
import com.example.demo.interfaces.IUsuarioService;
import com.example.demo.model.Categoria;
import com.example.demo.model.Ingrediente;
import com.example.demo.model.IngredienteReceta;
import com.example.demo.model.Medida;
import com.example.demo.model.Receta;
import com.example.demo.model.RecetaFavorita;
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
	
	@Autowired
	private IRecetaFavoritaService recetasFavoritas;
	
	@Autowired
	private IIngredienteService ingredienteService;
	
	
	@Autowired
	private IIngredienteService ingredienteService;
	
	@Autowired
	private IMedidaService medidaService;
	
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
		 Receta receta = recetaService.buscarReceta(receta_id);
		 System.out.println(receta.getTitulo());
		 System.out.println(""+receta_id);
		List<IngredienteReceta> pepe= ingRecetaService.listarPorReceta(receta_id);
		
		req.setAttribute("receta", receta);
		req.setAttribute("recetaCompleta", pepe);
	
		
		
		List<Receta> listaRecetas = recetaService.listar();
		
		Random rand = new Random();
		
		int r1 = rand.nextInt(listaRecetas.size());
		Receta uno = listaRecetas.get(r1);
		listaRecetas.remove(r1);
		int r2 = rand.nextInt(listaRecetas.size());
		Receta dos = listaRecetas.get(r2);
		listaRecetas.remove(r2);
		int r3 = rand.nextInt(listaRecetas.size());
		Receta tres= listaRecetas.get(r3);
		
		List<Receta> listaRecetasAleatoria = new ArrayList();
		listaRecetasAleatoria.add(uno);
		listaRecetasAleatoria.add(dos);
		listaRecetasAleatoria.add(tres);
		
		session.setAttribute("recetasRandom", listaRecetasAleatoria);
		req.setAttribute("receta", receta);	


		
		
		return "recetaComplet";
	}
	
	
	@RequestMapping("/recetaUsuario")
	public @ResponseBody List<Receta> recetaUsuario(HttpServletRequest req) {
		 session = req.getSession(true);
		System.out.println("entra en recetaUsuario");
		Usuario u = (Usuario) session.getAttribute("usuario");
		List<Receta> recetasUsuario = recetaService.listarPorUsuario(u.getId());
		
		return recetasUsuario;
	}
	
	@RequestMapping("/recetaFavoritas")
	public @ResponseBody List<RecetaFavorita> recetaFavoritas(HttpServletRequest req) {
		 session = req.getSession(true);
		System.out.println("entra en recetaFavoritas");
		Usuario u = (Usuario) session.getAttribute("usuario");
		List<RecetaFavorita> recetas =  recetasFavoritas.listarPorUsuario(u.getId());
		
		return recetas;
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
		List<Medida> medidas = medidaService.listarMedidas();
		List<Ingrediente> ingredientes = ingredienteService.listarIngredientes();
		List<Categoria> categorias = categoriaService.listarCategorias();
		req.setAttribute("listarIngredientes", ingredientes);
		req.setAttribute("listarMedidas", medidas);
		req.setAttribute("listarCategorias", categorias);
		return "addReceta";
	}
	
	@RequestMapping("/añadirRecetaBBDD")
	public String añadirRecetaBBDD(HttpServletRequest req) {
		System.out.println("entra en add receta");
		HttpSession session = req.getSession(true);
		Usuario u = (Usuario) session.getAttribute("usuario");
		int categoria = Integer.parseInt(req.getParameter("categoria"));
		String titulo = req.getParameter("titulo");
		String descripcion = req.getParameter("descripcion");
		String[] ingredientes = req.getParameterValues("ingredientes");
		for (String string : ingredientes) {
			System.out.println(string);
		}
		//String[] cantidad = req.getParameterValues("cantidad");
		//int medida = Integer.parseInt(req.getParameter("medida"));
		Receta rec = new Receta();
		rec.setCategoria_id(categoria);
		rec.setDescripcion(descripcion);
		rec.setTitulo(titulo);
		rec.setUsuario_id(u.getId());
		Receta recetaInsertada = recetaService.addReceta(rec);
		System.out.println("Receta insertada");
		Medida m = new Medida();
		m.setId(1);
		m.setNombre("kilos");
		for (String s : ingredientes) {
			Ingrediente aux = ingredienteService.buscarIngrediente(Integer.parseInt(s));
			System.out.println(aux.getNombre());
			System.out.println(aux.getId());
			IngredienteReceta ingredientesInsertados = new IngredienteReceta();
			ingredientesInsertados.setTablaIngredientes(aux);
			ingredientesInsertados.setTablaMedidas(m);
			ingredientesInsertados.setCantidad_ingrediente(Float.parseFloat("200"));
			ingredientesInsertados.setTablaRecetas(recetaInsertada);
			ingRecetaService.insertarReceta(ingredientesInsertados);
		}
		System.out.println("insertado de puta madre");
		return "addReceta";
	}
	
	
	@RequestMapping("addReceta1")
	public String addReceta1(HttpServletRequest req) {
		return"perfil";
	}
	
	@RequestMapping("/deleteReceta")
	public String deleteReceta(HttpServletRequest req) {
		System.err.println("entra en deleteAnuncios");

		List<Receta> aux = recetaService.listarPorUsuario((String)session.getAttribute("usuario"));
		session.setAttribute("misAnuncios", aux);
		
		return "misanuncios";
	}

	
	
}
