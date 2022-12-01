<?php require_once "../header_dashboard.php";  ?>



<?php



//INSERIR NO BANCO DE DADOS

    if(isset($_POST["subpagina_titulo"])){

        $subpagina_titulo = $_POST["subpagina_titulo"];

        $subpagina_conteudo = base64_encode($_POST["subpagina_conteudo"]);

        $subpagina_categoria = $_POST["subpagina_categoria"];

        $subpagina_descricao = $_POST["subpagina_descricao"];

        $subpagina_palavras_chaves = $_POST["subpagina_palavras_chaves"];



        $inserir = "INSERT INTO subpaginas ";

        $inserir .= "(subpagina_titulo,subpagina_conteudo,subpagina_categoria,subpagina_descricao,subpagina_palavras_chaves) ";

        $inserir .= "VALUES ";

        $inserir .= "('$subpagina_titulo','$subpagina_conteudo','$subpagina_categoria','$subpagina_descricao','$subpagina_palavras_chaves') ";



        $operacao_inserir = mysqli_query($conecta, $inserir);



        if(!$operacao_inserir){
            echo "Query: ".print_r($inserir);
            die("Erro no Banco Cadastro de subpaginas");
        } else {

          echo "<script> window.location.href = 'subpaginas.php'; </script>";

            //header("Location: subpaginas.php");

        }



    }



?>





<div class="container">

	<div class="row">

  <div class="col col-12 mt-5 mb-5">



  <h3 class="h4 mt-3 mb-3"><i class="fas fa-file"></i> Inserir páginas fixas</h3>

  <hr class="my-2">



<form class="mt-4" action="inserir_subpaginas.php" method="post" accept-charset="utf-8">

	

  <div class="form-group">

    <label for="exampleFormControlInput1">Título</label>

    <input required="" type="text" name="subpagina_titulo" class="form-control" placeholder="">

  </div>



  <div class="form-group">

    <label for="exampleFormControlInput1">Descrição</label>

    <input required="" type="text"   name="subpagina_descricao" class="form-control" placeholder="">

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

    <label for="exampleFormControlInput1">Palavras Chave</label>

    <input required="" type="text" name="subpagina_palavras_chaves" class="form-control" placeholder="">

  </div>



  <div class="form-group">

    <label for="exampleFormControlTextarea1 panel-body">Conteudo</label>

    <textarea required="" class="form-control ckeditor" name="subpagina_conteudo" rows="5"></textarea>

  </div>



    <script>
    var editor=CKEDITOR.replace( 'subpagina_conteudo',{
      height: 300,
      extraPlugins : 'filebrowser',
      filebrowserBrowseUrl:'browser.php?type=Images',
      filebrowserUploadMethod:"form",
      filebrowserUploadUrl:"upload.php"
    });
    </script>



  <center>

  <button type="submit" class="btn bg-dark text-white mt-3 mr-1"> Inserir página Fixa </button>



  <a href='subpaginas.php'> 

  <button type='button' class='btn bg-secondary text-white mt-3'>Cancelar</button> 

  </a>  



  </center>



</form>





    </div>

	</div>

</div>





<?php require_once "../footer_dashboard.php";  ?>