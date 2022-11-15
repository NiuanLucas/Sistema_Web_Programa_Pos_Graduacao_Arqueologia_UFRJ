

<?php

define('DB_HOST',"localhost");

define('DB_USER',"root");

define('DB_PASS',"");

define('DB_NAME',"lah_museu_ufrj");

define('URL',"https://lap.mn.ufrj.br");
$url = URL;
//Passo 1 - Abrir conexao

$servidor = DB_HOST;

$usuario = DB_USER;

$senha = DB_PASS;

$banco = DB_NAME; 



$conecta = mysqli_connect($servidor, $usuario, $senha, $banco);

if ( mysqli_connect_errno() ) {

  die("Conexao falhou: " . mysqli_connect_errno() );

} else {
$_SERVER["conecta"] = $conecta;	
}


?>

 












