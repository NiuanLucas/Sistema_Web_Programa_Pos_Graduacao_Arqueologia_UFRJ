





<nav class="navbar navbar-expand-lg navbar-dark bg-dark justify-content-left d-none d-sm-block" >
	<div class="collapse navbar-collapse justify-content-md-center text-left" id="navbarsExample08">
		<ul class="navbar-nav">

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
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="page.php?pg_id=<?php echo $linha["pagina_id"] ?>" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<?php echo $linha["pagina_titulo"] ?> </a>
				<ul class="dropdown-menu hover-drop " aria-labelledby="navbarDropdown">
				<?php while($sublinha = mysqli_fetch_assoc($consulta_subpaginas_navbar)) { ?>
						<li><a class="dropdown-item" target="_self" href="subpage.php?pg_id=<?php echo $sublinha["subpagina_id"] ?>"><?php echo $sublinha["subpagina_titulo"] ?> </a></li>
				<?php } ?> 
				</ul>
			</li>

			<?php } else { ?>
			<li class="nav-item">
				<a class="nav-link" target="_self" href="page.php?pg_id=<?php echo $linha["pagina_id"] ?>"> <?php echo $linha["pagina_titulo"] ?> </a>
			</li>
			<?php }  ?>


		<?php } ?> 

		</ul>
	</div>
</nav>