<?php require_once "../header_dashboard.php";  ?>

<?php


  //REMOVE TABLE

        if(isset($_POST["subpagina_id"])){
        $ID = $_POST["subpagina_id"];
        $excluir = "DELETE FROM subpaginas ";
        $excluir .= "WHERE  subpagina_id = {$ID} ";

        $operacao_excluir = mysqli_query($conecta, $excluir);
          if(!$operacao_excluir){
            die("Erro na Exclusão do Banco de Dados </br></br></br> " . $excluir . " </br></br></br> ");
          } else  {
            header("Location: subpaginas.php");
                }
              }

        if( isset($_GET["pg_id"]) ){
        $subpagina_id = $_GET["pg_id"];
        } else {
          echo "<script> window.location.href = 'subpaginas.php'; </script>";
            //header("Location: subpaginas.php");
        }

        //Consulta a tabela usuarios
        $subpagina_alterar = "SELECT * ";
        $subpagina_alterar .= "FROM subpaginas ";
        $subpagina_alterar .= "WHERE subpagina_id = {$subpagina_id} ";

        $info_pagina = mysqli_query($conecta, $subpagina_alterar);
        if(!$info_pagina) {
        die(" Falha na Base de Dados! Excluir Pagina F ");  
        }

        $dados_pagina = mysqli_fetch_assoc($info_pagina);              

?>

<div class="container">
	<div class="row">
  <div class="col col-12 mt-5 mb-5">

  <h3 class="h4 mt-3 mb-3"><i class="fas fa-users"></i> Excluir SubPágina : 
    <?php echo $dados_pagina['subpagina_titulo']; ?></h3>
  <hr class="my-2">

<form class="mt-4" action="excluir_subpaginas.php" method="post" accept-charset="utf-8">

  <div class="form-group d-none">
    <label for="exampleFormControlInput1">Pagina ID*</label>
    <input type="text"  name="subpagina_id" class="form-control" 
    value="<?php echo $dados_pagina['subpagina_id']; ?>">
  </div>

  <p class="mt-3">

    Você deseja realmente excluir esses dados? Não será possível reverter essa ação ou restaurar os dados futuramente.</br>
    Todos os arquivos, páginas, noticiais, entre outros relacionados poderão ser prejudicados também, caso haja conexão entre os arquivos. </br>
    Erros ou Duvidas, favor entrar em Contato com o Desenvolvedor.  
  </p>

  
  <button type="submit" class="btn bg-danger text-white mt-2 mr-1"> <i class="fas fa-times"></i> Excluir página </button>

  <a href='subpaginas.php'> 
  <button type='button' class='btn bg-secondary text-white mt-2'>Cancelar</button> 
  </a>  
  
</form>


    </div>
	</div>
</div>


<?php require_once "../footer_dashboard.php";  ?>