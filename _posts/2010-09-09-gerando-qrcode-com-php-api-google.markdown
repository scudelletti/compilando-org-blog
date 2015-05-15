---
layout: post
status: publish
published: true
title: Gerando QRCode com PHP + API Google
author:
  display_name: Mandrake
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
- Programação
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

    $this-&gt;QrCode-&gt;text($NomeController['NomeTabela']['Coluna']);
---
<p style="text-align: left;">Neste post ensinarei **como utilizar a API do Google** para **gerar QrCode** através do **PHP**.
<img class="aligncenter" style="border: 0px initial initial;" src="http://i206.photobucket.com/albums/bb289/Mandrake__/chart.png" alt="QrCode PHP, API Google Chart" width="200" height="200" />
Vocês verão que é muito simples pois a parte dificil a google topou fazer. ;-)
Este post é muito basico, aconselho a conhecer melhor a **<a href="http://code.google.com/intl/pt-BR/apis/chart/docs/gallery/qr_codes.html">API para gerar QrCode</a>**, pois a mesma possui alguns parametros que lhe podem ser interessantes.
Para entender bem como funciona a API criei um formulário em HTML e através dele passarei as informações para a página qrCode.php.
{% highlight html %}
&lt;!DOCTYPE HTML&gt;
&lt;html&gt;
	&lt;head&gt;
		&lt;title&gt;Title of the document&lt;/title&gt;
	&lt;/head&gt;
	&lt;body&gt;
		&lt;form name=&quot;formulario&quot; action=&quot;qrCode.php&quot; method=&quot;post&quot; &gt;
			&lt;label for=&quot;texto&quot;&gt;Texto ou Link:&lt;/label&gt;&lt;br/&gt;
			&lt;textarea name=&quot;texto&quot; id=&quot;texto&quot; rows=&quot;5&quot; cols=&quot;40&quot;&gt;&lt;/textarea&gt;&lt;br/&gt;
			&lt;label for=&quot;tamanho&quot;&gt;Tamanho:&lt;/label&gt;&lt;br/&gt;
			&lt;input type=&quot;text&quot; name=&quot;tamanho&quot; id=&quot;tamanho&quot; value=&quot;100&quot;/&gt;&lt;br/&gt;
			&lt;input type=&quot;submit&quot; value=&quot;Gerar QrCode&quot;/&gt;
		&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
{% endhighlight %}
Agora criaremos a página qrCode.php que repassará e retornara os dados da **<a href="http://code.google.com/intl/pt-BR/apis/chart/docs/gallery/qr_codes.html">aka Chart API da Google</a>**.
{% highlight php %}
&lt;?php
	if(isset($_POST['texto']) &amp;&amp; isset($_POST['tamanho'])){
		$link = 'http://chart.apis.google.com/chart?cht=qr&amp;chl='.$_POST['texto'].'&amp;chs='.$_POST[tamanho].'x'.$_POST[tamanho];
		echo &quot;&lt;img src='$link'/&gt;&quot;;
	}
?&gt;
{% endhighlight %}
Eita jah acabou né? Puts achei que ia fazer um artigo grandão pra impressionar muita gente mas me ferrei.  :-)
Brincadeiras a parte, a google realmente facilitou e muito o **desenvolvimento de QrCode**, aconselho uma consulta a base de <a href="http://code.google.com/">códigos e API's da Google</a>, garanto que tem muita coisa útil lá.
Para criação deste post consultei um tutorial do<a href="	http://imasters.uol.com.br/artigo/11752/aplicativosmoveis/gerar_qr_code_atraves_de_api_do_google/"> </a><a href="	http://imasters.uol.com.br/artigo/11752/aplicativosmoveis/gerar_qr_code_atraves_de_api_do_google/">Paulo Silva na IMaster</a><a href="	http://imasters.uol.com.br/artigo/11752/aplicativosmoveis/gerar_qr_code_atraves_de_api_do_google/">s</a>.
Abraço a todos e bom desenvolvimento.
