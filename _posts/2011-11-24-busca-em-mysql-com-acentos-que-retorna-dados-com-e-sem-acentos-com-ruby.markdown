---
layout: post
status: publish
published: true
title: Busca em MySQL com acentos que retorna dados com e sem acentos com Ruby
author:
  display_name: Mandrake
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
<p><strong><span style="color: #ff0000;">Este post já foi superado, porém o conteúdo dele é extremamente útil.</span></strong><br />
Para ver uma solução mais flexível, mais fácil e de melhor funcionamento acesse este <a href="http://www.compilando.org/programacao/busca-sql-ignorando-acentuacao-mysql">post</a>.</p>
<p>-------------------------------------------------</p>
<p>E ae galera tudo bom com vcs?</p>
<p>Ontem tive uma task na qual era necessário buscar dados com e sem acentos quando a pessoa digitava com <strong>acentos</strong>, fiquei quebrando a cabeça quando um companheiro de Trabalho teve uma idéia que achei genial e muito bem sacada.</p>
<p><a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/11/logo-mysql.jpg"><img class="aligncenter size-full wp-image-319" title="logo-mysql" src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/11/logo-mysql.jpg" alt="" width="399" height="291" /></a></p>
<p>Esta idéia consiste em substituir os acentos pro % e fazer um like na query SQL.<br />
Exemplo: Há no <strong>banco de dados</strong> a palavra Diário e Diario, precisávamos trazer as 2 quando a palavra buscada fosse Diário.</p>
<p>[code lang="sql"]<br />
Select nome from empresas where nome like 'Di%rio'<br />
[/code]</p>
<p>Para isto bastou substituir o á por %, solução muito útil, tem falhas sabemos, afinal Diorio tmb retornaria.</p>
<p>Como eu substituí os acnetos por %? Eu tinha feito um método que percorria 1 array com os acentos e talz, mas outro companheiro do trabalho melhorou meu código e muito, nessas horas adoro fazer parte de uma equipe unida.</p>
<p>Em vez de <strong>Like</strong> ele sugeriu utilizar o <strong>Regex do MySQL</strong> então em vez de '%' trocamos por '.'.</p>
<p>Então vamos ao código em <strong>Ruby</strong></p>
<p>[code lang="ruby"]<br />
palavra = &quot;Diário&quot;<br />
palavra.gsub(/[^a-zA-Z0-9s]/, '.')<br />
[/code]</p>
<p>Este código retorna Di.rio, ele pega todo caracter que não eh de a-z ou A-Z ou 0-9 e troca por '.', então áéô e derivados são substituidos por '.'.<br />
Pra trocar o '.' por '%' basta editar o parametro do gsub.</p>
<p>Ai basta colocar o retorno disso na query que ficará +/- assim.</p>
<p>[code lang="sql"]<br />
Select nome from empresas where nome REGEXP 'Di.rio'<br />
[/code]</p>
<p>Agradeço ao <strong>Thiago Veiga</strong> e ao <strong>Edson Hilios</strong> por auxiliar a execução desta task.<br />
Abraços galera! ;)</p>
