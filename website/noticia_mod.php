<?php require_once "header.php";  ?>



<?php

        if( isset($_GET["pg_id"]) ){

        $pagina_id = $_GET["pg_id"];

        } else {

          $pagina_id = 2;

        }



        //Consulta a tabela usuarios

        $pagina_info = "SELECT * ";

        $pagina_info .= "FROM paginas_modulares ";

        $pagina_info .= "WHERE pagina_modular_id = {$pagina_id} ";



        $info_pagina = mysqli_query($conecta, $pagina_info);

        if(!$info_pagina) {

        die(" Falha na Base de Dados! Header Pagina Modular ");  

        } else {

          echo "<br>";



        }



        $dados_pagina = mysqli_fetch_assoc($info_pagina); 

?>



<div class="container mt-2 mb-4">
	<div class="row">
            <div class="col-sm-12">
                <h2> <b><?php echo $dados_pagina["pagina_modular_titulo"];?> </b></h2>
            </div>

            <?php if($dados_pagina["pagina_modular_slide"] != " ") { ?>
            <!-- Slide -->
            <div class="col-sm-6">
            <?php echo( exibir_texto('pagina_modular', 0 ) ); 
                echo $dados_pagina["pagina_modular_slide"]; ?> 
            </div>
            <div class="col-sm-6 image-right mb-3">
            <?php echo( exibir_slide( 0, '../dashboard/dados/', '490px', '100%') ); ?>  
            </div>

            <?php } else { ?>
                <!-- NOT Slide -->
                <div class="col-sm-12">
                <?php echo( exibir_texto('pagina_modular', 0 ) );  ?> 
                </div>
            <?php } ?>

            <div class="col-sm-12">
                <?php echo( exibir_texto_2('pagina_modular', 0 ) );  ?> 
            </div>
	</div>
</div>


<style type="text/css" media="screen">

.link_anterior{

display: none; 

}

</style>



<?php require_once "footer.php";  ?>