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
		
		echo(consultarBancoDeDados($conecta)); 
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
      

				<?php //require_once "navbar_mobile.php";  ?>
				<?php require_once "new_navbar_desktop.php";  ?></br>
				<?php require_once "navbar_desktop.php";  ?>
				


	