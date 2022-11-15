
<?php require_once "header.php";  ?>
    
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
<main class="container">

  <div class="container text-justify mt-3 mb-3 ">
        <div class="row">

          <div class="col-sm-6" style="background-color: rgb(70,30,10) !important;">
          
            <h1 class="text-white"><b><?php echo $dados_pagina_fixa["pagina_titulo"];?></b></h1>
            <p class="" style="color: white !important; font-size: 13px !important; ">
            <?php echo base64_decode($dados_pagina_fixa["pagina_conteudo"]); ?>	</p>
          </div>

          <div class="col-sm-6" style="">
          <?php echo( exibir_slide_fixo( 0, '../dashboard/dados/', 'auto', '100%') ); ?>

            <!--
            <img 
            class="d-block ml-sm-3" 
            style="width: auto !important; height: 100% !important;" 
            src="../dashboard/dados/<?php echo $dados_pagina_fixa["pagina_imagem_capa"];?>"
            >
            -->

          </div>
          
        </div>
  </div>



<div class="row">
  <?php echo( exibir_card_news(1,'../dashboard/dados/') ); ?>
  <?php echo( exibir_card_news(2,'../dashboard/dados/') ); ?>
  <?php echo( exibir_card_news(3,'../dashboard/dados/') ); ?>
  <?php echo( exibir_card_news(4,'../dashboard/dados/') ); ?> 
</div>


    
    

  <div class="row g-5">
    <div class="col-md-8">
      
    <!--
      <h3 class="pb-2 mb-4 fst-italic border-bottom">
        Introdução
    </h3>
    -->

      </p><hr>

        <h2>LINKS UTEIS</h2>

        <h3> Museu Nacional </h3>
        <a target="_blanck" href="https://www.museunacional.ufrj.br ">
        https://www.museunacional.ufrj.br </a>

        <h3> PPGArq- Programa de pós-Graduação em Arqueologia </h3>
        <a target="_blanck" href="https://www.museunacional.ufrj.br/ppgarq">
        https://www.museunacional.ufrj.br/ppgarq</a>

        <h3> LAH no Researchgate </h3>
        <a target="_blanck" href="https://www.researchgate.net/lab/Laboratory-of-Historical-Archeology-National-Museum-UFRJ-Marcos-Andre-Torres-de-Souza">
          https://www.researchgate.net/lab/Laboratory-of-Historical-Archeology-National-Museum-UFRJ-Marcos-Andre-Torres-de-Souza</a>

      </p><hr>

         



      
    </div>

    <div class="col-md-4">
      <div class="position-sticky" style="top: 2rem;">

        <div class="p-4">
          <h4 class="fst-italic"> <i class="fas fa-sitemap"></i> Mapa do site </h4>
          <ol class="list-unstyled">
            <li><a href="page.php?pg_id=2">Inicio</a></li>
            <li><a href="page.php?pg_id=3">Arqueologia Histórica no Brasil</a></li>
            <li><a href="page.php?pg_id=4">Pessoas</a></li>
            <li><a href="page.php?pg_id=5">Infraestrutura</a></li>
            <li><a href="page.php?pg_id=6">Pesquisas</a></li>
            <li><a href="noticias.php?pg_id=7">Notícias</a></li>
            <li><a href="page.php?pg_id=8">SAHIST</a></li>
            <li><a href="contato.php?pg_id=11">Contato</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>

</main>



<?php require_once "footer.php";  ?>