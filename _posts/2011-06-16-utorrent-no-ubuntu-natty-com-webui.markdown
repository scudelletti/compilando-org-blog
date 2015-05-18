---
layout: post
status: publish
published: true
title: Utorrent com WebUI no Linux Ubuntu Natty 11.04
author:
  display_name: Scudelletti
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 245
wordpress_url: http://www.compilando.org/wp/?p=245
date: '2011-06-16 22:15:22 -0300'
date_gmt: '2011-06-17 01:15:22 -0300'
categories:
- Linux
- Outros
tags: []
comments: []
---
E ae galera tudo sussa?

Bom vou ensinar a vocês um comando simples para rodar o **utorrent no ubuntu via wine**,

Antes do comando mágico vamos **instalar o wine**.

{% highlight bash %}
sudo apt-get update
sudo apt-get install wine
{% endhighlight %}

Após a instalação do **wine** vamos rodar o utorrent.

{% highlight bash %}
wine utorrent.exe /noinstall
{% endhighlight %}

Este comando evita que a instalação se inicie e o utorrent funcione normalmente, para quem utiliza **WebUI** eu recomendo a utilização do **utorrent 1.8.5** no ubuntu, após a inicialização só configurar os parametros do acesso WebUI e deixar ele no systray.

Ai é correr pro abraço e baixar **torrents** pela **interface Web do utorrent**.

Abração Galera!
