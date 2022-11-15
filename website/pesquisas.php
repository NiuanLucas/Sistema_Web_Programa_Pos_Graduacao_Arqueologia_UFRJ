<?php require_once "../header.php";  ?>

<?php

    // Consulta a Tabela Paginas Modulares

    $tr2 = "SELECT * ";

    $tr2 .= "FROM paginas_modulares ";

    $tr2 .= "WHERE pagina_modular_categoria = 'cursos' ";

    $consulta_tr2 = mysqli_query($conecta, $tr2);

    if(!$consulta_tr2) {

        die("Falha na consulta ao banco Eventos | Home");   

    }

?>




<base target="_blank"> 



<div class="container mt-0 mb-4"></br>

	<div class="row ">

		

   <div class="col-sm-12">

    <h2><b>  

        <?php if ( (exibir_caminho('pagina_fixa', 0)[4]) == false ) {

        echo(exibir_caminho('pagina_modular', 0)[1] );

        } else {

        echo(exibir_caminho('pagina_fixa', 0)[4]);    

        }?>

    </b></h2>

    </div>   


<!--
<div class="col-sm-6 mt-1">
	<?php //echo( exibir_texto('pagina_fixa', 13 ) );  ?>	
</div>
<div class="col-sm-6">
 </br><?php //echo( exibir_slide( 9, '../../dashboard/dados/', '100%', '340px') ); ?>
</div>
-->


<?php while($linha = mysqli_fetch_assoc($consulta_tr2)) { ?>

<div class="col-sm-6 mt-1">
	<h3 class="font-weight-bold" style="line-height: 130% !important;"><?php echo $linha["pagina_modular_titulo"] ?></h3>
	<?php echo( exibir_texto('pagina_modular', $linha["pagina_modular_id"] ) );  ?> 
</div>
<div class="col-sm-6 mt-5 pt-1">
 <?php $img = '../../dashboard/dados/'.$linha["pagina_modular_imagem_capa"]  ?>
    <div class='carousel-inner mt-2'>
    <div class='carousel-item active'>
    <img class='d-block image-slide-fix' style='width: 100% !important; max-height: 340px !important; '  src='<?php echo $img ?>'  >
    </div> </div>
</div>

<?php } ?>        




	</div>

</div>





<?php require_once "../footer.php";  ?>