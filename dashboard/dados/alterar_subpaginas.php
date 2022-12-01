<?php require_once "../header_dashboard.php";  ?>





<?php





   //UPDATE TABLE

    if(isset($_POST["subpagina_id"])){

        $subpagina_id = $_POST["subpagina_id"];

        $subpagina_titulo = $_POST["subpagina_titulo"];

        $subpagina_conteudo = base64_encode($_POST["subpagina_conteudo"]);

        $subpagina_conteudo_2 = base64_encode($_POST["subpagina_conteudo_2"]);

        $subpagina_categoria = $_POST["subpagina_categoria"];

        $subpagina_slide = $_POST["subpagina_slide"];

        $subpagina_descricao = $_POST["subpagina_descricao"];

        $subpagina_palavras_chaves = $_POST["subpagina_palavras_chaves"];

        $subpagina_imagem_capa2 = $_POST["subpagina_imagem_capa"];

        
        if ( isset($_POST["subpagina_slide"]) ) {

          $subpagina_slide = $_POST["subpagina_slide"];

        } else {

          $subpagina_slide = $_POST["subpagina_slide_old"];

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

        $imagem_grande_upload = $subpagina_imagem_capa2; 

        }



        $atualizar = "UPDATE subpaginas ";

        $atualizar .= "SET ";

        $atualizar .= "subpagina_id = '{$subpagina_id}', ";

        $atualizar .= "subpagina_titulo = '{$subpagina_titulo}', ";

        $atualizar .= "subpagina_conteudo = '{$subpagina_conteudo}', ";

        $atualizar .= "subpagina_conteudo_2 = '{$subpagina_conteudo_2}', ";

        $atualizar .= "subpagina_categoria = '{$subpagina_categoria}', ";

        $atualizar .= "subpagina_descricao = '{$subpagina_descricao}', ";

        $atualizar .= "subpagina_slide = '{$subpagina_slide}', ";

        $atualizar .= "subpagina_palavras_chaves = '{$subpagina_palavras_chaves}', ";

        $atualizar .= "subpagina_imagem_capa = '{$imagem_grande_upload}' ";



        $atualizar .= "WHERE  subpagina_id = {$subpagina_id} ";



        $operacao_atualizar = mysqli_query($conecta, $atualizar);

        if(!$operacao_atualizar){

            die("Erro na Atualização do Banco de Dados </br></br></br> " . $atualizar . " </br></br></br> ");

        } else  {

          echo "<script> window.location.href = 'subpaginas.php'; </script>";

            //header("Location: subpaginas.php");



                }



        }



        if( isset($_GET["pg_id"]) ){

        $subpagina_id = $_GET["pg_id"];

        } else {

           //header("Location: subpaginas.php");

        }



        //Consulta a tabela usuarios

        $subpagina_alterar = "SELECT * ";

        $subpagina_alterar .= "FROM subpaginas ";

        $subpagina_alterar .= "WHERE subpagina_id = {$subpagina_id} ";



        $info_pagina = mysqli_query($conecta, $subpagina_alterar);

        if(!$info_pagina) {

        die(" Falha na Base de Dados! Alterar Paginas F");  

        }



        $dados_pagina = mysqli_fetch_assoc($info_pagina);   
        
        echo(consultarBancoDeDados($conecta)); 



?>





<div class="container">

	<div class="row">

  <div class="col col-12 mt-5 mb-5">



  <h3 class="h4 mt-3 mb-3"><i class="fas fa-file"></i> Alterar subpáginas</h3>

  <hr class="my-2">



<form class="mt-4" action="alterar_subpaginas.php" method="post" enctype="multipart/form-data" accept-charset="utf-8">



  <div class="form-group d-none">

    <label for="exampleFormControlInput1">Pagina ID</label>

    <input type="text" value="<?php echo $dados_pagina['subpagina_id']; ?>" name="subpagina_id" class="form-control" placeholder="">

  </div>



  <div class="form-group">

    <label for="exampleFormControlInput1">Título</label>

    <input type="text" required="" value="<?php echo $dados_pagina['subpagina_titulo']; ?>" name="subpagina_titulo" class="form-control" placeholder="">

  </div>



  <div class="form-group">

    <label for="exampleFormControlInput1">Descrição</label>

    <input type="text"required="" value="<?php echo $dados_pagina['subpagina_descricao']; ?>"   name="subpagina_descricao" class="form-control" placeholder="">

  </div>  





  <div class="form-group">

    <label for="exampleFormControlInput1">Categoria</label>

    <input required type="text"  value="<?php echo $dados_pagina['subpagina_categoria']; ?>" name="subpagina_categoria" class="form-control" placeholder="">

  </div>


  <div class="form-group">

<label for="exampleFormControlInput1">Categoria</label>

<select required="" class="form-control mb-3" name="subpagina_categoria">

<option selected=""  disabled="">Selecionar Categoria</option>
<?php while($linha = mysqli_fetch_assoc($consulta_paginas)) { ?>  
<option value="<?php echo $linha['pagina_id']; ?>"> <?php echo $linha['pagina_titulo']; ?> </option>
<?php } ?>

</select>

</div> 



  <div class="form-group">

<label for="exampleFormControlInput1">Selecionar Slide Anexado</label>

<select class="form-control " name="subpagina_slide">

<option selected=""  disabled="">Selecionar Escolher Slide</option>

<option value=" "> 0 - (Escolha essa opção para uma Página sem Slide)</option>

<?php while($linha4 = mysqli_fetch_assoc($consulta_slides)) { ?>  

<option value="<?php echo $linha4['slide_id']; ?>"> <?php echo $linha4['slide_descricao']; ?> </option>

<?php } ?>

</select>

<small class="text-muted mt-0 mb-3"> *Para um novo objeto slide ser exibido nas opções acima, deve ser criado antes desta página.  </small>

</div> 


<div class="form-group d-none">
  <label for="exampleFormControlInput1">Slide ID</label>
  <input value="<?php echo $dados_pagina['subpagina_slide']; ?>" type="text" name="subpagina_slide_old" class="form-control" placeholder="">
</div>



<div class="form-group d-none">

  <label for="exampleFormControlInput1">Image Folder</label>

  <input required value="<?php echo $dados_pagina['subpagina_imagem_capa']; ?>" type="text" name="subpagina_imagem_capa" class="form-control" placeholder="">

</div>

  <div class="form-group">

    <label for="exampleFormControlInput1">Palavras Chave</label>

    <input type="text" required="" value="<?php echo $dados_pagina['subpagina_palavras_chaves']; ?>" name="subpagina_palavras_chaves" class="form-control" placeholder="">

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
    <textarea required="" class="form-control ckeditor" name="subpagina_conteudo" id="body" rows="5">
      <?php echo base64_decode($dados_pagina['subpagina_conteudo']); ?></textarea>

  </div>

  <div class="form-group panel-body">

  <label for="exampleFormControlTextarea2">Conteudo Secundário</label>
  <textarea required="" class="form-control ckeditor" name="subpagina_conteudo_2" id="body2" rows="5">
    <?php echo base64_decode($dados_pagina['subpagina_conteudo_2']); ?></textarea>

  </div>


<!--
    <script>
    var editor=CKEDITOR.replace( 'subpagina_conteudo',{
      height: 300,
      extraPlugins : 'filebrowser',
      filebrowserBrowseUrl:'browser.php?type=Images',
      filebrowserUploadMethod:"form",
      filebrowserUploadUrl:"upload.php"
    });

    var editor=CKEDITOR.replace( 'subpagina_conteudo_2',{
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



  <a href='subpaginas.php'> 

  <button type='button' class='btn bg-secondary text-white mt-3'>Cancelar</button> 

  </a>  



  </center>



</form>





    </div>

	</div>

</div>





<?php require_once "../footer_dashboard.php";  ?>