
<!------ Include the above in your HEAD tag ---------->

<%@page import="com.example.demo.model.Usuario"%>
<header id="header">
    <div class="container">

      <div  class="pull-left">
       <!-- <h1><a href="#intro" class="scrollto">Recetas de la abuela</a></h1> -->
        <!-- Uncomment below if you prefer to use an image logo -->
        <img id="logo" src="images/logoAnuntiate.png" alt="" title="" />
      </div>
		<% Usuario u = (Usuario) session.getAttribute("usuario");%>
      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="/">Inicio</a></li>
          <li><a href="/categorias">Categorias</a></li>
          <% if(u == null) { %>
          <li><a  href="/login">Login</a></li>
          <%}else {
          %>
           <li class="menu-has-children"><a href=""><%=u.getUsuario() %></a>
            <ul>
              <li><a href="#">Mis recetas</a></li>
              <li><a href="/perfil">Perfil</a></li>
              <li><a href="#">Subir anuncios</a></li>
              <li><a href="/cerrarSesion">Cerrar sesion</a></li>
            </ul>
          </li>
          <%} %>
          <!-- <li><a href="">Contact</a></li> -->
        </ul>
      </nav><!-- #nav-menu-container -->

    </div>
  </header><!-- #header -->