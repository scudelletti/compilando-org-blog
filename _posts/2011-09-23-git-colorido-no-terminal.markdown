---
layout: post
status: publish
published: true
title: Git Colorido no Terminal
author:
  display_name: Scudelletti
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
Fala galera tudo bom com vocês?

Hoje vou ensinar como deixar o Git colorido no terminal do linux, esta dica funcionou no meu Ubuntu porém acredito que funcione na maiorias distribuições Unix Like.

O primeiro passo é editar o arquivo .gitconfig que está localizado na sua pasta pessoal, caso este arquivo não existe tente criá-lo.

{% highlight bash %}
gedit ~/.gitconfig
{% endhighlight %}

O arquivo deve ficar parecido com o conteúdo do meu que está logo abaixo:

{% highlight bash %}
[color]
  branch = auto
  diff = auto
  interactive = auto
  status = auto
  ui = true
[color "status"]
  added = yellow
  changed = cyan
  untracked = red
{% endhighlight %}

Estas configurações definem que o git ficará colorido ao seus comandos serem executados.

Se seu arquivo .gitconfig tiver `[user]` e coisas do gênero, basta colar o codigo no final do arquivo.

As cores deste que postei são personalizadas então para editar é fácil, caso queira trocar a cor do status basta editar o [color "status"], ele não é necessário no arquivo. para editar branch `[color "status"]` e assim por diante. Porém não testei nos outros.

Boa sorte a todos! ;)
