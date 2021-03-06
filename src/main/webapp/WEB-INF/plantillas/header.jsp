
<!------ Include the above in your HEAD tag ---------->

<%@page import="com.example.demo.model.Usuario"%>
<header id="header">
    <div class="container">

      <div  class="pull-left">
       <!-- <h1><a href="#intro" class="scrollto">Recetas de la abuela</a></h1> -->
        <!-- Uncomment below if you prefer to use an image logo -->
        <a href="/" ><img id="logo" src="images/logoRecetaAbuela.png" alt="" title="" /></a>
      </div>
		<% Usuario u = (Usuario) session.getAttribute("usuario");%>
      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="/">Inicio</a></li>
          <li><a href="/recetas">Recetas</a></li>
          <% if(u == null) { %>
          <li><a  href="/login">Login</a></li>
          <%}else {
          %>
           <li class="menu-has-children"><a href="perfil"><%=u.getUsuario() %></a>
            <ul>
              <li><a href="/perfil">Mi Perfil</a></li>            
              <li><a href="/misRecetas">Mis recetas</a></li>
              <li><a href="/cerrarSesion">Cerrar sesi�n</a></li>
            </ul>
          </li>
          <%} %>
          <!-- <li><a href="">Contact</a></li> -->
        </ul>
      </nav><!-- #nav-menu-container -->

    </div>
  </header><!-- #header -->