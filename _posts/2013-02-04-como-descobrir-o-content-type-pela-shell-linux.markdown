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
<p>Post rápido galera!<br />
Hoje estava checando <strong>content-types</strong> de um <strong>formulário de upload</strong> e descobri como descobrir o <strong>Content Type pela Shell Linux</strong>! Funfou legal aqui no meu <strong>Ubuntu</strong>!</p>
<p>Super fácil pessoal vamos ao comando:<br />
[code lang="shell"]<br />
file -i arquivo<br />
[/code]</p>
<p>Vamos a um exemplo prático:<br />
[code lang="shell"]<br />
file -i sample.pdf<br />
[/code]</p>
<p>O Resultado retornado foi:<br />
<strong>sample.pdf: application/pdf; charset=binary</strong></p>
<p>Eureka! It's Works! ;)</p>
