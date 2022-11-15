<?php require_once "../header_dashboard.php";  ?>





<?php





   //UPDATE TABLE

    if(isset($_POST["pagina_id"])){

        $pagina_id = $_POST["pagina_id"];

        $pagina_titulo = $_POST["pagina_titulo"];

        $pagina_conteudo = base64_encode($_POST["pagina_conteudo"]);

        $pagina_conteudo_2 = base64_encode($_POST["pagina_conteudo_2"]);

        $pagina_categoria = $_POST["pagina_categoria"];

        $pagina_slide = $_POST["pagina_slide"];

        $pagina_descricao = $_POST["pagina_descricao"];

        $pagina_palavras_chaves = $_POST["pagina_palavras_chaves"];

        $pagina_imagem_capa2 = $_POST["pagina_imagem_capa"];

        
        if ( isset($_POST["pagina_slide"]) ) {

          $pagina_slide = $_POST["pagina_slide"];

        } else {

          $pagina_slide = $_POST["pagina_slide_old"];

        }


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

        $imagem_grande_upload = $pagina_imagem_capa2; 

        }



        $atualizar = "UPDATE paginas_fixas ";

        $atualizar .= "SET ";

        $atualizar .= "pagina_id = '{$pagina_id}', ";

        $atualizar .= "pagina_titulo = '{$pagina_titulo}', ";

        $atualizar .= "pagina_conteudo = '{$pagina_conteudo}', ";

        $atualizar .= "pagina_conteudo_2 = '{$pagina_conteudo_2}', ";

        $atualizar .= "pagina_categoria = '{$pagina_categoria}', ";

        $atualizar .= "pagina_descricao = '{$pagina_descricao}', ";

        $atualizar .= "pagina_slide = '{$pagina_slide}', ";

        $atualizar .= "pagina_palavras_chaves = '{$pagina_palavras_chaves}', ";

        $atualizar .= "pagina_imagem_capa = '{$imagem_grande_upload}' ";



        $atualizar .= "WHERE  pagina_id = {$pagina_id} ";



        $operacao_atualizar = mysqli_query($conecta, $atualizar);

        if(!$operacao_atualizar){

            die("Erro na Atualização do Banco de Dados </br></br></br> " . $atualizar . " </br></br></br> ");

        } else  {

          echo "<script> window.location.href = 'paginas_fixas.php'; </script>";

            //header("Location: paginas_fixas.php");



                }



        }



        if( isset($_GET["pg_id"]) ){

        $pagina_id = $_GET["pg_id"];

        } else {

           //header("Location: paginas_fixas.php");

        }



        //Consulta a tabela usuarios

        $pagina_alterar = "SELECT * ";

        $pagina_alterar .= "FROM paginas_fixas ";

        $pagina_alterar .= "WHERE pagina_id = {$pagina_id} ";



        $info_pagina = mysqli_query($conecta, $pagina_alterar);

        if(!$info_pagina) {

        die(" Falha na Base de Dados! Alterar Paginas F");  

        }



        $dados_pagina = mysqli_fetch_assoc($info_pagina);              



?>





<div class="container">

	<div class="row">

  <div class="col col-12 mt-5 mb-5">



  <h3 class="h4 mt-3 mb-3"><i class="fas fa-file"></i> Alterar páginas fixas</h3>

  <hr class="my-2">



<form class="mt-4" action="alterar_paginas_fixas.php" method="post" enctype="multipart/form-data" accept-charset="utf-8">



  <div class="form-group d-none">

    <label for="exampleFormControlInput1">Pagina ID</label>

    <input type="text" value="<?php echo $dados_pagina['pagina_id']; ?>" name="pagina_id" class="form-control" placeholder="">

  </div>



  <div class="form-group">

    <label for="exampleFormControlInput1">Título</label>

    <input type="text" required="" value="<?php echo $dados_pagina['pagina_titulo']; ?>" name="pagina_titulo" class="form-control" placeholder="">

  </div>



  <div class="form-group">

    <label for="exampleFormControlInput1">Descrição</label>

    <input type="text"required="" value="<?php echo $dados_pagina['pagina_descricao']; ?>"   name="pagina_descricao" class="form-control" placeholder="">

  </div>  





  <div class="form-group">

    <label for="exampleFormControlInput1">Categoria</label>

    <input required type="text"  value="<?php echo $dados_pagina['pagina_categoria']; ?>" name="pagina_categoria" class="form-control" placeholder="">

  </div>



  <div class="form-group">

<label for="exampleFormControlInput1">Selecionar Slide Anexado</label>

<select class="form-control " name="pagina_slide">

<option selected=""  disabled="">Selecionar Escolher Slide</option>

<option value=" "> 0 - (Escolha essa opção para uma Página sem Slide)</option>

<?php while($linha4 = mysqli_fetch_assoc($consulta_tr4)) { ?>  

<option value="<?php echo $linha4['slide_id']; ?>"> <?php echo $linha4['slide_descricao']; ?> </option>

<?php } ?>

</select>

<small class="text-muted mt-0 mb-3"> *Para um novo objeto slide ser exibido nas opções acima, deve ser criado antes desta página.  </small>

</div> 


<div class="form-group d-none">
  <label for="exampleFormControlInput1">Slide ID</label>
  <input value="<?php echo $dados_pagina['pagina_slide']; ?>" type="text" name="pagina_slide_old" class="form-control" placeholder="">
</div>



<div class="form-group d-none">

  <label for="exampleFormControlInput1">Image Folder</label>

  <input required value="<?php echo $dados_pagina['pagina_imagem_capa']; ?>" type="text" name="pagina_imagem_capa" class="form-control" placeholder="">

</div>

  <div class="form-group">

    <label for="exampleFormControlInput1">Palavras Chave</label>

    <input type="text" required="" value="<?php echo $dados_pagina['pagina_palavras_chaves']; ?>" name="pagina_palavras_chaves" class="form-control" placeholder="">

  </div>


  <div class="form-group">

    <input type="hidden" name="MAX_FILE_SIZE" value="6000000">

    <label for="exampleFormControlFile1">Imagem de Capa</label>

    <input type="file"  name="upload_image" class="form-control-file">
    
    <small> 
      *Todas as imagens devem seguir as seguintes características para o sistema de miniatura funcionar corretamente:
      </br>JPEG/JPG - Máximo de 300Kb - Dimensões maiores que 300x300 pixels. 
    </small>

  </div>



  <div class="form-group panel-body">

    <label for="exampleFormControlTextarea1">Conteudo</label>
    <textarea required="" class="form-control ckeditor" name="pagina_conteudo" id="body" rows="5">
      <?php echo base64_decode($dados_pagina['pagina_conteudo']); ?></textarea>

  </div>

  <div class="form-group panel-body">

  <label for="exampleFormControlTextarea2">Conteudo Secundário</label>
  <textarea required="" class="form-control ckeditor" name="pagina_conteudo_2" id="body2" rows="5">
    <?php echo base64_decode($dados_pagina['pagina_conteudo_2']); ?></textarea>

  </div>


<!--
    <script>
    var editor=CKEDITOR.replace( 'pagina_conteudo',{
      height: 300,
      extraPlugins : 'filebrowser',
      filebrowserBrowseUrl:'browser.php?type=Images',
      filebrowserUploadMethod:"form",
      filebrowserUploadUrl:"upload.php"
    });

    var editor=CKEDITOR.replace( 'pagina_conteudo_2',{
      height: 300,
      extraPlugins : 'filebrowser',
      filebrowserBrowseUrl:'browser.php?type=Images',
      filebrowserUploadMethod:"form",
      filebrowserUploadUrl:"upload.php"
    });
    </script>

  -->


  <center>



  <button type="submit" class="btn bg-dark text-white mt-3 mr-1"> Alterar dados da página </button>  



  <a href='paginas_fixas.php'> 

  <button type='button' class='btn bg-secondary text-white mt-3'>Cancelar</button> 

  </a>  



  </center>



</form>





    </div>

	</div>

</div>





<?php require_once "../footer_dashboard.php";  ?>