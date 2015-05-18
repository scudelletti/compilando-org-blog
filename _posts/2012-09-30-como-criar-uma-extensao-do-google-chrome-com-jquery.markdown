---
layout: post
status: publish
published: true
title: Como criar uma Extensão do Google Chrome com JQuery
author:
  display_name: Scudelletti
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 382
wordpress_url: http://www.compilando.org/wp/?p=382
date: '2012-09-30 01:45:46 -0300'
date_gmt: '2012-09-30 04:45:46 -0300'
categories:
- Linux
- Programação
- JavaScript
tags:
- criar extensão chrome
- extensão google chrome
- how to create a google chrome extension
- jquery
comments:
- id: 47
  author: TUDOVIP
  author_email: contatotudovip@gmail.com
  author_url: ''
  date: '2013-01-04 01:41:00 -0200'
  date_gmt: '2013-01-04 04:41:00 -0200'
  content: |-
    Eu to com um aplicativo que é para emoticons no facebook, criei ele, mas quando vou colocar na Web Store não consigo, o arquivo é .js
    Se alguém poder ajudar
- id: 48
  author: Claudio Eden
  author_email: claudio.eden@gmail.com
  author_url: ''
  date: '2013-07-07 11:08:00 -0300'
  date_gmt: '2013-07-07 14:08:00 -0300'
  content: Excelente artigo. Saiu do B-A-BÁ, apesar de ser um HelloWorld, você conseguiu
    passar informações extras que não se encontra de maneira clara em outros tutoriais,
    como a questão do Matches. Com isso conseguiu me ajudar a resolver uma "pendengazinha"
    :) Muito obrigado Mandrake.
- id: 55
  author: Cursando na Web
  author_email: cursandonaweb@gmail.com
  author_url: ''
  date: '2014-02-22 20:46:00 -0300'
  date_gmt: '2014-02-22 23:46:00 -0300'
  content: Galera tem um curso nesse canal ensinando como fazer uma extensão. http://www.youtube.com/channel/UCTy-DOwZ8_W-19vfoj8b_MA
- id: 62
  author: Marcelo Goebel Machado
  author_email: mgoebelm@gmail.com
  author_url: ''
  date: '2014-05-09 16:56:00 -0300'
  date_gmt: '2014-05-09 19:56:00 -0300'
  content: Me ajudou a iniciar e já fiz minha primeira extensão. Valeu, um grande
    abraço.
- id: 67
  author: Daniel Plácido
  author_email: daniel.uramg@gmail.com
  author_url: ''
  date: '2014-06-05 12:04:00 -0300'
  date_gmt: '2014-06-05 15:04:00 -0300'
  content: Muito bom, eu já criava alguns userscripts agora fica fácil transforma-los
    em extensões pra distribuir
- id: 74
  author: Ricardo Almeida Campos
  author_email: cityfake@mailtothis.com
  author_url: ''
  date: '2014-09-24 21:48:00 -0300'
  date_gmt: '2014-09-25 00:48:00 -0300'
  content: nao consegui ver o exemplo se alguem puder me auxiliar ou me add no skype
    para eu tirar algumas duvidas agradeço pois ta foda de achar tuto na net em PT
---
Olá a todos, agora a pouco acabei de desenvolver minha primeira **extesão do Google Chrome** e nada mais justo que fazer um **tutorial** de **como criar uma extensão simples para Google Chrome com JQuery.**

A extensão que ensino a fazer neste tutorial apenas substitui o body da pagina do compilando.org por um texto.

Este tutorial segue o princípio "baby steps" então sinta-se a vontade para pular alguns passos caso seja expert. ;)

O primeiro passo é criar uma pasta

{% highlight bash %}
mkdir div_flutuante
{% endhighlight %}

O segundo passo consiste em criar um arquivo chamado manifest.json, este arquivo é responsasvel pode definir as configurações da extensão, nele vc define os imports das páginas, onde a extenção funcionará e coisas do gênero.
o arquivo deve conter o seguinte conteúdo:

{% highlight javascript %}
{
  "name" : "Div Flutuante",
  "version" : "0.1",
  "description" : "Apenas um tutorial...",
  "content_scripts" : [
    {
      "matches" : [
        "http://compilando.org/*",
        "http://www.compilando.org/*"
      ],
      "js" : ["jquery-1.8.2.min.js", "magic.js"],
      "run_at" : "document_end"
    }
  ],
  "page_action" : {
    "default_icon" : "icon.png"
  },
  "icons" : {
    "48" : "icon.png",
    "128" : "icon.png"
  },
  "manifest_version": 2
}
{% endhighlight %}

Podemos observar algumas configurações muito bacanas, já incluo o JQuery em content_scripts, e definos os icones, o ícone q está em page_action define o icone que aparecerá ao acessarmos compilando.org, imagem a qual aparecerá na barra de endereços.

Baixe o JQuery para a pasta.

{% highlight bash %}
cd div_flutuante
wget http://code.jquery.com/jquery-1.8.2.min.js
{% endhighlight %}

Crie o arquivo magic.js o qual importamos no manifest.

Dentro do magic.js vamos colocar a mágica da extensão.

{% highlight javascript %}
$('html').html("Compilando.org");
{% endhighlight %}

Agora coloque alguma imagem com o nome icon.png na pasta e pronto.

Vamos adicionar nossa extensão ao chrome para que possamos ver como ficou.

Acesse chrome://chrome/extensions/ e clique em Developer Mode ou 

Modo Desenvolvedor se seu Chrome estiver em português. Após isto clique em Load Unpacked Extension(Carregar extensão descompactada) e selecione a pasta onde esta o manifest.json.

Agora acesse compilando.org e veja a mágica acontecer. =]

Este é um tutorial que foge do Hello World normalmente utilizado pois já inclui o JQuery e utiliza as funções que desenvolvemos apenas no dominio que especificamos no arquivo manifest.

Caso queiram o Hello World Tradicional da Google acesse: <a href="http://developer.chrome.com/extensions/getstarted.html">http://developer.chrome.com/extensions/getstarted.html</a>

O site de Dev da google contem mmuitos exemplos que ajudam bastante, então recomendo uma passeada por lá.

Caso queiram o código deste tutorial eu o coloquei no GitHub: <a href="https://github.com/scudelletti/tutorial_chrome_extension">https://github.com/scudelletti/tutorial_chrome_extension</a>

Abraços galera.

E desculpem caso haja algum erro tanto de ortografia quanto de código, já está de madrugada. Muahahahaha ;)
<h2><span style="color: #ff0000;">Ah não esqueçam depois de remover a extensão. Afinal Hello World nao fica em produção não é?</span></h2>
Fontes de Consulta:
<a href="http://imasters.com.br/artigo/19377/javascript/criando-extensao-para-google-chrome"> http://imasters.com.br/artigo/19377/javascript/criando-extensao-para-google-chrome</a>
<a href="http://developer.chrome.com/extensions/getstarted.html"> http://developer.chrome.com/extensions/getstarted.html</a>
