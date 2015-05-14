---
layout: post
status: publish
published: true
title: Erro ao instalar Gem mysql2 Rails - Ubuntu
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 307
wordpress_url: http://www.compilando.org/wp/?p=307
date: '2011-09-23 12:18:38 -0300'
date_gmt: '2011-09-23 15:18:38 -0300'
categories:
- Linux
- Programação
- Ruby
- Sem categoria
tags:
- erro mysql
- gem install mysql
- gem install mysql2
- Gem mysql2
- mysql Rails
- rails
comments:
- id: 40
  author: felipe augusto bastos moraes
  author_email: felipeabm@gmail.com
  author_url: ''
  date: '2012-05-22 12:52:00 -0300'
  date_gmt: '2012-05-22 15:52:00 -0300'
  content: opa, vlw pela dica.
- id: 41
  author: Leoncio Nascimento
  author_email: ''
  author_url: http://www.facebook.com/leoncio.nascimento
  date: '2012-08-31 00:03:00 -0300'
  date_gmt: '2012-08-31 03:03:00 -0300'
  content: ":D!!! Valew!!!"
- id: 42
  author: Rafael Wilber Kerr
  author_email: ''
  author_url: http://www.facebook.com/rafakerr
  date: '2012-10-20 00:41:00 -0300'
  date_gmt: '2012-10-20 03:41:00 -0300'
  content: valeu manolo, já usei aqui, RoR RULES!!!
---
<p>Toda vez que instalo o rails e vou criar 1 app pra ver se funcionou vejo que esqueci de instalar a gem do mysql.<br />
Ao tentar instalar a gem me deparo com 1 erro bem grandinho, que infelizmente esqueci de guardar pra colocar no post.</p>
<p>Então vamos a solução, antes de instalar a gem instale as libs do mysql para Ruby e devs.<br />
[code lang="shell"]<br />
sudo apt-get install libmysql-ruby libmysqlclient-dev<br />
[/code]</p>
<p>Agora instale a gem e bom divertimento. ;)</p>
<p>Post Miojo galera, ou seja 3 minutos e tá pronto.<br />
Enjoy!</p>
