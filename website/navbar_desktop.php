<?php require_once "../dashboard/include.php";  ?>
<?php require_once "../dashboard/functions.php";  ?>
<?php require_once "../dashboard/new_functions.php";  ?>

<?php
        if( isset($_GET["pg_id"]) ){
        $pagina_id = $_GET["pg_id"];
        } else {
          $pagina_id = 2;
        }

        //Consulta a tabela usuarios
        $pagina_fixa_info = "SELECT * ";
        $pagina_fixa_info .= "FROM paginas ";
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
  <title> Programa de Pós-Graduação em Arqueologia – MN/UFRJ  </title>
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

<center>
<div class="div-principal" >
	<div class="slide_topo d-none d-md-block"></div>
		<div class="slide_topo-mobile d-block d-md-none"></div>
			<div class="container">
				<header class="blog-header mt-3  d-none d-md-block w-100 border-0 mb-2">
					<div class="row p-0">
						<div class="d-flex justify-content-center mb-2">
							<img src="../assets/images/logo_laboratorio_branco_4.png" class="w-50" style="position: relative; top: 0%; left: 27.5%;">	
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
							<span class="drop-icon mt-3 mr-4"> <i class="fas fa-align-justify fa-2x"></i></span>
						</div>		
					</label>

					<input type="checkbox" id="tm">
					<ul class="main-menu clearfix">

						<li><a href="../home/inicio.php?pg_id=">Home</a></li>

						<li><a href="">Quem somos<span class="drop-icon">▾</span><label title="Toggle Drop-down" class="drop-icon" for="sm1">▾</label></a>  
						<input type="checkbox" id="sm1">
							<ul class="sub-menu">
									<hr class="m-0"><li><a target="_self" href="../quem_somos/equipe.php?pg_id=4">Equipe</a></li>
									<hr class="m-0"><li><a target="_self" href="../quem_somos/infraestrutura.php?pg_id=5">Infraestrutura</a></li>
									<hr class="m-0"><li><a target="_self" href="../quem_somos/parceiros.php?pg_id=6">Parceiros e Financiadores</a></li>
									<hr class="m-0"><li><a target="_self" href="../quem_somos/historia_do_lap.php?pg_id=7">História do LAP</a></li>
							</ul>
						</li>

							<li><a href="">Pesquisa<span class="drop-icon">▾</span><label title="Toggle Drop-down" class="drop-icon" for="sm2">▾</label></a>
								<input type="checkbox" id="sm2">
								<ul class="sub-menu">
									<li><a href="../pesquisa/linhas_de_pesquisa.php?pg_id=8">Linhas de Pesquisa</a></li>
									<li><a href="../pesquisa/especialidades.php?pg_id=10">Especialidades<span class="drop-icon">▾</span><label title="Toggle Drop-down" class="drop-icon" for="sub-sm2">▾</label></a>
									<input type="checkbox" id="sub-sm2">
									<ul class="sub-menu">
									</ul>
									</li>
								</ul>
							</li>

							<li><a href="../colecoes/colecoes.php?pg_id=11">Coleções</a></li>

							<li><a href="">Ensino<span class="drop-icon">▾</span><label title="Toggle Drop-down" class="drop-icon" for="sm3">▾</label></a>  
							<input type="checkbox" id="sm3">
								<ul class="sub-menu">
										<li><a class="dropdown-item" target="_self" href="../ensino/pos_graduacao.php?pg_id=12">Pós-Graduação</a></li><hr class="m-0">
										<li><a class="dropdown-item" target="_self" href="../ensino/iniciao_cientifica.php?pg_id=14">Iniciação Científica</a></li><hr class="m-0">  
								</ul>
							</li>

								<li><a href="">Produção Acadêmica<span class="drop-icon">▾</span><label title="Toggle Drop-down" class="drop-icon" for="sm4">▾</label></a>
								<input type="checkbox" id="sm4">
								<ul class="sub-menu">

									<li><a href="">Arqueologia pré-colonial<span class="drop-icon">▾</span><label title="Toggle Drop-down" class="drop-icon" for="sub-sm4">▾</label></a>
									<input type="checkbox" id="sub-sm4">
										<ul class="sub-menu">
											<li><a 	target="_self" href="../producao_academica/producao_academica_mod.php?pg_id=54">Sambaquis</a></li><hr class="m-0">
											<li><a  target="_self" href="../producao_academica/producao_academica_mod.php?pg_id=55">Ceramistas</a></li><hr class="m-0">
											<li><a  target="_self" href="../producao_academica/producao_academica_mod.php?pg_id=56">Paleoíndios</a></li><hr class="m-0">
											<li><a  target="_self" href="../producao_academica/producao_academica_mod.php?pg_id=65">Outros</a></li><hr class="m-0">
										</ul>
									</li>
								</ul>
								</li>

							<li><a href="">Difusão do conhecimento<span class="drop-icon">▾</span><label title="Toggle Drop-down" class="drop-icon" for="sm5">▾</label></a>  
							<input type="checkbox" id="sm5">
								<ul class="sub-menu">

									<li><a href="">Extensão <span class="drop-icon">▾</span><label title="Toggle Drop-down" class="drop-icon" for="sub-sm5">▾</label></a>
									<input type="checkbox" id="sub-sm5">
										<ul class="sub-menu">
											<li><a target="_self" href="../difusao_do_conhecimento/programas.php?pg_id=9">Programa</a></li><hr class="m-0">
											<li><a target="_self" href="../difusao_do_conhecimento/projetos.php?pg_id=15">Projetos</a></li><hr class="m-0">
											<li><a target="_self" href="../difusao_do_conhecimento/cursos.php?pg_id=13">Cursos</a></li><hr class="m-0">
											<li><a target="_self" href="../difusao_do_conhecimento/eventos.php?pg_id=16">Eventos</a></li><hr class="m-0">
											</ul>
									</li>


									<li><a href="">Divulgação Científica<span class="drop-icon">▾</span><label title="Toggle Drop-down" class="drop-icon" for="sub-sm6">▾</label></a>
									<input type="checkbox" id="sub-sm6">
										<ul class="sub-menu">
											<li><a  target="_self" href="../difusao_do_conhecimento/lap_nas_midias.php?pg_id=17">LAP nas Mídias</a></li><hr class="m-0">
											<li><a  target="_self" href="../difusao_do_conhecimento/redes_sociais.php?pg_id=19">Redes Sociais</a></li>
											</ul>
									</li>

								</ul>
							</li>

							<li><a href="../contato/contato.php?pg_id=18">Contato</a></li>

							<li><a href="#">Sistemas</a></li>


					</ul>
					</nav>

				<nav class="navbar navbar-expand-lg navbar-dark bg-dark justify-content-left d-none d-sm-block" >

				<div class="navbar-brand d-block d-md-none">
						<div class="">
						<img src="../assets/images/logo_laboratorio_texto.png" class="img-logo-mobile img-invert">	
						</div>		
				</div>

				<button class="navbar-toggler mr-4" type="button" data-toggle="collapse" data-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
					<!-- 
						<style type="text/css">
							.navbar-toggler-icon {
							background-image: url('../../assets/images/down-arrow.svg') !important;
							background-size: 30px 15px;
							}
						</style> 
					-->
					<span class="navbar-toggler-icon"></span>
				</button>

					<div class="collapse navbar-collapse justify-content-md-center text-left" id="navbarsExample08">
						<ul class="navbar-nav">
							<li class="nav-item">
								<a class="nav-link" target="_self" href="page.php?pg_id=2"> Home </a>
							</li>
							
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="page.php?pg_id=3" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Ingresso </a>
									<ul class="dropdown-menu hover-drop " aria-labelledby="navbarDropdown">
										<li><a class="dropdown-item" target="_self" href="../quem_somos/equipe.php?pg_id=4">Processo seletivo</a></li>
										<hr class="my-2"><li><a class="dropdown-item" target="_self" href="../quem_somos/infraestrutura.php?pg_id=5">Formulários</a></li>
										<hr class="my-2"><li><a class="dropdown-item" target="_self" href="../quem_somos/parceiros.php?pg_id=6">Bolsas e auxílios</a></li>
									</ul>
							</li>

							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="page.php?pg_id=4" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								O programa </a>
									<ul class="dropdown-menu hover-drop " aria-labelledby="navbarDropdown">
										<li><a class="dropdown-item" target="_self" href="../quem_somos/equipe.php?pg_id=4">Informações gerais</a></li>
										<hr class="my-2"><li><a class="dropdown-item" target="_self" href="../quem_somos/infraestrutura.php?pg_id=5">Objetivos e público-alvo</a></li>
										<hr class="my-2"><li><a class="dropdown-item" target="_self" href="../quem_somos/parceiros.php?pg_id=6">Linhas de pesquisa</a></li>
										<hr class="my-2"><li><a class="dropdown-item" target="_self" href="../quem_somos/parceiros.php?pg_id=6">Quadro de disciplina</a></li>
										<hr class="my-2"><li><a class="dropdown-item" target="_self" href="../quem_somos/parceiros.php?pg_id=6">Regulamentos e formulários</a></li>
										<hr class="my-2"><li><a class="dropdown-item" target="_self" href="../quem_somos/parceiros.php?pg_id=6">Dissertações e teses defendidas</a></li>
									</ul>
							</li>		
							
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="page.php?pg_id=5" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Pessoas </a>
									<ul class="dropdown-menu hover-drop " aria-labelledby="navbarDropdown">
										<li><a class="dropdown-item" target="_self" href="../quem_somos/equipe.php?pg_id=4">Administração</a></li>
										<hr class="my-2"><li><a class="dropdown-item" target="_self" href="../quem_somos/infraestrutura.php?pg_id=5">Docentes</a></li>
										<hr class="my-2"><li><a class="dropdown-item" target="_self" href="../quem_somos/parceiros.php?pg_id=6">Discentes</a></li>
										<hr class="my-2"><li><a class="dropdown-item" target="_self" href="../quem_somos/parceiros.php?pg_id=6">Professores visitantes e pós-doutorandos</a></li>
										<hr class="my-2"><li><a class="dropdown-item" target="_self" href="../quem_somos/parceiros.php?pg_id=6">Egressos</a></li>
									</ul>
							</li>	

							<!-- <li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Difusão do conhecimento
								</a>
									<ul class="dropdown-menu hover-drop " aria-labelledby="navbarDropdown">

										<li class="nav-item dropdown">
											<a class="dropdown-item dropdown-toggle" target="_self" href="" id="navbarDropdown1" role="button" data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="false">
												Extensão
											</a>
											<ul class="dropdown-menu hover-drop-2" aria-labelledby="navbarDropdown3">
												<li><a class="dropdown-item" target="_self" href="../difusao_do_conhecimento/programas.php?pg_id=9">Programa</a></li><hr class="my-2">
												<li><a class="dropdown-item" target="_self" href="../difusao_do_conhecimento/projetos.php?pg_id=15">Projetos</a></li><hr class="my-2">
												<li><a class="dropdown-item" target="_self" href="../difusao_do_conhecimento/cursos.php?pg_id=13">Cursos</a></li><hr class="my-2">
												<li><a class="dropdown-item" target="_self" href="../difusao_do_conhecimento/eventos.php?pg_id=16">Eventos</a></li>
											</ul>   
										</li>

										<hr class="my-2"><li class="nav-item dropdown">
											<a class="dropdown-item  dropdown-toggle" target="_self" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="false">
												Divulgação Científica
											</a>
											<ul class="dropdown-menu hover-drop-2 " aria-labelledby="navbarDropdown4">
												<li><a class="dropdown-item" target="_self" href="../difusao_do_conhecimento/lap_nas_midias.php?pg_id=17">LAP nas Mídias</a></li><hr class="my-2">
												<li><a class="dropdown-item" target="_self" href="../difusao_do_conhecimento/redes_sociais.php?pg_id=19">Redes Sociais</a></li>
											</ul>   
										</li>                        

									</ul>
							</li> -->

							<li class="nav-item">
								<a class="nav-link" target="_self" href="page.php?pg_id=6" >Instalações</a>
							</li>

							<li class="nav-item">
								<a class="nav-link" target="_self" href="page.php?pg_id=7">Contatos</a>
							</li>

						</ul>
					</div>

				</nav>


	