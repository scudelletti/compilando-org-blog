---
layout: post
status: publish
published: true
title: Busca em MySQL com acentos que retorna dados com e sem acentos com Ruby
author:
  display_name: Scudelletti
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 318
wordpress_url: http://www.compilando.org/wp/?p=318
date: '2011-11-24 14:51:41 -0200'
date_gmt: '2011-11-24 17:51:41 -0200'
categories:
- Ruby
- MySQL
tags:
- acentos
- banco de dados
- gsub
- MySQL
- Ruby
- SQL
comments:
- id: 68
  author: Valter Rui
  author_email: valterrui@ig.com.br
  author_url: ''
  date: '2014-06-05 17:45:00 -0300'
  date_gmt: '2014-06-05 20:45:00 -0300'
  content: Muito bom mesmo, obrigado!
---
**<span style="color: #ff0000;">Este post já foi superado, porém o conteúdo dele é extremamente útil.</span>**

Para ver uma solução mais flexível, mais fácil e de melhor funcionamento acesse este [post](/outros/programação/mysql/2011/11/28/busca-sql-ignorando-acentuacao-mysql.html).

E ae galera tudo bom com vcs?
Ontem tive uma task na qual era necessário buscar dados com e sem acentos quando a pessoa digitava com **acentos**, fiquei quebrando a cabeça quando um companheiro de Trabalho teve uma idéia que achei genial e muito bem sacada.

Esta idéia consiste em substituir os acentos pro % e fazer um like na query SQL.

Exemplo: Há no **banco de dados** a palavra Diário e Diario, precisávamos trazer as 2 quando a palavra buscada fosse Diário.

{% highlight sql %}
Select nome from empresas where nome like 'Di%rio'
{% endhighlight %}

Para isto bastou substituir o á por %, solução muito útil, tem falhas sabemos, afinal Diorio tmb retornaria.

Como eu substituí os acnetos por %? Eu tinha feito um método que percorria 1 array com os acentos e talz, mas outro companheiro do trabalho melhorou meu código e muito, nessas horas adoro fazer parte de uma equipe unida.

Em vez de **Like** ele sugeriu utilizar o **Regex do MySQL** então em vez de '%' trocamos por `.`.

Então vamos ao código em **Ruby**

{% highlight ruby %}
palavra = "Diário"
palavra.gsub(/[^a-zA-Z0-9s]/, '.')
{% endhighlight %}

Este código retorna Di.rio, ele pega todo caracter que não eh de a-z ou A-Z ou 0-9 e troca por `.`, então áéô e derivados são substituidos por `.`.

Pra trocar o `.` por `% basta editar o parametro do gsub.

Ai basta colocar o retorno disso na query que ficará +/- assim.

{% highlight sql %}
Select nome from empresas where nome REGEXP 'Di.rio'
{% endhighlight %}

Agradeço ao **Thiago Veiga** e ao **Edson Hilios** por auxiliar a execução desta task.

Abraços galera! ;)
