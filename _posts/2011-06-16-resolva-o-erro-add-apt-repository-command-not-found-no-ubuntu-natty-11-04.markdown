---
layout: post
status: publish
published: true
title: 'Resolva o erro: add-apt-repository command not found no Ubuntu Natty 11.04'
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 250
wordpress_url: http://www.compilando.org/wp/?p=250
date: '2011-06-16 22:22:22 -0300'
date_gmt: '2011-06-17 01:22:22 -0300'
categories:
- Sem categoria
tags: []
comments:
- id: 25
  author: Como instalar o NX Server no Ubuntu Natty 11.04 &#8211; FreeNX Server |
    Compilando | Linux
  author_email: ''
  author_url: http://www.compilando.org/wp/linux/como-instalar-o-nx-server-no-ubuntu-natty-11-04-freenx-server
  date: '2011-06-16 23:01:07 -0300'
  date_gmt: '2011-06-17 02:01:07 -0300'
  content: "[...] Caso dê o erro de Command not Found leia este artigo. [...] "
- id: 26
  author: Alexandre Campinho
  author_email: alexandrearc@gmail.com
  author_url: ''
  date: '2012-10-14 19:30:00 -0300'
  date_gmt: '2012-10-14 22:30:00 -0300'
  content: Funcionou. Obrigado.
- id: 27
  author: Dave
  author_email: fdjv1@yahoo.com
  author_url: ''
  date: '2012-12-10 17:34:00 -0200'
  date_gmt: '2012-12-10 20:34:00 -0200'
  content: Very thanks!
- id: 52
  author: Paulo Fernandes
  author_email: paulof.prg@gmail.com
  author_url: ''
  date: '2013-10-08 04:31:00 -0300'
  date_gmt: '2013-10-08 07:31:00 -0300'
  content: Valeu! Me tirou de um aperto!
- id: 69
  author: Ricardo Alexandre Gomes Louren
  author_email: neo_webmaster@hotmail.com
  author_url: ''
  date: '2014-07-28 15:24:00 -0300'
  date_gmt: '2014-07-28 18:24:00 -0300'
  content: Thanks !
- id: 75
  author: jhonathas
  author_email: jhonathas@gmail.com
  author_url: ''
  date: '2014-11-27 10:59:00 -0200'
  date_gmt: '2014-11-27 13:59:00 -0200'
  content: Obrigado, funcionou perfeitamente.
---
Foi add uma ppa e deu erro? Mais precisamente o erro
**Erro: add-apt-repository command not found** ?

Vamos por a mão na massa, para resolver este problema basta executar o comando abaixo:

{% highlight bash %}
apt-get install python-software-properties
{% endhighlight %}

Enjoy. ;)
