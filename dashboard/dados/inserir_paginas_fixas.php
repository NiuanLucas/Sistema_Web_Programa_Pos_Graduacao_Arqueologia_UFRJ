<?php require_once "../header_dashboard.php";  ?>



<?php



//INSERIR NO BANCO DE DADOS

    if(isset($_POST["pagina_titulo"])){

        $pagina_titulo = $_POST["pagina_titulo"];

        $pagina_conteudo = base64_encode($_POST["pagina_conteudo"]);

        $pagina_categoria = $_POST["pagina_categoria"];

        $pagina_descricao = $_POST["pagina_descricao"];

        $pagina_palavras_chaves = $_POST["pagina_palavras_chaves"];



        $inserir = "INSERT INTO paginas_fixas ";

        $inserir .= "(pagina_titulo,pagina_conteudo,pagina_categoria,pagina_descricao,pagina_palavras_chaves) ";

        $inserir .= "VALUES ";

        $inserir .= "('$pagina_titulo','$pagina_conteudo','$pagina_categoria','$pagina_descricao','$pagina_palavras_chaves') ";



        $operacao_inserir = mysqli_query($conecta, $inserir);



        if(!$operacao_inserir){

            die("Erro no Banco Cadastro de Paginas F ");

        } else {

          echo "<script> window.location.href = 'paginas_fixas.php'; </script>";

            //header("Location: paginas_fixas.php");

        }



    }



?>





<div class="container">

	<div class="row">

  <div class="col col-12 mt-5 mb-5">



  <h3 class="h4 mt-3 mb-3"><i class="fas fa-file"></i> Inserir páginas fixas</h3>

  <hr class="my-2">



<form class="mt-4" action="inserir_paginas_fixas.php" method="post" accept-charset="utf-8">

	

  <div class="form-group">

    <label for="exampleFormControlInput1">Título</label>

    <input required="" type="text" name="pagina_titulo" class="form-control" placeholder="">

  </div>



  <div class="form-group">

    <label for="exampleFormControlInput1">Descrição</label>

    <input required="" type="text"   name="pagina_descricao" class="form-control" placeholder="">

  </div> 



  <div class="form-group">

  <label for="exampleFormControlInput1">Categoria</label>

  <select required="" class="form-control mb-3" name="pagina_categoria">

  <option selected=""  disabled="">Selecionar Categoria</option>

  <option value="Home">Home</option>

  <option value="Quem somos">Quem somos</option>

  <option value="Pesquisa">Pesquisa</option>

  <option value="Coleções">Coleções</option>

  <option value="Ensino">Ensino</option>

  <option value="Produção Acadêmica">Produção Acadêmica</option>

  <option value="Difusão do conhecimento">Difusão do conhecimento</option>

  <option value="Contato">Contato</option>

  </select>

  </div> 



  <div class="form-group">

    <label for="exampleFormControlInput1">Palavras Chave</label>

    <input required="" type="text" name="pagina_palavras_chaves" class="form-control" placeholder="">

  </div>



  <div class="form-group">

    <label for="exampleFormControlTextarea1 panel-body">Conteudo</label>

    <textarea required="" class="form-control ckeditor" name="pagina_conteudo" rows="5"></textarea>

  </div>



    <script>
    var editor=CKEDITOR.replace( 'pagina_conteudo',{
      height: 300,
      extraPlugins : 'filebrowser',
      filebrowserBrowseUrl:'browser.php?type=Images',
      filebrowserUploadMethod:"form",
      filebrowserUploadUrl:"upload.php"
    });
    </script>



  <center>

  <button type="submit" class="btn bg-dark text-white mt-3 mr-1"> Inserir página Fixa </button>



  <a href='paginas_fixas.php'> 

  <button type='button' class='btn bg-secondary text-white mt-3'>Cancelar</button> 

  </a>  



  </center>



</form>





    </div>

	</div>

</div>





<?php require_once "../footer_dashboard.php";  ?>