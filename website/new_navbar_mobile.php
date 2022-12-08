<nav id="menu" class="d-sm-none .d-md-block">
	
	<label for="tm" id="toggle-menu">      		
		<div class="m-0">
			<img src="../assets/images/logo_laboratorio_texto.png" class="img-logo-mobile img-invert m-0">
		</div>
		<div class="">
			<span class="drop-icon mt-3 mr-4"> <i class="fas fa-align-justify fa-2x"></i></span>
		</div>		
	</label>

	<input type="checkbox" id="tm">
	<ul class="main-menu clearfix">

	<?php 
    // Consulta a Tabela Paginas
    $paginas = "SELECT * FROM paginas ORDER BY pagina_id ASC ";
    global $consulta_paginas;
    $consulta_paginas = mysqli_query($conecta, $paginas);
    if(!$consulta_paginas) 
    die("Erro de Comunicação | Tabela Paginas em Dashboard");
	?>

	<?php while($linha = mysqli_fetch_assoc($consulta_paginas)) { ?>

			<?php 
				//Consulta a tabela subpaginas
				$consulta_subpaginas_navbar = "SELECT * FROM subpaginas WHERE subpagina_categoria = {$linha["pagina_id"]} ";
				$consulta_subpaginas_navbar = mysqli_query($conecta, $consulta_subpaginas_navbar);
				$tamanho_consulta_subpaginas_navbar = mysqli_num_rows($consulta_subpaginas_navbar);
				if(!$consulta_subpaginas_navbar) {
				die(" Falha na Base de Dados! NavBar SubPaginas");  
				}
			?>

			<?php if($tamanho_consulta_subpaginas_navbar > 0) { ?>
			<?php $sm_value = "sm".$linha["pagina_id"] ?>
			<li><a href="page.php?pg_id=<?php echo $linha["pagina_id"] ?>"><?php echo $linha["pagina_titulo"]?><span class="drop-icon">▾</span><label title="Toggle Drop-down" class="drop-icon" for="<?php echo $sm_value ?>">▾</label></a>  
			<input type="checkbox" id="<?php echo $sm_value ?>">
				<ul class="sub-menu">
					<?php while($sublinha = mysqli_fetch_assoc($consulta_subpaginas_navbar)) { ?>
					<hr class="m-0"><li><a target="_self" href="subpage.php?pg_id=<?php echo $sublinha["subpagina_id"] ?>"><?php echo $sublinha["subpagina_titulo"] ?></a></li>
					<?php } ?> 
				</ul>
			</li>

			<?php } else { ?>
			<li><a href="page.php?pg_id=<?php echo $linha["pagina_id"] ?>"><?php echo $linha["pagina_titulo"] ?></a></li>
			<?php }  ?>

	<?php } ?> 

	</ul>
</nav>