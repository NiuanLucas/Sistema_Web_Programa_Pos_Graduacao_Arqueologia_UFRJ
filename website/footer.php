

<?php
$variavel = "texto";
?>

<script type="text/javascript">

var intro = "<div id='caminho' class='caminho mt-0'><i>"

var texto_1 = "Início";

var texto_2 = "<?php if ( (exibir_caminho('pagina_fixa', 0)[3]) == false ) {
            echo( ucfirst ( str_replace('_', ' ', exibir_caminho('pagina_modular', 0)[4] ) ) );
            } else {
            echo( ucfirst ( str_replace('_', ' ', exibir_caminho('pagina_fixa', 0)[3] ) ) );    
            }?> ";

var texto_3 = "<?php if ( (exibir_caminho('pagina_fixa', 0)[4]) == false ) {
            echo( str_replace('_', ' ', exibir_caminho('pagina_modular', 0)[1]) );
            } else {
            echo(str_replace('_', ' ', exibir_caminho('pagina_fixa', 0)[1]));    
            }?>";


var end = "</i></div>";
var d1 = document.getElementsByTagName("h2");

if (texto_2 == "Especialidades ") {
var texto_2_caminho = "../pesquisa/especialidades.php?pg_id=10";
var texto_2_link = "<a target='_self' href='" + texto_2_caminho + "'>" + texto_2 + "</a>";

} else if (texto_2 == "Linhas de pesquisa ") {
var texto_2_caminho = "../pesquisa/linhas_de_pesquisa.php?pg_id=8";
var texto_2_link = "<a target='_self' href='" + texto_2_caminho + "'>" + texto_2 + "</a>";

} else {
var texto_2_caminho = "";
var texto_2_link = "" + texto_2 + "";
}

var texto_1_link = "<a target='_self' href='../../'>" + texto_1 + "</a>";
var texto_3_link = "<a target='_self' href=''>" + texto_3 + "</a>";


if (texto_2 == texto_3) {
d1[0].insertAdjacentHTML('beforeBegin', intro + texto_1_link + " /  " + texto_3_link + end);  
} else {
d1[0].insertAdjacentHTML('beforeBegin', intro + texto_1_link + " / " + texto_3_link + end); 
}

</script>


<div class="links_rodape" >
<div class="float-right link_topo" id="link_topo"> 
<hr><a class="mt-0" href="#" target="_self"> 
<i class="fas fa-arrow-up"></i> Voltar ao Topo </a></br>
</div>
</br></br></br>
</div>

</div>



<footer class="blog-footer bg-dark text-white m-0 m-md-0 p-2 p-md-0">
</br>	
<div class="container">
<div class="row ">

      <div class="col-4 col-md-2 m-0 text-left">
    		<h5 class="font-weight-bold font-arial">Redes Sociais</h5>
            <ul class="list-unstyled">
              <li><a href="#" target="_blank" class="mt-4 text-white"><i class="fab fa-instagram"></i> @lah.mn</li>
              <li><a href="#" target="_blank" class="mt-4 text-white"> <i class="fab fa-facebook"></i> /lah.mn</li></a>
            </ul>
        </div>

        <div class="col-8 col-md-5 m-0 text-left">
            <h5 class="font-weight-bold font-arial">Parceiros e Financiadores</h5>
            <div class="row">
              <div class="col col-sm-3 m-0">  
                <a href="https://www.gov.br/cnpq/pt-br" target="_blank"><img class="" src="../assets/images/logo_cnpq_branco.png" style="max-height: 100px; max-width: 100%;" ></a>
              </div>
              <div class="col col-sm-3 m-0">  
                <a href="https://www.gov.br/capes/pt-br" target="_blank"><img class="" src="../assets/images/logo_caps_branco.png" style="max-height: 100px; max-width: 100%;" ></a>
              </div>           
              <div class="col col-sm-3 m-0">  
                <a href="http://www.faperj.br/" target="_blank"><img class="" src="../assets/images/logo_faperj_branco.png" style="max-height: 100px; max-width: 100%;" ></a>
              </div>
            </div>
        </div>

        <div class="col-6 col-md-2 m-0 text-left">
            <h5 class="font-weight-bold font-arial">Mapa do Site</h5>
            <ul class="list-unstyled">
              <li><a class="text-white" href="../../">Home</a></li>            
              <li><a class="text-white" href="login.php?pg_id=1" target="_blank">Área de Desenvolvimento</a></li>
            </ul>
        </div>

        <div class="col-6 col-md-3 m-0 text-left">
          <div class="row">
              <div class="col col-sm-4 m-0">  
                <a href="https://ufrj.br/" target="_blank"><img class="" src="../assets/images/logo_ufrj_branco.png" style="max-height: 70px; max-width: 100%;" ></a>
                <a href="http://www.museunacional.ufrj.br/" target="_blank"><img class="" src="../assets/images/logo_museu_branco.png" style="max-height: 70px; max-width: 100%;" ></a>
              </div>
              <div class="col col-sm-6 m-0">
                <a target="_blank"><img class="" src="../assets/images/logo_laboratorio_branco.png" style="max-height: 85px; max-width: 100%;" ></a>
              </div> 
          </div>
        </div>


</div>
</div>
</footer>

</center></div>
</body>
  <script src="../assets/js/jquery.js"></script>
  <script src="../assets/js/bootnavbar.js"></script>
  <script src="../assets/js/jquery.scrolly.min.js.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.js" integrity="sha256-DrT5NfxfbHvMHux31Lkhxg42LY6of8TaYyK50jnxRnM=" crossorigin="anonymous"></script>
  <script src="../assets/js/popper.min.js"></script>
  <script src="../assets/js/bootstrap.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/js/all.min.js"></script>
  <script src="../assets/js/bootstrap.bundle.js"></script>
  <script src="../assets/js/holder.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js" integrity="sha512-Y2IiVZeaBwXG1wSV7f13plqlmFOx8MdjuHyYFVoYzhyRr3nH/NMDjTBSswijzADdNzMyWNetbLMfOpIPl6Cv9g==" crossorigin="anonymous"></script>
  <script>
        $(function () {
            $('#main_navbar').bootnavbar({
                //option
                //animation: false
            });
        })
    </script>
    <script>
    document.addEventListener("DOMContentLoaded", function(event) {
       document.querySelectorAll('img').forEach(function(img){
        img.onerror = function(){this.style.display='none';};
       })
    });
      
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
    <script>
      $(document).on('click', '[data-toggle="lightbox"]', function(event) {
                  event.preventDefault();
                  $(this).ekkoLightbox();
              }); 
    </script>
</html>