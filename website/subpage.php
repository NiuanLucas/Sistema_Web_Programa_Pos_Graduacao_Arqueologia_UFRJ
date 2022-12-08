<?php require "header.php";  ?>

<?php
$subpagina_id = $_GET["pg_id"];
//Consulta a tabela usuarios
$subpagina_info = "SELECT * FROM subpaginas WHERE subpagina_id = {$subpagina_id} ";
$info_subpagina = mysqli_query($conecta, $subpagina_info);
if(!$info_subpagina) {
die(" Falha na Base de Dados! Subpage.php Subpagina ");  
}
$dados_subpagina = mysqli_fetch_assoc($info_subpagina);
?>

<base target="_blank"> 
<div class="container mt-5 mb-4">
	<div class="row mainpage" id="mainpage">

        <div class="col-sm-12">
            <h2> <b><?php echo $dados_subpagina["subpagina_titulo"];?> </b></h2>
        </div>

        <div class="col-sm-6" >
            <?php echo base64_decode($dados_subpagina["subpagina_conteudo"]);  ?>	
        </div> 

        <div class="col-sm-6 p-4">
            <?php echo( exibir_slide_fixo( 6, '../dashboard/dados/', 'auto', '100%') ); ?>
        </div>

        <div class="col-sm-12 submain" >
            <?php echo base64_decode($dados_subpagina["subpagina_conteudo_2"]);  ?>	
        </div>

	</div>
</div>

<?php require_once "footer.php";  ?>