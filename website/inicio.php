
<?php require_once "header.php";  ?>
    
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
<main class="container">

  <div class="container text-justify mt-3 mb-3 ">
        <div class="row">

          <div class="col-sm-6" style="background-color: rgb(10,10,70) !important;">
          
            <h1 class="text-white"><b><?php echo $dados_pagina_fixa["pagina_titulo"];?></b></h1>
            <p class="" style="color: white !important; font-size: 13px !important; ">
            <?php echo base64_decode($dados_pagina_fixa["pagina_conteudo"]); ?>	</p>
          </div>

          <div class="col-sm-6" style="">
          <?php echo( exibir_slide_fixo( 0, '../dashboard/dados/', 'auto', '100%') ); ?>

            <!--
            <img 
            class="d-block ml-sm-3" 
            style="width: auto !important; height: 100% !important;" 
            src="../dashboard/dados/<?php echo $dados_pagina_fixa["pagina_imagem_capa"];?>"
            >
            -->

          </div>
          
        </div>
  </div>



<div class="row">
  <?php echo( exibir_card_news(1,'../dashboard/dados/') ); ?>
  <?php echo( exibir_card_news(2,'../dashboard/dados/') ); ?>
  <?php echo( exibir_card_news(3,'../dashboard/dados/') ); ?>
  <?php echo( exibir_card_news(4,'../dashboard/dados/') ); ?> 
</div>


    
    

  <div class="row g-5">
    <div class="col-md-8">
      
    <!--
      <h3 class="pb-2 mb-4 fst-italic border-bottom">
        Introdução
    </h3>
    -->

      </p><hr>

      <article class="blog-post">
        <h2 class="blog-post-title mb-1">Sample blog post</h2>
        <p class="blog-post-meta">January 1, 2021 by <a href="#">Mark</a></p>

        <p>This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, lists, tables, images, code, and more are all supported as expected.</p>
        <hr>
        <p>This is some additional paragraph placeholder content. It has been written to fill the available space and show how a longer snippet of text affects the surrounding content. We'll repeat it often to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
        <h2>Blockquotes</h2>
        <p>This is an example blockquote in action:</p>
        <blockquote class="blockquote">
          <p>Quoted text goes here.</p>
        </blockquote>
        <p>This is some additional paragraph placeholder content. It has been written to fill the available space and show how a longer snippet of text affects the surrounding content. We'll repeat it often to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
        <h3>Example lists</h3>
        <p>This is some additional paragraph placeholder content. It's a slightly shorter version of the other highly repetitive body text used throughout. This is an example unordered list:</p>
        <ul>
          <li>First list item</li>
          <li>Second list item with a longer description</li>
          <li>Third list item to close it out</li>
        </ul>
        <p>And this is an ordered list:</p>
        <ol>
          <li>First list item</li>
          <li>Second list item with a longer description</li>
          <li>Third list item to close it out</li>
        </ol>
        <p>And this is a definition list:</p>
        <dl>
          <dt>HyperText Markup Language (HTML)</dt>
          <dd>The language used to describe and define the content of a Web page</dd>
          <dt>Cascading Style Sheets (CSS)</dt>
          <dd>Used to describe the appearance of Web content</dd>
          <dt>JavaScript (JS)</dt>
          <dd>The programming language used to build advanced Web sites and applications</dd>
        </dl>
        <h2>Inline HTML elements</h2>
        <p>HTML defines a long list of available inline tags, a complete list of which can be found on the <a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element">Mozilla Developer Network</a>.</p>
        <ul>
          <li><strong>To bold text</strong>, use <code class="language-plaintext highlighter-rouge">&lt;strong&gt;</code>.</li>
          <li><em>To italicize text</em>, use <code class="language-plaintext highlighter-rouge">&lt;em&gt;</code>.</li>
          <li>Abbreviations, like <abbr title="HyperText Markup Language">HTML</abbr> should use <code class="language-plaintext highlighter-rouge">&lt;abbr&gt;</code>, with an optional <code class="language-plaintext highlighter-rouge">title</code> attribute for the full phrase.</li>
          <li>Citations, like <cite>— Mark Otto</cite>, should use <code class="language-plaintext highlighter-rouge">&lt;cite&gt;</code>.</li>
          <li><del>Deleted</del> text should use <code class="language-plaintext highlighter-rouge">&lt;del&gt;</code> and <ins>inserted</ins> text should use <code class="language-plaintext highlighter-rouge">&lt;ins&gt;</code>.</li>
          <li>Superscript <sup>text</sup> uses <code class="language-plaintext highlighter-rouge">&lt;sup&gt;</code> and subscript <sub>text</sub> uses <code class="language-plaintext highlighter-rouge">&lt;sub&gt;</code>.</li>
        </ul>
        <p>Most of these elements are styled by browsers with few modifications on our part.</p>
        <h2>Heading</h2>
        <p>This is some additional paragraph placeholder content. It has been written to fill the available space and show how a longer snippet of text affects the surrounding content. We'll repeat it often to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
        <h3>Sub-heading</h3>
        <p>This is some additional paragraph placeholder content. It has been written to fill the available space and show how a longer snippet of text affects the surrounding content. We'll repeat it often to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
        <pre><code>Example code block</code></pre>
        <p>This is some additional paragraph placeholder content. It's a slightly shorter version of the other highly repetitive body text used throughout.</p>
      </article>
      </p><hr>

         



      
    </div>

    <div class="col-md-4">
      <div class="position-sticky" style="top: 2rem;">

        <div class="p-4">
          <h4 class="fst-italic"> <i class="fas fa-sitemap"></i> Mapa do site </h4>
          <ol class="list-unstyled">
            <li><a href="page.php?pg_id=2">Inicio</a></li>
            <li><a href="page.php?pg_id=3">Arqueologia Histórica no Brasil</a></li>
            <li><a href="page.php?pg_id=4">Pessoas</a></li>
            <li><a href="page.php?pg_id=5">Infraestrutura</a></li>
            <li><a href="page.php?pg_id=6">Pesquisas</a></li>
            <li><a href="noticias.php?pg_id=7">Notícias</a></li>
            <li><a href="page.php?pg_id=8">SAHIST</a></li>
            <li><a href="contato.php?pg_id=11">Contato</a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>

</main>



<?php require_once "footer.php";  ?>