---
layout: post
status: publish
published: true
title: Como descobrir o Content Type pela Shell Linux
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 398
wordpress_url: http://www.compilando.org/wp/?p=398
date: '2013-02-04 11:43:47 -0200'
date_gmt: '2013-02-04 14:43:47 -0200'
categories:
- Linux
- Programação
tags:
- console
- content-type
- content-types
- Linux
- shell
- Ubuntu
comments: []
---
Post rápido galera!

Hoje estava checando **content-types** de um **formulário de upload** e descobri como descobrir o **Content Type pela Shell Linux**! Funfou legal aqui no meu **Ubuntu**!

Super fácil pessoal vamos ao comando:
{% highlight bash %}
file -i arquivo
{% endhighlight %}

Vamos a um exemplo prático:

{% highlight bash %}
file -i sample.pdf
{% endhighlight %}

O Resultado retornado foi:
**sample.pdf: application/pdf; charset=binary**

Eureka! It's Works! ;)
