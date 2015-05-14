---
layout: post
status: publish
published: true
title: Git Colorido no Terminal
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 309
wordpress_url: http://www.compilando.org/wp/?p=309
date: '2011-09-23 12:07:07 -0300'
date_gmt: '2011-09-23 15:07:07 -0300'
categories:
- Git
- Linux
- Programação
tags:
- git
- git colorido
- git colorido no bash
- git colorido no terminal
- terminal colorido
- Ubuntu
comments:
- id: 43
  author: Caio Proiete
  author_email: caio-disqus@proiete.com
  author_url: http://caioproiete.net
  date: '2011-10-15 19:43:00 -0300'
  date_gmt: '2011-10-15 19:43:00 -0300'
  content: 'Dica: Pode também configurar as cores através da linha de comandos, sem
    precisar editar arquivos... (git config --global color.ui true)'
- id: 54
  author: Victor Magalhaes
  author_email: victor.magalhaesp@gmail.com
  author_url: ''
  date: '2013-11-27 13:59:00 -0200'
  date_gmt: '2013-11-27 16:59:00 -0200'
  content: VLW PELA DICA BROTHER!
---
<p>Fala galera tudo bom com vocês?</p>
<p>Hoje vou ensinar como deixar o Git colorido no terminal do linux, esta dica funcionou no meu Ubuntu porém acredito que funcione na maiorias distribuições Unix Like.</p>
<p style="text-align: center;"><a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/09/git-logo.png"><img class="aligncenter size-full wp-image-310" style="border-style: initial; border-color: initial; border-width: 0px;" src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/09/git-logo.png" alt="Logo Git" width="256" height="256" /></a></p>
<p>O primeiro passo é editar o arquivo .gitconfig que está localizado na sua pasta pessoal, caso este arquivo não existe tente criá-lo.<br />
[code lang="shell"]gedit ~/.gitconfig[/code]</p>
<p>O arquivo deve ficar parecido com o conteúdo do meu que está logo abaixo:<br />
[code lang="shell"][color]<br />
        branch = auto<br />
        diff = auto<br />
        interactive = auto<br />
        status = auto<br />
        ui = true<br />
[color &quot;status&quot;]<br />
  added = yellow<br />
  changed = cyan<br />
  untracked = red<br />
[/code]</p>
<p>Estas configurações definem que o git ficará colorido ao seus comandos serem executados.<br />
Se seu arquivo .gitconfig tiver [user] e coisas do gênero, basta colar o codigo no final do arquivo.</p>
<p>As cores deste que postei são personalizadas então para editar é fácil, caso queira trocar a cor do status basta editar o [color "status"], ele não é necessário no arquivo. para editar branch [color "status"] e assim por diante. Porém não testei nos outros.</p>
<p>Boa sorte a todos! ;)</p>
