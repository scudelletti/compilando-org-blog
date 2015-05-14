---
layout: post
status: publish
published: true
title: Utorrent com WebUI no Linux Ubuntu Natty 11.04
author:
  display_name: Mandrake
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
<p>E ae galera tudo sussa?<br />
Bom vou ensinar a vocês um comando simples para rodar o <strong>utorrent no ubuntu via wine</strong>,<br />
<a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/06/utorrent-logo.png"><img src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/06/utorrent-logo.png" alt="" title="utorrent-logo" width="500" height="500" class="aligncenter size-full wp-image-269" /></a></p>
<p>Antes do comando mágico vamos <strong>instalar o wine</strong>.</p>
<p>[code lang="shell"]<br />
sudo apt-get update<br />
sudo apt-get install wine<br />
[/code]</p>
<p>Após a instalação do <strong>wine</strong> vamos rodar o utorrent.<br />
[code lang="shell"]<br />
wine utorrent.exe /noinstall<br />
[/code]</p>
<p>Este comando evita que a instalação se inicie e o utorrent funcione normalmente, para quem utiliza <strong>WebUI</strong> eu recomendo a utilização do <strong>utorrent 1.8.5</strong> no ubuntu, após a inicialização só configurar os parametros do acesso WebUI e deixar ele no systray.</p>
<p>Ai é correr pro abraço e baixar <strong>torrents</strong> pela <strong>interface Web do utorrent</strong>.<br />
Abração Galera!</p>
