<?php require_once "../header_dashboard.php";  ?>

<div class="container">
	<div class="row">
  <div class="col col-12 mt-5 mb-5">


    <div class="row">
    <h3 class="h4 m-3 col-0"><i class="fas fa-file"></i> Subpáginas</h3>

    <a href='inserir_paginas.php' class="col-0">
      <button type='button' class='btn bg-dark text-white mt-3 ml-3'> <i class="fas fa-plus"></i> Inserir nova subpáginas</button>
    </a> 
  
    </div>

  <hr class="my-2">



  <table class="table table-responsive-md table-bordered table-hover mt-3 mb-3 border-0">

    <thead>

      <tr class="bg-dark text-white">

        <th scope="col">#ID</th>

        <th scope="col">Título</th>

        <th scope="col">Descrição</th>

        <th scope="col">Imagem Principal</th>

        <th scope="col">Alterar</th>

      </tr>

    </thead>

    <tbody>

      <?php while($linha = mysqli_fetch_assoc($consulta_subpaginas)) { ?>

      <tr>

            <th><?php echo $linha["pagina_id"] ?></th>

            <td><?php echo $linha["pagina_titulo"] ?></td>

            <td><?php echo mb_strimwidth($linha["pagina_descricao"], 0, 20, "...") ?></td>

            <td align="center"><img width="150" height="70" src=" <?php echo $linha['pagina_imagem_capa'] ?> " ></td>

            <td align="center">

            <a class="m-2" href='alterar_subpaginas.php?pg_id=<?php echo $linha["pagina_id"] ?>'><i class="fas fa-edit"></i> Editar </a>

            <a class="m-2" href='excluir_subpaginas.php?pg_id=<?php echo $linha["pagina_id"] ?>'><i class="fas fa-times"></i> Excluir </a>

            </td>

      </tr> 

    <?php } ?>

    </tbody>

  </table>





    </div>

	</div>

</div>





<?php require_once "../footer_dashboard.php";  ?>