---
layout: post
status: publish
published: true
title: Como instalar o NX Server no Ubuntu Natty 11.04 - FreeNX Server
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 260
wordpress_url: http://www.compilando.org/wp/?p=260
date: '2011-06-16 23:00:59 -0300'
date_gmt: '2011-06-17 02:00:59 -0300'
categories:
- Linux
tags: []
comments: []
---
<p>E ae galerinha tudo jóia? Vamos <strong>instalar o FreeNX Server no Ubuntu Natty 11.04</strong> hj?<br />
<a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/06/nomachine-logo.jpg"><img src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/06/nomachine-logo.jpg" alt="" title="nomachine-logo" width="640" height="480" class="aligncenter size-full wp-image-267" /></a></p>
<p>Bom vou ensinar como faço para subir um servidor Nomachine NX para <strong>conexão remota grafica em linux</strong>, bom graças a canonical temos os .deb e o apt-get que facilita nossa vida, então vamos aos comandos.</p>
<p>Antes de instalar o ubuntu server eu sempre opto por instalar o Gnome antes, devido as ferramentas que o gnome traz consigo, caso queira estas ferramentas execute:<br />
[code lang="shell"]<br />
sudo apt-get install gnome<br />
[/code]</p>
<p>Para instalar o Server de NX é necessário a adição de uma PPA então vamos a shell<br />
[code lang="shell"]<br />
sudo add-apt-repository ppa:freenx-team<br />
sudo sed -i 's/natty/lucid/g' /etc/apt/sources.list.d/freenx-team-ppa-natty.list<br />
[/code]</p>
<p>Caso dê o erro de Command not Found <a href="http://www.compilando.org/wp/sem-categoria/resolva-o-erro-add-apt-repository-command-not-found-no-ubuntu-natty-11-04">leia este artigo</a>.</p>
<p>Agora vamos atualizar a lista do apt-get e <strong>instalar o nx server</strong><br />
[code lang="shell"]<br />
sudo apt-get update<br />
sudo apt-get install freenx<br />
[/code]</p>
<p>Pronto instaladinho, agora vamos a instalação do Client, para isto vá ao site da <strong>NoMachine</strong> e baixe o client em .deb, dê dois cliques e instale ele e suas dependências. <a href="http://www.nomachine.com/download-client-linux.php">Baixe o pacote aqui</a>.</p>
<p>Se preferir instalar pelo terminal digite<br />
[code lang="shell"]<br />
dpkg -i nxclient_3.5.0-6.deb<br />
[/code]</p>
<p>Caso haja a necessidade de instalar alguma dependência instale pelo apt-get.<br />
Bom galera agora é só conectar e aproveitar este execelente acesso remoto.</p>
<p>Enjoy.</p>
<p>Fonte de Pesquisa: http://notepad2.blogspot.com/2011/05/install-freenx-server-on-ubuntu-1004.html</p>
