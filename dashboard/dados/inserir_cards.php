<?php require_once "../header_dashboard.php";  ?>



<?php

 $mensagem1 = "";

//INSERIR NO BANCO DE DADOS

    if(isset($_POST["card_nome"])){

        $card_nome = $_POST["card_nome"];

        $card_descricao = $_POST["card_descricao"];

        $card_categoria = $_POST["card_categoria"];

        $card_pagina_id = $_POST["card_pagina_id"];



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



        $inserir = "INSERT INTO cards ";

        $inserir .= "(card_nome,card_descricao,card_categoria,card_pagina_id,card_image) ";

        $inserir .= "VALUES ";

        $inserir .= "('$card_nome','$card_descricao','$card_categoria','$card_pagina_id', '$imagem_grande_upload') ";



        $operacao_inserir = mysqli_query($conecta, $inserir);



        if(!$operacao_inserir){

          die("Erro do Banco de Dados </br></br></br> " . $inserir . " </br></br></br> ");;

        } else {

          echo "<script> window.location.href = 'cards.php'; </script>";

            //header("location: cards.php");

        }



    }



?>





<div class="container">

	<div class="row">

  <div class="col col-12 mt-5 mb-5">



  <h3 class="h4 mt-3 mb-3"><i class="fas fa-grip-horizontal"></i> Inserir Cards</h3>

  <hr class="my-2">



<form class="mt-4" action="inserir_cards.php" method="post" enctype="multipart/form-data" accept-charset="utf-8">



  <div class="form-group">

    <label for="exampleFormControlInput1">Nome (Título) </label>

    <input required="" type="text" name="card_nome" class="form-control" placeholder="">

  </div>



  <div class="form-group">

    <label for="exampleFormControlInput1">URL</label>

    <input type="text" name="card_descricao" class="form-control" placeholder="">

  </div>



  <div class="form-group">

    <input type="hidden" name="MAX_FILE_SIZE" value="6000000">

    <label for="exampleFormControlFile1">Imagem de Capa</label>

    <input  type="file" required="" name="upload_image" class="form-control-file">

    <small> <?php echo $mensagem1; ?> </small>

  </div>



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



  <div class="form-group">

  <label for="exampleFormControlInput1">Selecionar Página para ser Anexada</label>

  <select required="" class="form-control " name="card_pagina_id">

  <option selected="" value="0"> *Escolher quando a página for um link externo </option>

  <?php while($linha4 = mysqli_fetch_assoc($consulta_tr2)) { ?>  

  <option value="<?php echo $linha4['pagina_modular_id']; ?>"> <?php echo $linha4['pagina_modular_titulo']; ?> </option>

  <?php } ?>

  </select>

  <small class="text-muted mt-0 mb-3"> *Para um novo objeto página ser exibido nas opções acima, deve ser criado antes deste card.  </small>

  </div>  



    <script>

     CKEDITOR.replace( 'pagina_modular_conteudo', {

      height: 300,

      filebrowserUploadUrl: "upload.php"

     });

    </script>



  <center>

  <button type="submit" class="btn bg-dark text-white mt-3 mr-1"> Inserir Card </button>



  <a href='cards.php'> 

  <button type='button' class='btn bg-secondary text-white mt-3'>Cancelar</button> 

  </a> 

  </center>



</form>



    </div>

	</div>

</div>





<?php require_once "../footer_dashboard.php";  ?>