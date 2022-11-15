
<?php
//phpinfo();

header('Content-type: text/html; charset=utf-8');

function exibir_slide($slide, $folder, $width, $height){

$conecta = $_SERVER["conecta"];

if($slide > 0) {
$slide = $slide;

//////////////////////////////////////////////////////////
} else  {

    $pagina_id =  $_GET["pg_id"];
    $pagina_info = "SELECT * FROM paginas_modulares WHERE pagina_modular_id = {$pagina_id} ";
    $info_pagina = mysqli_query($conecta, $pagina_info);
        if(!$info_pagina) {
        die(" Falha na Base de Dados! Function Pagina Modular Slide");  
        } else {
        echo "";
        }
    //DADOS
    $dados_pagina = mysqli_fetch_assoc($info_pagina);        
    $slide = $dados_pagina["pagina_modular_slide"];
    }

//////////////////////////////////////////////////////////

// Consulta a Tabela Slides
    $consultar_slide = "SELECT * ";
    $consultar_slide .= "FROM slides ";
    $consultar_slide .= "WHERE  slide_id = $slide ";
    $consulta_slide = mysqli_query($conecta, $consultar_slide);
    if(!$consulta_slide) {
        die("</br> Falha na consulta ao banco FUNCTIONS Slides </br></br> " .$consultar_slide. " </br></br>  ");   
    }

    $linha4 = mysqli_fetch_assoc($consulta_slide);

    $texto_html_slide =  
    "<div id='carouselExampleControls' data-interval='5000' class='carousel slide' 
    data-ride='carousel'>
    <div class='carousel-inner'>
    <div class='carousel-item active'>
    <img class='d-block image-slide-fix' style='width: ".$width." !important; max-height: ".$height." !important; '  src='"  .$folder.$linha4['slide_1']. "' >
    </div> "; 

    for ($i = 2; $i <= $linha4["slide_tamanho"]; $i++) {
    $slide  = "slide_".$i;
    $texto_html_slide .=  "<div class='carousel-item'>
      <img class='d-block image-slide-fix' style='width: ".$width." !important; max-height: ".$height." !important;'   src='" .$folder.$linha4['slide_'.$i]. "'>
    </div>" ;
    }

    if ($linha4["slide_tamanho"] > 1) {
        echo "<style type='text/css'>   
    .carousel .carousel-control-next{ opacity: 0; transition: 0.5s all; }
    .carousel:hover .carousel-control-next{ opacity: 1; transition: 0.5s  all;  }
    .carousel .carousel-control-prev{ opacity: 0; transition: 0.5s  all; }
    .carousel:hover .carousel-control-prev{ opacity: 1; transition: 0.5s  all; } </style>";   
    } else {
         echo "<style type='text/css'>   
    .carousel .carousel-control-next{ opacity: 0; transition: 0.5s all; }
    .carousel .carousel-control-prev{ opacity: 0; transition: 0.5s  all; } </style>"; 
    }

    $texto_html_slide .=   "</div>
    <a class='carousel-control-prev'
    href='#carouselExampleControls' role='button' data-slide='prev'>
      <span class='carousel-control-prev-icon' aria-hidden='true'></span>
      <span class='sr-only'>Anterior</span>
    </a>
    <a class='carousel-control-next' href='#carouselExampleControls' role'button' data-slide='next'>
      <span class='carousel-control-next-icon' aria-hidden='true'></span>
      <span class='sr-only'>Próximo</span>
    </a> 
    </div>";

    return $texto_html_slide;
    
    }   

    function exibir_slide_fixo($slide, $folder, $width, $height){

        $conecta = $_SERVER["conecta"];
        
        if($slide > 0) {
        $slide = $slide;
        //////////////////////////////////////////////////////////
        } else  {
            $pagina_id =  $_GET["pg_id"];
            $pagina_info = "SELECT * FROM paginas_fixas WHERE pagina_id = {$pagina_id} ";
            $info_pagina = mysqli_query($conecta, $pagina_info);
                if(!$info_pagina) {
                die(" Falha na Base de Dados! Function Pagina Fixa Slide");  
                } else {
                echo "";
                }
            //DADOS
            $dados_pagina = mysqli_fetch_assoc($info_pagina);        
            $slide = $dados_pagina["pagina_slide"];
            }
        //////////////////////////////////////////////////////////
        
        // Consulta a Tabela Slides
            $consultar_slide = "SELECT * ";
            $consultar_slide .= "FROM slides ";
            $consultar_slide .= "WHERE  slide_id = $slide ";
            $consulta_slide = mysqli_query($conecta, $consultar_slide);
            if(!$consulta_slide) {
                if($slide == " "){
                    return 0;
                    }
                die("</br> Falha na consulta ao banco FUNCTIONS Slides </br></br> " .$consultar_slide. " </br></br>  ");   
            }
    
            $linha4 = mysqli_fetch_assoc($consulta_slide);
            $texto_html_slide =  
            "<div id='carouselExampleControls' data-interval='5000' class='carousel slide' 
            data-ride='carousel'>
            <div class='carousel-inner'>
            <div class='carousel-item active'>
            <img class='d-block image-slide-fix' style='width: ".$width." !important; max-height: ".$height." !important; '  src='"  .$folder.$linha4['slide_1']. "' >
            </div> "; 
        
            for ($i = 2; $i <= $linha4["slide_tamanho"]; $i++) {
            $slide  = "slide_".$i;
            $texto_html_slide .=  "<div class='carousel-item'>
              <img class='d-block image-slide-fix' style='width: ".$width." !important; max-height: ".$height." !important;'   src='" .$folder.$linha4['slide_'.$i]. "'>
            </div>" ;
            }
        
            if ($linha4["slide_tamanho"] > 1) {
                echo "<style type='text/css'>   
            .carousel .carousel-control-next{ opacity: 0; transition: 0.5s all; }
            .carousel:hover .carousel-control-next{ opacity: 1; transition: 0.5s  all;  }
            .carousel .carousel-control-prev{ opacity: 0; transition: 0.5s  all; }
            .carousel:hover .carousel-control-prev{ opacity: 1; transition: 0.5s  all; } </style>";   
            } else {
                 echo "<style type='text/css'>   
            .carousel .carousel-control-next{ opacity: 0; transition: 0.5s all; }
            .carousel .carousel-control-prev{ opacity: 0; transition: 0.5s  all; } </style>"; 
            }
        
            $texto_html_slide .=   "</div>
            <a class='carousel-control-prev'
            href='#carouselExampleControls' role='button' data-slide='prev'>
              <span class='carousel-control-prev-icon' aria-hidden='true'></span>
              <span class='sr-only'>Anterior</span>
            </a>
            <a class='carousel-control-next' href='#carouselExampleControls' role'button' data-slide='next'>
              <span class='carousel-control-next-icon' aria-hidden='true'></span>
              <span class='sr-only'>Próximo</span>
            </a> 
            </div>";
        
            return $texto_html_slide;
            
            }   

function carregarOpenGraphs(){
// Abrir conexao
$servidor = DB_HOST;
$usuario = DB_USER;
$senha = DB_PASS;
$banco = DB_NAME; 
$url = URL;

$conecta = mysqli_connect($servidor, $usuario, $senha, $banco);
$pagina_id = $_GET["pg_id"];

$pagina_fixa_info = "SELECT * FROM paginas_fixas WHERE pagina_id = {$pagina_id} ";
$pagina_modular_info = "SELECT * FROM paginas_modulares WHERE pagina_modular_id = {$pagina_id} ";

$info_pagina_fixa = mysqli_query($conecta, $pagina_fixa_info );
if(!$info_pagina_fixa) {
die("Falha na Base de Dados! Function OP 1 Fixa  ");
} else {
}

$info_pagina_modular = mysqli_query($conecta, $pagina_modular_info );
if(!$info_pagina_modular) {
die("Falha na Base de Dados! Function OP 2 Modular ");  
} else {
}

$dados_pagina_fixa = mysqli_fetch_assoc($info_pagina_fixa);  
$dados_pagina_modular = mysqli_fetch_assoc($info_pagina_modular);  

if($dados_pagina_fixa != NULL){
$metaOG_Title = $dados_pagina_fixa["pagina_titulo"];
$metaOG_Description =  $dados_pagina_fixa["pagina_descricao"];
$metaOG_Image = $dados_pagina_fixa["pagina_imagem_capa"];
} else {
$metaOG_Title = $dados_pagina_modular["pagina_modular_titulo"];
$metaOG_Description =  $dados_pagina_modular["pagina_modular_descricao"];
$metaOG_Image = $dados_pagina_modular["pagina_modular_imagem_capa"];
}

$url      = "//" . $_SERVER['HTTP_HOST'];
$full_url = "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']."";
$Imgfolder = "/dashboard/dados/";

if ($metaOG_Image != NULL) {
$OGimage = $url.$Imgfolder.$metaOG_Image;	
} else {

$OGimage = $url.$Imgfolder."images_capas/logo_laboratorio.jpg";	
}



$metaTags = 
"<!-- MYSQL INFO OPEN GRAPH -->

  <meta property='og:url'                content='".$full_url."/' />
  <meta property='og:type'               content='article' />
  <meta property = 'fb: app_id' content = '1523348394647615' />
  <meta property='og:title'            content='".$metaOG_Title."'/>
  <meta property='og:description'        content='".$metaOG_Description."'/>

  <meta property='og:updated_time' content='updatedtime'>
  <meta property='og:locale' content='en_GB' />

  <meta property='og:image' itemprop='image' content='".$OGimage."'>
  <link itemprop='thumbnailUrl' href='".$OGimage."'> 
  <meta property='og:image:type' content='image/jpeg'>
  <meta property='og:image:width' content='300'>
  <meta property='og:image:height' content='300'>
  
";

return $metaTags;

}  



function getItemDrop(){
// Abrir conexao
$servidor = DB_HOST;
$usuario = DB_USER;
$senha = DB_PASS;
$banco = DB_NAME; 
$url = URL;

$conecta = mysqli_connect($servidor, $usuario, $senha, $banco);
$pagina_id = $_GET["pg_id"];

$pagina_fixa_info = "SELECT * FROM paginas_fixas WHERE pagina_id = {$pagina_id} ";
$pagina_modular_info = "SELECT * FROM paginas_modulares WHERE pagina_modular_id = {$pagina_id} ";

$info_pagina_fixa = mysqli_query($conecta, $pagina_fixa_info );
if(!$info_pagina_fixa) {
die("Falha na Base de Dados! Function OP 1 Fixa  ");
} else {
}

$info_pagina_modular = mysqli_query($conecta, $pagina_modular_info );
if(!$info_pagina_modular) {
die("Falha na Base de Dados! Function OP 2 Modular ");  
} else {
}

$dados_pagina_fixa = mysqli_fetch_assoc($info_pagina_fixa);  
$dados_pagina_modular = mysqli_fetch_assoc($info_pagina_modular);  

if($dados_pagina_fixa != NULL){
$metaOG_Image = $dados_pagina_fixa["pagina_imagem_capa"];
} else {

$metaOG_Image = $dados_pagina_modular["pagina_modular_imagem_capa"];
}

$url = "http://" . $_SERVER['HTTP_HOST'];
$full_url = "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']."";
$Imgfolder = "/dashboard/dados/";

if ($metaOG_Image != NULL) {
$OGimage = $url.$Imgfolder.$metaOG_Image;	
} else {
$OGimage = $url.$Imgfolder."images_capas/logo_laboratorio.png";	
}

$itemDrop = 
"   
<link itemprop='thumbnailUrl' href='".$OGimage."'>
<span itemprop='thumbnail' itemscope itemtype='http://schema.org/ImageObject'>
<link itemprop='url' href='".$OGimage."'>
</span>
";

return $itemDrop;
}


function exibir_galeria($slide, $folder, $class){

$conecta = $_SERVER["conecta"];

if($slide > 0) {
$slide = $slide;
} else {
$slide = $_GET["sl_id"];
}

// Consulta a Tabela Slides
    $consultar_slide = "SELECT * ";
    $consultar_slide .= "FROM slides ";
    $consultar_slide .= "WHERE  slide_id = $slide ";
    $consulta_slide = mysqli_query($conecta, $consultar_slide);
    if(!$consulta_slide) {
        die("");  
        //die("</br> Falha na consulta ao banco FUNCTIONS Slides </br></br> " .$consultar_slide. " </br></br>  ");   
    }

    $linha4 = mysqli_fetch_assoc($consulta_slide);

    if ($linha4["slide_tamanho"] == 0) {
        $texto_html_slide =  "  ";
        } else {

    $texto_html_slide =  "<center><div class='row justify-content-center'>";

    for ($i = 1; $i <= $linha4["slide_tamanho"]; $i++) {
        $slide  = "slide_".$i;

        $tam_col = ($linha4["slide_tamanho"] % 4);

        if ($tam_col == 0) {
        $class2 = " ml-3 mt-1 mb-2 "; // 4
        } elseif ($tam_col == 1) {
        $class2 = " ml-3 mt-1 mb-2 col-md-3 "; // 5
        } elseif ($tam_col == 2) {
        $class2 = " ml-3 mt-1 mb-2 col-md-3 "; // 6
        } elseif ($tam_col == 3) {
        $class2 = " ml-3 mt-1 mb-2 "; //7
        }


        $i1 = ($i % 4);
        $i5 = (4 + $i1);

        /* if ( $i1 ==  (1) ) {
            //$texto_html_slide .=  "</br>  IF " .$i1. " | " .$i5. " </br> <div class='bg-danger'>";
            $texto_html_slide .=  "</br><div class='row justify-content-center w-100'>";
        } */


        $texto_html_slide .=  "
        <div class='".$class.$class2."'>
        <a href='" .$folder.$linha4['slide_'.$i]."' data-footer='".base64_decode($linha4['legenda_'.$i])."'       data-toggle='lightbox' data-gallery='example-gallery' class='d-block h-100'> 
        <img class='img-fluid img-thumbnail' src='" .$folder.$linha4['slide_'.$i]."'>
        </a>
        </div>

        " ;
        

        /* if ($i5 == (4) || $i == ($linha4["slide_tamanho"]) ) {
            //$texto_html_slide .=  "</div></br>  ELSEIF " .$i1. " | " .$i5. " </br>";
            $texto_html_slide .=  "</div>";
        } else { $texto_html_slide .=  ""; } */
        
    } }

    $texto_html_slide .=  "</div></center>";


    return $texto_html_slide;
    
    }      


function exibir_card_grande($card, $folder, $caminho){

$conecta = $_SERVER["conecta"];


// Consulta a Tabela Slides
    $consultar_card_1 = "SELECT * ";
    $consultar_card_1 .= "FROM cards ";
    $consultar_card_1 .= "WHERE  card_id = {$card} ";
    $consultar_card_1 = mysqli_query($conecta, $consultar_card_1);
    $dados_card = mysqli_fetch_assoc($consultar_card_1); 
    $card_pagina = $dados_card['card_pagina_id'];              
    if(!$consultar_card_1) {
        die("</br>");  
        //die("</br> Falha na consulta ao banco FUNCTIONS Slides </br></br> " .$consultar_slide. " </br></br>  ");   
    }


// Consulta a Tabela Slides
    $consultar_card = "SELECT * ";
    $consultar_card .= "FROM paginas_modulares ";
    $consultar_card .= "WHERE  pagina_modular_id = {$card_pagina} ";
    $consulta_card = mysqli_query($conecta, $consultar_card);
    if(!$consulta_card) {
        die("</br>");  
        //die("</br> Falha na consulta ao banco FUNCTIONS Slides </br></br> " .$consultar_slide. " </br></br>  ");   
    }

    $linha5 = mysqli_fetch_assoc($consulta_card);

    $texto_html_card =  

    "<div class='col-sm-7 mb-4 mt-3 border-0'>
        <div class='card'>
          <img class='card-img-top imag-card' src='"  .$folder.$linha5['pagina_modular_imagem_capa']. "'>
          <div class='card-body'>
            <h6 class='card-title-sub'> " .date('d/m/Y', strtotime($linha5["data"])).  " </h6>
            <h5 class='card-title'>" .$linha5['pagina_modular_titulo']. "</h5>";

            if ($linha5['pagina_modular_categoria'] == 'midias' ) {
                $texto_html_card .=   "<a  target='_blank' href=' " .$linha5['pagina_modular_descricao']. " '> Saiba mais </a>";
            } else {
                $texto_html_card .= "<p class='card-text'> " .$linha5['pagina_modular_descricao']. " </p>";
                $texto_html_card .=  "<a  href=' " .$caminho.$linha5['pagina_modular_id']. " '> Saiba mais </a>";
            }


            $texto_html_card .= "
          </div>
        </div>
        </div>";

    return $texto_html_card;
    
    }   


function exibir_card($tipo, $id, $folder, $caminho){

$conecta = $_SERVER["conecta"];

if($tipo == "card") {
// Consulta a Tabela Slides
    $consultar_card_1 = "SELECT * ";
    $consultar_card_1 .= "FROM cards ";
    $consultar_card_1 .= "WHERE  card_id = {$id} ";
    $consultar_card_1 = mysqli_query($conecta, $consultar_card_1);
    $dados_card = mysqli_fetch_assoc($consultar_card_1); 
    $card_pagina = $dados_card['card_pagina_id'];              
    if(!$consultar_card_1) {
        die("");  
        //die("</br> Falha na consulta ao banco FUNCTIONS Slides </br></br> " .$consultar_slide. " </br></br>  ");   
    }
// Consulta a Tabela Slides
    $consultar_card = "SELECT * ";
    $consultar_card .= "FROM paginas_modulares ";
    $consultar_card .= "WHERE  pagina_modular_id = {$card_pagina} ";
    $consulta_card = mysqli_query($conecta, $consultar_card);
    if(!$consulta_card) {
        die("");  
        //die("</br> Falha na consulta ao banco FUNCTIONS Slides </br></br> " .$consultar_slide. " </br></br>  ");   
    }
} 

else if ($tipo == "modular") {
    $consultar_card = "SELECT * ";
    $consultar_card .= "FROM paginas_modulares ";
    $consultar_card .= "WHERE  pagina_modular_id = {$id} ";
    $consulta_card = mysqli_query($conecta, $consultar_card);
    if(!$consulta_card) {
        die("</br>");  
        //die("</br> Falha na consulta ao banco FUNCTIONS Slides </br></br> " .$consultar_slide. " </br></br>  ");   
    }

}

else {}

    $linha5 = mysqli_fetch_assoc($consulta_card);

    $texto_html_card =  

    "<div class='col-sm-4 mb-3 mt-0  border-0'>
        <div class='card'>";

            if ($linha5['pagina_modular_categoria'] == ("midias") or $linha5['pagina_modular_categoria'] == ("videos")) {
                $texto_html_card .=   "<a style='text-decoration: none;'  target='_blank' href=' " .$linha5['pagina_modular_descricao']. " '> ";

            } else  {
                $texto_html_card .=  "<a style='text-decoration: none;' target='_self' href=' " .$caminho.$linha5['pagina_modular_id']. " '> ";

            }

            $texto_html_card .= "<img class='card-img-top imag-card w-100' src='" .$folder.$linha5['pagina_modular_imagem_capa']. "'>
          <div class='card-body'>
            <h6 class='card-title-sub'> " .date('d/m/Y', strtotime($linha5["data"])).  "  </h6>
             <h5 class='card-title'>" .$linha5['pagina_modular_titulo']. "</h5>";

            $texto_html_card .= "
          </div>
        </a></div>
        </div>";

    return $texto_html_card;
    
    }   


function exibir_card_social ($id, $folder) {

$conecta = $_SERVER["conecta"];

// Consulta a Tabela Slides
$consultar_card_1 = "SELECT * ";
$consultar_card_1 .= "FROM cards ";
$consultar_card_1 .= "WHERE  card_id = {$id} ";
$consultar_card_1 = mysqli_query($conecta, $consultar_card_1);
$dados_card = mysqli_fetch_assoc($consultar_card_1);


if($dados_card['card_pagina_id'] > 0) {
$url = "noticia_mod.php?pg_id=".$dados_card['card_pagina_id'].""; 
} else{
$url = $dados_card['card_descricao'];  
}






/*libxml_use_internal_errors(true);
$c = file_get_contents($url);
$d = new DomDocument();
$d->loadHTML($c);
$xp = new domxpath($d);

foreach ($xp->query("//meta[@property='og:title']") as $el) {
    $url_titulo = $el->getAttribute("content");
}

foreach ($xp->query("//meta[@property='og:image']") as $el) {
    $url_image = $el->getAttribute("content");
}*/

    $texto_html_card =  
    "<div class='col-sm-4 mb-3 mt-0  border-0'>
    <div class='card'>";

    $texto_html_card .=   
    "<a style='text-decoration: none;'  target='_blank' href='".$url."'>";

    $texto_html_card .= 
    "<img class='card-img-top imag-card w-100' src='" .$folder.$dados_card['card_image']. "'>
    <div class='card-body'>
    <h5 class='card-title'>" .mb_strimwidth($dados_card['card_nome'], 0, 65, '...'). "</h5>
    </div>

    </a></div>
    </div>";


return $texto_html_card;

}



function exibir_card_news ($id, $folder) {

    $conecta = $_SERVER["conecta"];
    
    // Consulta a Tabela Slides
    $consultar_card_1 = "SELECT * ";
    $consultar_card_1 .= "FROM cards ";
    $consultar_card_1 .= "WHERE  card_id = {$id} ";
    $consultar_card_1 = mysqli_query($conecta, $consultar_card_1);
    $dados_card = mysqli_fetch_assoc($consultar_card_1);
    
    
    if($dados_card['card_pagina_id'] > 0) {
        $dados_url = "noticia_mod.php?pg_id=".$dados_card['card_pagina_id'].""; 
    } else{
        $dados_url = $dados_card['card_url_externa'];  
    }
    

        $texto_html_card =  
        "<div class='col-md-6'>
            <div class='row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative'>
                <div class='col p-4 d-flex flex-column position-static'>
                    <strong class='d-inline-block mb-2 text-lah'>".$dados_card['card_categoria']."</strong>";
        $texto_html_card .=     
        "           <h3 class='mb-0'>".$dados_card['card_nome']."</h3>
                    <p class='mb-auto'>" .mb_strimwidth($dados_card['card_descricao'], 0, 75, "...")."</p>
                    <div class='mb-1 text-muted'> <a style='text-decoration: none;'  target='_blank' href='".$dados_url."'> Continuar lendo </a> </div> 
                </div>";   
        $texto_html_card .= 
        "       <div class='col-auto d-none d-lg-block'>
                    <img class='img-card-2' src='" .$folder.$dados_card['card_image']. "' >
                </div>
                </div>
        </div>";
    
    
       
       /*
        $texto_html_card .=   
        "<a style='text-decoration: none;'  target='_blank' href='".$url."'>";

    
        $texto_html_card .= 
        "<img class='card-img-top imag-card w-100' src='" .$folder.$dados_card['card_image']. "'>
        <div class='card-body'>
        <h5 class='card-title'>" .mb_strimwidth($dados_card['card_nome'], 0, 65, '...'). "</h5>
        </div>
    
        </a></div>
        </div>";

        */
    
    
    return $texto_html_card;
    
    }


function exibir_texto($tabela, $texto_id){

$conecta = $_SERVER["conecta"];

if($texto_id > 0) {
$pagina_id = $texto_id;
} else {
$pagina_id = $_GET["pg_id"];
}

if ($tabela == "pagina_fixa") {
//Consulta a tabela usuarios
$pagina_info = "SELECT * ";
$pagina_info .= "FROM paginas_fixas ";
$pagina_info .= "WHERE pagina_id = {$pagina_id} ";
//ERRO
$info_pagina = mysqli_query($conecta, $pagina_info);
if(!$info_pagina) {
die(" Falha na Base de Dados! Function Pagina Fixa ");  
} else {
  echo "";
}
//DADOS
$dados_pagina = mysqli_fetch_assoc($info_pagina);        
$texto_html_pagina = base64_decode($dados_pagina["pagina_conteudo"]);
}  

else if ($tabela == "pagina_modular") {
//Consulta a tabela usuarios
$pagina_info = "SELECT * ";
$pagina_info .= "FROM paginas_modulares ";
$pagina_info .= "WHERE pagina_modular_id = {$pagina_id} ";
//ERRO
$info_pagina = mysqli_query($conecta, $pagina_info);
if(!$info_pagina) {
die(" Falha na Base de Dados! Function Pagina Modular ");  
} else {
  echo "";
}
//DADOS
$dados_pagina = mysqli_fetch_assoc($info_pagina);        
$texto_html_pagina = base64_decode($dados_pagina["pagina_modular_conteudo"]);
}  

else {}

return $texto_html_pagina;
   
}

function exibir_texto_2($tabela, $texto_id){

$conecta = $_SERVER["conecta"];

if($texto_id > 0) {
$pagina_id = $texto_id;
} else {
$pagina_id = $_GET["pg_id"];
}

if ($tabela == "pagina_fixa") {
//Consulta a tabela usuarios
$pagina_info = "SELECT * ";
$pagina_info .= "FROM paginas_fixas ";
$pagina_info .= "WHERE pagina_id = {$pagina_id} ";
//ERRO
$info_pagina = mysqli_query($conecta, $pagina_info);
if(!$info_pagina) {
die(" Falha na Base de Dados! Function Pagina Fixa ");  
} else {
  echo "";
}
//DADOS
$dados_pagina = mysqli_fetch_assoc($info_pagina);        
$texto_html_pagina = base64_decode($dados_pagina["pagina_conteudo_2"]);
}  

else if ($tabela == "pagina_modular") {
//Consulta a tabela usuarios
$pagina_info = "SELECT * ";
$pagina_info .= "FROM paginas_modulares ";
$pagina_info .= "WHERE pagina_modular_id = {$pagina_id} ";
//ERRO
$info_pagina = mysqli_query($conecta, $pagina_info);
if(!$info_pagina) {
die(" Falha na Base de Dados! Function Pagina Modular ");  
} else {
  echo "";
}
//DADOS
$dados_pagina = mysqli_fetch_assoc($info_pagina);        
$texto_html_pagina = base64_decode($dados_pagina["pagina_modular_conteudo_2"]);
}  

else {}

return $texto_html_pagina;
   
}


function exibir_caminho($tabela, $texto_id){
//header('Content-type: text/html; charset=utf-8');
//mysqli_set_charset('utf8');

$conecta = $_SERVER["conecta"];

if($texto_id > 0) {
$pagina_id = $texto_id;
} else {
$pagina_id = $_GET["pg_id"];
}

if ($tabela == "pagina_fixa") {
//Consulta a tabela usuarios
$pagina_info = "SELECT * ";
$pagina_info .= "FROM paginas_fixas ";
$pagina_info .= "WHERE pagina_id = {$pagina_id} ";
//ERRO
$info_pagina = mysqli_query($conecta, $pagina_info);
if(!$info_pagina) {
die(" Falha na Base de Dados! Function Pagina Fixa ");  
} else {
  echo "";
}
//DADOS
$dados_pagina = mysqli_fetch_assoc($info_pagina);
print_r($dados_pagina);
return array(
    $dados_pagina["pagina_id"], 
    $dados_pagina["pagina_titulo"], 
    base64_decode($dados_pagina["pagina_conteudo"]),
    $dados_pagina["pagina_categoria"], 
    $dados_pagina["pagina_descricao"],
    $dados_pagina["pagina_palavras_chaves"]
);  

}  

else if ($tabela == "pagina_modular") {
//Consulta a tabela usuarios
$pagina_info = "SELECT * ";
$pagina_info .= "FROM paginas_modulares ";
$pagina_info .= "WHERE pagina_modular_id = {$pagina_id} ";
//ERRO
$info_pagina = mysqli_query($conecta, $pagina_info);
if(!$info_pagina) {
die(" Falha na Base de Dados! Function Pagina Modular ");  
} else {
  echo "";
}
//DADOS

$dados_pagina = mysqli_fetch_assoc($info_pagina);

return  array(
    $dados_pagina["pagina_modular_id"], 
    $dados_pagina["pagina_modular_titulo"], 
    base64_decode($dados_pagina["pagina_modular_conteudo"]),
    base64_decode($dados_pagina["pagina_modular_conteudo_2"]),
    $dados_pagina["pagina_modular_categoria"],  
    $dados_pagina["pagina_modular_descricao"],
    $dados_pagina["pagina_modular_palavras_chaves"],
    $dados_pagina["pagina_modular_imagem_capa"],
    $dados_pagina["data"],
    $dados_pagina["pagina_modular_slide"]
);
   
}

}


?>