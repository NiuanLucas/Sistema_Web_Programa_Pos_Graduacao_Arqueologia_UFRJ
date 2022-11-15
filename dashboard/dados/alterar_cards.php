<?php require_once "../header_dashboard.php";  ?>





<?php



$mensagem1 = "";

   //UPDATE TABLE

    if(isset($_POST["card_id"])){


        $card_id= $_POST["card_id"];

        $card_nome = $_POST["card_nome"];

        $card_image_old =  $_POST["card_image_old"];

        $card_descricao = $_POST["card_descricao"];

        $card_url_externa = $_POST["card_url_externa"];

        $card_categoria = $_POST["card_categoria"];

        $card_pagina_id = $_POST["card_pagina_id"];


        //Existe Nova imagem, logo faça o upload 

        if ($_FILES['upload_image']['tmp_name'] != null) {

        $diretorio1 = "images_capas";

        $arquivo_temporario1 = $_FILES['upload_image'] ['tmp_name'];

        $arquivo1 = basename($_FILES['upload_image'] ['name']);

        $imagem_grande = $arquivo1;

        $imagem_grande_upload = $diretorio1."/".$imagem_grande;

        if(move_uploaded_file($arquivo_temporario1, $diretorio1."/".$arquivo1)) {
        $mensagem1 = "SUCESSO - Upload de Arquivo Realizado. (" .$arquivo1. ")";
        } else {
        $mensagem1 = "ERRO - Falha no Upload de Arquivo. (" .$arquivo1. ")";
        }

        // Não Existe Nova imagem, manter imagem antiga 

        } else {
        $imagem_grande_upload = $card_image_old; 
        }

        $atualizar = "UPDATE cards ";

        $atualizar .= "SET ";

        $atualizar .= "card_id = '{$card_id}', ";

        $atualizar .= "card_nome = '{$card_nome}', ";

        $atualizar .= "card_descricao = '{$card_descricao}', ";

        $atualizar .= "card_url_externa = '{$card_url_externa}', ";

        $atualizar .= "card_categoria = '{$card_categoria}', ";

        $atualizar .= "card_image = '{$imagem_grande_upload}', ";

        $atualizar .= "card_pagina_id = '{$card_pagina_id}' ";

        $atualizar .= "WHERE  card_id = {$card_id} ";



        $operacao_atualizar = mysqli_query($conecta, $atualizar);

        if(!$operacao_atualizar){

            die("Erro na Atualização do Banco de Dados </br></br></br> " . $atualizar. " </br></br></br>  Card: '{$imagem_grande_upload}' | Card Antigo: '{$card_image_old}' ");


        } else  {

           echo "<script> window.location.href = 'cards.php'; </script>";

            //header("Location: cards.php");

                }

        }



        if( isset($_GET["pg_id"]) ){

        $card_id = $_GET["pg_id"];

        } else {

           header("Location: cards.php");

        }



        //Consulta a tabela usuarios

        $pagina_alterar = "SELECT * ";

        $pagina_alterar .= "FROM cards ";

        $pagina_alterar .= "WHERE card_id = {$card_id} ";



        $info_pagina = mysqli_query($conecta, $pagina_alterar);

        if(!$info_pagina) {

        die(" Falha na Base de Dados! Alterar Paginas Cards </br></br> " .$pagina_alterar);  

        }



        $dados_pagina = mysqli_fetch_assoc($info_pagina);  

         // Consulta a Tabela Paginas Modulares
        $tr2 = "SELECT * ";
        $tr2 .= "FROM paginas_modulares ";
        $tr2 .= "WHERE pagina_modular_categoria = 'noticias' ORDER BY pagina_modular_id ASC";
        $consulta_tr2 = mysqli_query($conecta, $tr2);
        if(!$consulta_tr2) {
            die("Falha na consulta ao banco Paginas Modulares Header | Paginas Modulares");   
        }            



?>



<div class="container">

	<div class="row">

  <div class="col col-12 mt-5 mb-5">



  <h3 class="h4 mt-3 mb-3"><i class="fas fa-grip-horizontal"></i> Alterar Card</h3>

  <hr class="my-2">





<form class="mt-4" action="alterar_cards.php" method="post" enctype="multipart/form-data" accept-charset="utf-8">



   <div class="form-group d-none">

    <label for="exampleFormControlInput1">Card ID</label>

    <input required="" type="text" name="card_id"  value="<?php echo $dados_pagina['card_id']; ?>" class="form-control" placeholder="">

  </div> 



  <div class="form-group">

    <label for="exampleFormControlInput1">Nome (Título)</label>

    <input required="" type="text" name="card_nome"  value="<?php echo $dados_pagina['card_nome']; ?>" class="form-control" placeholder="">

  </div>


  <div class="form-group">

    <label for="exampleFormControlInput1">Image Old</label>

    <input type="text" name="card_image_old"  value="<?php echo $dados_pagina['card_image']; ?>" class="form-control">

  </div>


  <div class="form-group">

    <input type="hidden" name="MAX_FILE_SIZE" value="6000000">

    <label for="exampleFormControlFile1">Imagem de Capa</label>

    <input type="file"  name="upload_image" class="form-control-file">

    <small> <?php echo $mensagem1; ?> </small>

  </div>


  <div class="form-group">

    <label for="exampleFormControlInput1">Descrição</label>

    <input type="text" name="card_descricao" value="<?php echo $dados_pagina['card_descricao']; ?>" class="form-control" placeholder="">

  </div>

  <div class="form-group">

    <label for="exampleFormControlInput1">URL</label>

    <input type="text" name="card_url_externa" value="<?php echo $dados_pagina['card_url_externa']; ?>" class="form-control" placeholder="">

  </div>


  <div class="form-group">

  <label for="exampleFormControlInput1">Selecionar Notícia para ser Anexada</label>

  <select required="" class="form-control " name="card_pagina_id">

  <option selected="" value="0"> *Escolher quando a página for um link externo </option>

  <?php while($linha4 = mysqli_fetch_assoc($consulta_tr2)) { ?>  

  <option value="<?php echo $linha4['pagina_modular_id']; ?>"> <?php echo $linha4['pagina_modular_titulo']; ?> </option>

  <?php } ?>

  </select>

  <small class="text-muted mt-0 mb-3"> *Para um novo objeto página ser exibido nas opções acima, deve ser criado antes deste card.  </small>

  </div>  




  <div class="form-group">

    <label for="exampleFormControlInput1">Categoria</label>

    <input type="text" name="card_categoria" value="<?php echo $dados_pagina['card_categoria']; ?>" class="form-control" placeholder="">

  </div>





  <!--

  <div class="form-group">

  <label for="exampleFormControlInput1">Categoria</label>

  <select required="" class="form-control mb-3" name="card_categoria">

  <option selected=""  disabled="">Selecionar Categoria</option>

  <option value="noticia_1_home">1° Notícia da página Inicial</option>

  <option value="noticia_2_home">2° Notícia da página Inicial</option>

  <option value="facebook">Facebook Link</option>

  <option value="instagram">Instagram Link</option>

  </select>

  </div>

  -->


  

      <script>

     CKEDITOR.replace( 'pagina_modular_conteudo', {

      height: 300,

      filebrowserUploadUrl: "upload.php"

     });

    </script>



  <center>



  <button type="submit" class="btn bg-dark text-white mt-3 mr-1"> Alterar dados do Card </button>  



  <a href='cards.php'> 

  <button type='button' class='btn bg-secondary text-white mt-3'>Cancelar</button> 

  </a>  



  </center>



</form>







    </div>

	</div>

</div>





<?php require_once "../footer_dashboard.php";  ?>