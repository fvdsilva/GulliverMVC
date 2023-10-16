<%@page import="model.Restaurante"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<jsp:useBean id="restaurantes" scope="session" type="model.Restaurantes"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>Gastronomia</title>
  
     <link rel="stylesheet" href="./listRestaurantes.css" />
    <link rel="stylesheet" href="./reset.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
  </head>

  <body>
    <!--Header-->
    <header>
      <div class="container-fluid container-header">
        <h1 class="header-title">GuTraveller</h1>
        <div class="inputSearch">
          <i
            class="fa-solid fa-magnifying-glass iconSearch"
            aria-hidden="true"
          ></i>
          <input
            class="search"
            type="text"
            placeholder="Para onde você quer ir?"
          />
        </div>
        <div class="container-loginFavourite">
          <button class="btn-login">Login</button>
          <i class="fa-regular fa-heart iconHeart"></i>
        </div>

        <div class="menu-mobile dropdown">
          <span class="lupa material-symbols-outlined">search</span>
          <button
            class="btn btn-secondary"
            data-bs-toggle="dropdown"
            aria-expanded="false"
          >
            <i class="fa-solid fa-bars icon-menu"></i>
          </button>
          <ul class="dropdown-menu">
            <li>
              <a class="dropdown-item" href="#"
                ><span class="outro"> Fazer Login</span></a
              >
            </li>
            <li><a class="dropdown-item" href="#">Hotéis</a></li>
            <li><a class="dropdown-item" href="#">Voos</a></li>
            <li><a class="dropdown-item" href="#">Cruzeiros</a></li>
            <li><a class="dropdown-item" href="#">O que fazer</a></li>
            <li><a class="dropdown-item" href="#">Aluguel de carro</a></li>
            <li><a class="dropdown-item" href="#">Restaurantes</a></li>
          </ul>
        </div>
      </div>
    </header>
    <!--Header-->

    <!--Informações-->
    <div class="container-btnMenu">
      <ul class="nav navegacao">
        <li class="nav-item">
          <a
            class="nav-link menu-item"
            aria-current="page"
            href="../../hoteis/sp/index.html"
          >
            Hotéis
            <i class="fa-solid fa-bed fa-pull-right"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled menu-item" href="#">
            O que fazer
            <i class="fa-solid fa-city fa-pull-right"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled menu-item" href="#">
            Aluguel de carros
            <i class="fa-solid fa-car fa-pull-right"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active menu-item" href="../index.html">
            Restaurantes
            <i class="fa-solid fa-burger fa-pull-right"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled menu-item" href="#">
            Voos
            <i class="fa-solid fa-plane fa-pull-right"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled menu-item" href="#">
            Cruzeiros
            <i class="fa-solid fa-ship fa-pull-right"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled menu-item-last" href="#"> ... </a>
        </li>
      </ul>
    </div>
    <!--Informações-->

    <!--Restaurantes-->
   
	<div class="containerCardsRestaunts">
     <h2 class="titulo-pagina">Restaurantes <span>Italianos</span></h2>
   </div>
   
    <%@page import="model.Restaurante" %>
    
    <%for (Restaurante restaurante : restaurantes.listaRestaurantes) { %>
    	
        <div class="containerCardsRestaunts">
     

      <div class="container-res">
        <div class="img-res">
          <img src="<%=restaurante.getImagem() %>" />
          <i class="fa-solid fa-heart"></i>
        </div>
        <div class="info-restaurantes">
          <h2 class="nome-restaurante"><%=restaurante.getTitulo() %> <span>Vini</span></h2>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star-half-stroke"></i>
          <div class="container-endereco">
            <p class="endereco-restaurante"><%=restaurante.getEndereco() %> 
           
            <span><%=restaurante.getCidade() %></span> <span> <%=restaurante.getEstado() %> </span> <span><%=restaurante.getCep() %></span> </p>
          
     
            
            <a href="./trattoriaDoVini.html" class="btn-saiba-mais">Saiba Mais</a>
          </div>
        </div>
      </div>




    </div>

    <!--Restaurantes-->

    <!--Restaurantes--mobile-->

    <div class="res-mobile">
      <div class="container-res-mobile trattoria">
        <i class="fa-solid fa-heart fav"></i>
        <div class="info-res-mobile">
          <h2>Trattoria do <span>Vini</span></h2>
          <div class="star-mobile">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star-half-stroke"></i>
          </div>
        </div>
      </div>




    </div>
        
    <!--Restaurantes-->
    	
    
    <%} %>
	<h1><c:out  value="${restaurantes}" > </c:out> </h1>
    
    <!-- Footer -->
    
    

    <footer>
      <div class="footer-items-social">
        <h4>GuTraveller</h4>
        <span>
          <i class="fa-brands fa-facebook socialIcons"></i>
          <i class="fa-brands fa-instagram socialIcons"></i>
        </span>
      </div>

      <div class="footer-items-links">
        <h4>Sobre o GuTraveller</h4>
        <nav>
          <ul class="nav-footer">
            <li><a class="a-footer" href="#page">Quem Somos</a></li>
            <li><a class="a-footer" href="#explore">Fale Conosco</a></li>
            <li><a class="a-footer" href="hero">Seja um Traveller</a></li>
            <li><a class="a-footer" href="gallery">Planeje sua viagem</a></li>
          </ul>
        </nav>
      </div>

      <div class="footer-items-blog">
        <h4>Conheça o Blog do Gulliver</h4>
        <div class="footer-images-blog">
          <div>
            <img
              src=".//img/barraca-camping.png"
              alt="Bares em São Paulo"
              class="img-footer"
            />
            <p>Acampar é a sua praia?</p>
          </div>
          <div>
            <img
              src="./img/bares-sp.png"
              alt="Acampamento"
              class="img-footer"
            />
            <p>Melhores bares de São Vicente</p>
          </div>
        </div>
      </div>
    </footer>
 
    <!-- Footer -->

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
 