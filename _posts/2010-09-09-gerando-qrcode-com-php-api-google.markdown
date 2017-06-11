---
layout: post
status: publish
published: true
title: Gerando QRCode com PHP + API Google
author:
  display_name: Scudelletti
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
excerpt: Gere QRCode facilmente com PHP + API Google Chart
wordpress_id: 84
wordpress_url: http://www.compilando.org/wp/?p=84
date: '2010-09-09 13:24:26 -0300'
date_gmt: '2010-09-09 16:24:26 -0300'
categories:
- Programacao
- PHP
tags:
- api google
- gerar qrcode
- google qrcode
- php
- QrCode
comments:
- id: 11
  author: Buch
  author_email: buch@pompeia.sescsp.org.br
  author_url: ''
  date: '2011-09-29 00:28:00 -0300'
  date_gmt: '2011-09-29 00:28:00 -0300'
  content: "é posivel gerar qrcodes de uma base mysql?"
- id: 12
  author: ''
  author_email: admin@compilando.org
  author_url: ''
  date: '2011-09-29 01:01:00 -0300'
  date_gmt: '2011-09-29 01:01:00 -0300'
  content: |-
    Baste extrair os dados do banco e transformar um a um.
    Ou vc queria fazer algo semelhante a md5sum?

    Se for provavelmente a API não deve suportar o envio de arquivos grandes.

    Abs.
- id: 13
  author: Buch
  author_email: rodrigo.buch@hotmail.com
  author_url: ''
  date: '2012-03-02 00:45:00 -0300'
  date_gmt: '2012-03-02 03:45:00 -0300'
  content: |
    na verdade queria gerar varios qrcodes da uma base mas cada um tem poucas linhas de texto
    fazer buscar no banco e gerar uma pagina com vaarios qrcodes como nuna tabela dinamica
- id: 56
  author: Cleiton Emauel
  author_email: cleitonsoares0@gmail.com
  author_url: ''
  date: '2014-02-27 14:18:00 -0300'
  date_gmt: '2014-02-27 17:18:00 -0300'
  content: Poderia me dar uma dica para integrar o qr code a um sistema de estoque(web
    service)?
- id: 60
  author: reinaldoferro
  author_email: reinaldo.ferro@gmail.com
  author_url: ''
  date: '2014-04-15 17:03:00 -0300'
  date_gmt: '2014-04-15 20:03:00 -0300'
  content: |-
    Se você estiver usando o cakephp para extrair os dados de uma base use esse comando no plugin

    $this->QrCode-&gt;text($NomeController['NomeTabela']['Coluna']);
---

Neste post ensinarei **como utilizar a API do Google** para **gerar QrCode** através do **PHP**.

![image](/assets/qrcode.png)

Vocês verão que é muito simples pois a parte dificil a google topou fazer. ;-)

Este post é muito básico, aconselho a conhecer melhor a **[API para gerar QrCode](http://code.google.com/intl/pt-BR/apis/chart/docs/gallery/qr_codes.html)**, pois a mesma possui alguns parametros que podem ser interessantes.

Para entender bem como funciona a API criei um formulário em HTML e através dele passarei as informações para a página qrCode.php.

{% highlight html %}
<!DOCTYPE HTML>
<html>
  <head>
    <title>Title of the document</title>
  </head>
  <body>
    <form name="formulario" action="qrCode.php" method="post" >
      <label for="texto">Texto ou Link:</label><br/>
      <textarea name="texto" id="texto" rows="5" cols="40"></textarea><br/>
      <label for="tamanho">Tamanho:</label><br/>
      <input type="text" name="tamanho" id="tamanho" value="100"/><br/>
      <input type="submit" value="Gerar QrCode"/>
    </form>
</body>
</html>
{% endhighlight %}

Agora criaremos a página qrCode.php que repassará e retornara os dados da **[aka Chart API da Google](http://code.google.com/intl/pt-BR/apis/chart/docs/gallery/qr_codes.html)**.

{% highlight php %}
<?php
  if(isset($_POST['texto']) && isset($_POST['tamanho'])){
    $link = 'http://chart.apis.google.com/chart?cht=qr&chl='.$_POST['texto'].'&chs='.$_POST[tamanho].'x'.$_POST[tamanho];
    echo "<img src='$link'/>";
  }
?>
{% endhighlight %}

Eita jah acabou né? Puts achei que ia fazer um artigo grandão pra impressionar muita gente mas me ferrei.  :-)

Brincadeiras a parte, a google realmente facilitou e muito o **desenvolvimento de QrCode**, aconselho uma consulta a base de [códigos e API's da Google](http://code.google.com), garanto que tem muita coisa útil lá.

Para criação deste post consultei um tutorial do [Paulo Silva na iMasters](http://imasters.com.br/artigo/11752/aplicativosmoveis/gerar_qr_code_atraves_de_api_do_google/).

Abraço a todos e bom desenvolvimento.
