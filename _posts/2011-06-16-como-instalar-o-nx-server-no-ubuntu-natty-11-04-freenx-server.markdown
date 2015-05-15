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
E ae galerinha tudo jóia? Vamos **instalar o FreeNX Server no Ubuntu Natty 11.04** hj?

Bom vou ensinar como faço para subir um servidor Nomachine NX para **conexão remota grafica em linux**, bom graças a canonical temos os .deb e o apt-get que facilita nossa vida, então vamos aos comandos.

Antes de instalar o ubuntu server eu sempre opto por instalar o Gnome antes, devido as ferramentas que o gnome traz consigo, caso queira estas ferramentas execute:

{% highlight bash %}
sudo apt-get install gnome
{% endhighlight %}

Para instalar o Server de NX é necessário a adição de uma PPA então vamos a shell

{% highlight bash %}
sudo add-apt-repository ppa:freenx-team
sudo sed -i 's/natty/lucid/g' /etc/apt/sources.list.d/freenx-team-ppa-natty.list
{% endhighlight %}

Caso dê o erro de Command not Found [leia este artigo](http://www.compilando.org/wp/sem-categoria/resolva-o-erro-add-apt-repository-command-not-found-no-ubuntu-natty-11-04).

Agora vamos atualizar a lista do apt-get e **instalar o nx server**

{% highlight bash %}
sudo apt-get update
sudo apt-get install freenx
{% endhighlight %}

Pronto instaladinho, agora vamos a instalação do Client, para isto vá ao site da **NoMachine** e baixe o client em .deb, dê dois cliques e instale ele e suas dependências. [Baixe o pacote aqui](http://www.nomachine.com/download-client-linux.php).

Se preferir instalar pelo terminal digite:

{% highlight bash %}
dpkg -i nxclient_3.5.0-6.deb
{% endhighlight %}

Caso haja a necessidade de instalar alguma dependência instale pelo apt-get.

Bom galera agora é só conectar e aproveitar este execelente acesso remoto.

Enjoy.

Fonte de Pesquisa: [Notepad2 Blog](http://notepad2.blogspot.com/2011/05/install-freenx-server-on-ubuntu-1004.html)
