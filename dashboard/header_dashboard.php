

<?php require_once "../include.php";  ?>

<?php require_once "../functions.php";  ?>

<?php require_once "../new_functions.php";  ?>


<!DOCTYPE html>

<html>

<head>

  <title>  Programa de Pós-Graduação em Arqueologia – MN/UFRJ  </title>

  <meta charset="utf-8" />

  <meta name="viewport" content="width=device-width, initial-scale=1" />



  <link rel="stylesheet" href="../../assets/css/bootstrap.min.css" />

  <link rel="stylesheet" href="../../assets/css/blog.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">


  <!-- <script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script> -->
  <script src="//cdn.ckeditor.com/4.16.1/full/ckeditor.js"></script>

  <link rel="stylesheet" href="../../assets/css/style.css">

  <link rel="stylesheet" href="../../assets/css/bootnavbar.css"> 



  <link rel="icon" href="../../assets/images/favicon.png">

  <meta name="theme-color" content="#3c3c3c">

  <meta name="apple-mobile-web-app-status-bar-style" content="#3c3c3c">

  <meta name="apple-mobile-web-app-status-bar-style" content="#3c3c3c">



</head>

<body>



<?php

    //adicionar variavel sessão
    session_start();    

    // Determinar localidade BR
    setlocale(LC_ALL, 'pt_BR');

    //Testando Login
    if (!isset($_SESSION["user_portal"])) {
      echo "<script>alert('$_SESSION não iniciada!);</script>";
      sleep(5);
      header("location: ../../index.php");
    }
    if (isset($_SESSION["user_portal"])){
        $user = $_SESSION["user_portal"];
        $dados = "SELECT * FROM usuarios WHERE usuario_id = '{$user}' ";
        $dados_usuario = mysqli_query($conecta, $dados);
        if(!$dados_usuario) 
          die("Erro de Comunicação | Tabela Usuários em Dashboard");
        $dados_usuario = mysqli_fetch_assoc($dados_usuario);
        //$nome = $dados_usuario["nomecompleto"];
    }

    echo(consultarBancoDeDados($conecta)); 

?>



<center>



<style type="text/css" media="screen">

  .nav-link {

    font-size: 14px !important;

  }

</style>



<div class="div-principal" >



<!-- SLIDE -->	

<div class="slide_topo d-none d-md-block"></div>

<div class="slide_topo-mobile d-block d-md-none"></div>



    <div class="container">

      <header class="blog-header mt-3  d-none d-md-block w-100 border-0 mb-2">

        <div class="row p-0">



          <div class="text-left d-none d-md-block justify-content-left mb-1">

            <img src="../../assets/images/logo_museu_ufrj.png" class="img-logo"> 

            <img src="../../assets/images/logo_laboratorio.png" class="img-logo">						

          </div>



          <div class="float-right d-none d-md-block" style="position: absolute; top: 80%; left: 40%;">

          <h4 class="font-arial" style="font-size: 20px !important;">

           Programa de Pós-Graduação em Arqueologia – MN/UFRJ 

      	  </h4>

      	  </div>



        </div>

      </header>



    <nav class="navbar navbar-expand-lg navbar-dark bg-dark justify-content-left" >

      <div class="navbar-brand d-block d-md-none">

      		<div class="">

      		<img src="../../assets/images/logo_laboratorio_texto.png" class="img-logo-mobile img-invert">	

      		</div>		

      </div>



      <button class="navbar-toggler mr-4" type="button" data-toggle="collapse" data-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">



      	<!-- <style type="text/css">

      		 .navbar-toggler-icon {

  			background-image: url('../../assets/images/down-arrow.svg') !important;

  			background-size: 30px 15px;

			}

      	</style> -->



        <span class="navbar-toggler-icon"></span>

      </button>



      <div class="collapse navbar-collapse" id="navbarsExample08">

        <ul class="navbar-nav">



          <?php

          //Não Existe Login

          if ( !isset($_SESSION["user_portal"])) {

          header("location: ../../index.php");

          ?>

          <li class="nav-item">

            <a class="nav-link" href="dash"><i class="fas fa-tools"></i> Painel do Administrador -  Programa de Pós-Graduação em Arqueologia </a>

          </li>


          <?php
          }
          //Existe Login
          else {
          ?>  


          <li class="nav-item">
            <a class="nav-link" href="paginas.php"><i class="fas fa-file"></i> Páginas</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="subpaginas.php"><i class="far fa-copy"></i> Subpáginas</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="noticias.php"><i class="fas fa-newspaper"></i> Notícias</a>
          </li> 

          <li class="nav-item">
            <a class="nav-link" href="cards.php"><i class="fas fa-grip-horizontal"></i> Cards</a>
          </li>

          <li class="nav-item" >
            <a class="nav-link" href="usuarios.php"><i class="fas fa-users"></i> Usuários</a>
          </li>

          <li class="nav-item" >
            <a class="nav-link" href="slides.php"><i class="fas fa-images"></i> Slides</a>
          </li>

          <li class="nav-item" >
            <a class="nav-link" href="mensagens.php"><i class="fas fa-envelope-open-text"></i> Mensagens</a>
          </li>

          <li class="nav-item" >
            <a class="nav-link" href="configuracoes.php"><i class="fas fa-cog"></i> Configurações</a>
          </li>





          <?php
          } 
          ?>







        </ul>

      </div>

    </nav>



