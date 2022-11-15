<?php require_once "../dashboard/include.php";  ?>
<?php require_once "../dashboard/functions.php";  ?>

<?php
        if( isset($_GET["pg_id"]) ){
        $pagina_id = $_GET["pg_id"];
        } else {
          $pagina_id = 2;
        }

        //Consulta a tabela usuarios
        $pagina_fixa_info = "SELECT * ";
        $pagina_fixa_info .= "FROM paginas_fixas ";
        $pagina_fixa_info .= "WHERE pagina_id = {$pagina_id} ";

        $info_pagina_fixa = mysqli_query($conecta, $pagina_fixa_info);
        if(!$info_pagina_fixa) {
        die(" Falha na Base de Dados! Page.php Pagina Fixa ");  
        }

        $dados_pagina_fixa = mysqli_fetch_assoc($info_pagina_fixa); 
?>


<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns##">
<head>
  <title> Laboratório de Arqueobotânica e Paisagem – MN/UFRJ  </title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
  <link rel="stylesheet" href="../assets/css/animate.min.css">
  <link rel="stylesheet" href="../assets/css/bootstrap-dropdownhover.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" integrity="sha512-Velp0ebMKjcd9RiCoaHhLXkR1sFoCCWXNp6w4zj1hfMifYB5441C+sKeBl/T/Ka6NjBiRfBBQRaQq65ekYz3UQ==" crossorigin="anonymous" />

  <link rel="stylesheet" href="../assets/css/blog.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

  <link rel="stylesheet" href="../assets/css/style.css">
  <link rel="stylesheet" href="../assets/css/bootnavbar.css"> 

  <link rel="icon" href="../assets/images/favicon.png">
  <meta name="theme-color" content="#3c3c3c">
  <meta name="apple-mobile-web-app-status-bar-style" content="#3c3c3c">
  <meta name="apple-mobile-web-app-status-bar-style" content="#3c3c3c">
  
  <?php echo(carregarOpenGraphs()); ?>
</head>
<body>


  <?php echo(getItemDrop()); ?>



<style type="text/css">
.centered {
    margin: 0 auto !important;
    float: none !important;
}

  .image-right img {
float:  right !important;
}

.caminho {
margin-top:  -15px !important;
}

.container {
  padding: 5px !important;
}

.modal-footer {
text-align: left !important;
justify-content: left;
}

.galeria-retrato {
  margin: 10px 10px 20px 10px !important;
  padding: 0px !important;
  max-width: 180px;
}  

.galeria-retrato img {
  max-width: 180px;
  height: auto;
  margin: 0px !important;
  padding: 0px !important;
}  


		
/* ============ desktop view ============ *
@media all and (min-width: 992px) {
  .navbar .nav-item .dropdown-menu hover-drop { display: none; }
  .navbar .nav-item:hover .nav-link{ color: #fff;  }
  .navbar .nav-item:hover .dropdown-menu hover-drop { display: block; }
  .navbar .nav-item .dropdown-menu hover-drop { margin-top:0; }
} 
/* ============ desktop view .end// ============ */
/* ============ desktop view ============ */
@media all and (min-width: 992px) {
  .navbar .nav-item .hover-drop{ display: none; }
  .navbar .nav-item:hover .hover-drop{ display: block; }
} 

@media all and (min-width: 992px) {
  .navbar .nav-item .nav-item .hover-drop-2{ display: none; }
  .navbar .nav-item .nav-item:hover .hover-drop-2{ display: block; }
} 
/* ============ desktop view .end// ============ */
/* ============ desktop view .end// ============ */

   /*.dropdown-menu {border-radius: 0px; background-color: rgba(35,35,35,1);}
  .dropdown-item {background-color:  rgba(0,0,0,0.05); color: #fff !important;} */
  .my-2 {background-color: rgba(255,255,255,0.25);}
</style>

<style type="text/css">

			#menu .main-menu ul{
			border-radius: 10px !important;
			background-color: white !important;
			margin-left:  15px;
			margin-right: 15px;
			}

			#menu ul {
			  margin: 0;
			  padding: 0;
			}

			#menu .main-menu {
			  display: none;
			}

			#tm:checked + .main-menu {
			  display: block;
			}

			#menu input[type="checkbox"], 
			#menu ul span.drop-icon {
			  display: none;
			}

			#menu li, 
			#toggle-menu, 
			#menu .sub-menu {
			  border-style: solid;
			  border-color: rgba(0, 0, 0, 0);
			}

			#menu li, 
			#toggle-menu {
			  border-width: 0 0 0px;
			  border: 0px solid rgba(0,0,0,0.0);
			}


			#menu .sub-menu {
			  border-width: 0px 0px 0;
			  margin: 0 0.25em;
			}


			#menu .sub-menu li:last-child {
			  border-width: 0;
			}

			#menu li, 
			#toggle-menu, 
			#menu a {
			  position: relative;
			  display: block;
			  color: white;
			  text-decoration: none;
			  text-transform: uppercase;

			}

			#menu, 
			#toggle-menu {
			  background-color: rgb(80, 30, 0) !important;
			}

			 #menu .sub-menu a {
			    color: rgba(70,50,30) !important;
			    text-shadow: 0px !important;
			  } 

			 #menu .sub-menu li {

			  }

			#toggle-menu, 
			#menu a {
			  padding: 1em 1.5em;
			}

			#menu a {
			  transition: all .125s ease-in-out;
			  -webkit-transition: all .125s ease-in-out;
			}

			#menu a:hover {
			}

			#menu .sub-menu {
			  display: none;
			}

			#menu input[type="checkbox"]:checked + .sub-menu {
			  display: block;
			}

			#menu .sub-menu a:hover {
			  color: #444;
			}

			#toggle-menu .drop-icon, 
			#menu li label.drop-icon {
			  position: absolute;
			  right: 1.5em;
			  top: 1.25em;
			}

			#menu label.drop-icon, #toggle-menu span.drop-icon {
			  border-radius: 50%;
			  width: 1em;
			  height: 1em;
			  text-align: center;
			  background-color: rgba(0, 0, 0, .25);
			  text-shadow: 0 0 0 transparent;
			  color: rgba(255, 255, 255, .75);
			}

			#menu .drop-icon {
			  line-height: 1;
			}

			@media only screen and (max-width: 64em) and (min-width: 52.01em) {
			  #menu li {
			    width: 33.333%;
			  }

			  #menu .sub-menu li {
			    width: auto;
			  }
			}

			@media only screen and (min-width: 52em) {
			  #menu .main-menu {
			    display: block;
			  }

			  #toggle-menu, 
			  #menu label.drop-icon {
			    display: none;
			  }

			  #menu ul span.drop-icon {
			    display: inline-block;
			  }

			  #menu li {
			    float: left;
			    border-width: 0 0px 0 0;
			  }

			  #menu .sub-menu li {
			    float: none;
			    border-radius: 5px;
			  }

			  #menu .sub-menu {
			    border-width: 0;
			    margin: 0;
			    position: absolute;
			    top: 100%;
			    left: 0;
			    width: 12em;
			    z-index: 3000;
			  }

			  #menu .sub-menu, 
			  #menu input[type="checkbox"]:checked + .sub-menu {
			    display: none;
			  }

			  #menu .sub-menu li {
			    border-width: 0 0 0px;
			  }

			  #menu .sub-menu .sub-menu {
			    top: 0;
			    left: 100%;
			  }

			  #menu li:hover > input[type="checkbox"] + .sub-menu {
			    display: block;
			  }
			}

		</style>



<center>
<div class="div-principal" >

<!-- SLIDE -->	
<div class="slide_topo d-none d-md-block"></div>
<div class="slide_topo-mobile d-block d-md-none"></div>

    <div class="container">
      <header class="blog-header mt-3  d-none d-md-block w-100 border-0 mb-2">
        <div class="row p-0">

          
		<div class="d-flex justify-content-center mb-2">
            <img src="../assets/images/logo_laboratorio_color_3.png" class="w-50" style="position: relative; top: 0%; left: 27.5%;">	
			<!-- <img src="../assets/images/logo_museu_ufrj_color.png" class="img-logo"> -->					
          </div>

          <div class="float-right d-none d-md-block" style="position: absolute; top: 80%; left: 37.5%;">
			<!--
          <h6 class="font-arial" style="font-size: 22.5px !important;">
          Laboratório de Arqueologia Histórica, Museu Nacional, UFRJ
      	  </h6>
			-->
      	  </div>

        </div>
      </header>

		<nav id="menu" class="d-sm-none .d-md-block">
		  <label for="tm" id="toggle-menu">      		
			  	<div class="m-0">
	      		<img src="../assets/images/logo_laboratorio_texto.png" class="img-logo-mobile img-invert m-0">
				</div>
			<div class="">
				<span class="drop-icon mt-3 mr-4">
					<i class="fas fa-align-justify fa-2x"></i>
				</span>
			</div>	
      			
      	  </label>
		  <input type="checkbox" id="tm">
		  <ul class="main-menu clearfix">

		  	<li><a href="page.php?pg_id=2">Inicio</a></li>
            <li><a href="page.php?pg_id=3">Arqueologia Histórica no Brasil</a></li>
            <li><a href="page.php?pg_id=4">Pessoas</a></li>
            <li><a href="page.php?pg_id=5">Infraestrutura</a></li>
            <li><a href="page.php?pg_id=6">Pesquisas</a></li>
            <li><a href="noticias.php?pg_id=7">Notícias</a></li>
            <li><a href="page.php?pg_id=8">SAHIST</a></li>
            <li><a href="contato.php?pg_id=11">Contato</a></li>

		  </ul>
		</nav>


    <nav class="navbar navbar-expand-lg navbar-dark bg-dark justify-content-left d-none d-sm-block" >
      <div class="navbar-brand d-block d-md-none">
      		<div class="">
      		<img src="../assets/images/logo_laboratorio_texto.png" class="img-logo-mobile img-invert">	
      		</div>		
      </div>

      <button class="navbar-toggler mr-4" type="button" data-toggle="collapse" data-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">

      	<!-- <style type="text/css">
      		 .navbar-toggler-icon {
  			background-image: url('../assets/images/down-arrow.svg') !important;
  			background-size: 30px 15px;
			}
      	</style> -->

        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse justify-content-md-center text-left" id="navbarsExample08">
        <ul class="navbar-nav">

          <li class="nav-item">
            <a class="nav-link" target="_self" href="inicio.php?pg_id=2">Inicio</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" target="_self" href="page.php?pg_id=3">Arqueologia Histórica</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" target="_self" href="page.php?pg_id=4">Pessoas</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" target="_self" href="page.php?pg_id=5">Infraestrutura</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" target="_self" href="page.php?pg_id=6">Pesquisas</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" target="_self" href="noticias.php?pg_id=7">Notícias</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" target="_self" href="">SAHIST</a>
          </li>
        
          <li class="nav-item">
            <a class="nav-link" target="_self" href="contato.php?pg_id=11">Contato</a>
          </li>

        </ul>
      </div>
    </nav>
