<?php require "header.php";  ?>

<?php
$img_id = $_GET["pg_id"];
if($img_id == 4){
    echo"
    
    <style>
    div.mainpage img{
        margin: 30px  !important; 
        float: right !important; 
        border-radius: 25px !important;
        border: 5px solid #ff000 !important;
        height: 300px !important;
        width: 300px !important;
        
    }
    </style>
    
    ";
} else {

}



?>

<base target="_blank"> 
<div class="container mt-5 mb-4">
	<div class="row mainpage" id="mainpage">

        <div class="col-sm-12">
            <h2> <b><?php echo $dados_pagina_fixa["pagina_titulo"];?> </b></h2>
        </div>

        <?php if( exibir_slide_fixo( 0, '../../dashboard/dados/', '490px', '100%') == NULL) { ?> 

        <div class="col-sm-12 submain" >
            <?php echo base64_decode($dados_pagina_fixa["pagina_conteudo"]);  ?>	
        </div> 

        <?php } else { ?>

        <div class="col-sm-6" >
            <?php echo base64_decode($dados_pagina_fixa["pagina_conteudo"]);  ?>	
        </div> 
        <div class="col-sm-6 p-4">
            <?php echo( exibir_slide_fixo( 0, '../dashboard/dados/', '490px', '490px') ); ?>
        </div>

        <?php }  ?>

        <div class="col-sm-12 submain" >
            <?php echo base64_decode($dados_pagina_fixa["pagina_conteudo_2"]);  ?>	
        </div>

	</div>
</div>

<?php require_once "footer.php";  ?>