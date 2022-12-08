
<?php
//phpinfo();
header('Content-type: text/html; charset=utf-8');

function consultarBancoDeDados($conecta){
    // Consulta a Tabela Paginas
    $paginas = "SELECT * FROM paginas ORDER BY pagina_id ASC ";
    global $consulta_paginas;
    $consulta_paginas = mysqli_query($conecta, $paginas);
    if(!$consulta_paginas) 
    die("Erro de Comunicação | Tabela Paginas em Dashboard");
    
    // Consulta a Tabela Paginas
    $subpaginas = "SELECT * FROM subpaginas ORDER BY subpagina_id ASC ";
    global $consulta_subpaginas;
    $consulta_subpaginas = mysqli_query($conecta, $subpaginas);
    if(!$consulta_subpaginas) 
        die("Erro de Comunicação | Tabela Subpaginas em Dashboard"); 

    // Consulta a Tabela Noticias
    $noticias = "SELECT * FROM noticias ORDER BY noticia_titulo ASC ";
    global $consulta_noticias;
    $consulta_noticias = mysqli_query($conecta, $noticias);
    if(!$consulta_noticias) 
        die("Erro de Comunicação | Tabela Notícias em Dashboard");     

    // Consulta a Tabela Usuarios
    $usuarios = "SELECT * FROM usuarios ";
    global $consulta_usuarios;
    $consulta_usuarios = mysqli_query($conecta, $usuarios);
    if(!$consulta_usuarios) 
        die("Erro de Comunicação | Tabela Usuarios em Dashboard");   
    
    // Consulta a Tabela Slides
    $slides = "SELECT * FROM slides ";
    global $consulta_slides;
    $consulta_slides = mysqli_query($conecta, $slides);
    if(!$consulta_slides) 
        die("Erro de Comunicação | Tabela Slides em Dashboard");   
    
    // Consulta a Tabela Cards
    $cards = "SELECT * FROM cards ORDER BY card_id ASC ";
    global $consulta_cards;
    $consulta_cards = mysqli_query($conecta, $cards);
    if(!$consulta_cards)
        die("Erro de Comunicação | Tabela Cards em Dashboard"); 

    // Consulta a Tabela Mensagens
    $mensagens = "SELECT * FROM mensagens ";
    global $consulta_mensagens;
    $consulta_mensagens = mysqli_query($conecta, $mensagens);
    if(!$consulta_mensagens) 
        die("Erro de Comunicação | Tabela Mensagens em Dashboard");   
        
    // Consulta a Tabela Configurações
    $configuracoes = "SELECT * FROM configuracoes ";
    global $consulta_configuracoes;
    $consulta_configuracoes = mysqli_query($conecta, $configuracoes);
    if(!$consulta_configuracoes) 
        die("Erro de Comunicação | Tabela Configurações em Dashboard");       
}

?>