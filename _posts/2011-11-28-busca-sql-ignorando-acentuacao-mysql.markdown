---
layout: post
status: publish
published: true
title: 'Busca SQL Ignorando Acentuação - MySQL '
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 324
wordpress_url: http://www.compilando.org/wp/?p=324
date: '2011-11-28 09:36:34 -0200'
date_gmt: '2011-11-28 12:36:34 -0200'
categories:
- Outros
- Programação
- MySQL
tags:
- acentuação no MySQL
- bsuca sem acentos
- busca acentuada
- MySQL
- SQL
- utf8
comments:
- id: 44
  author: Busca em MySQL com acentos que retorna dados com e sem acentos com Ruby
    | Compilando | MySQL
  author_email: ''
  author_url: http://www.compilando.org/wp/programacao/ruby/busca-em-mysql-com-acentos-que-retorna-dados-com-e-sem-acentos-com-ruby
  date: '2011-11-28 09:40:58 -0200'
  date_gmt: '2011-11-28 12:40:58 -0200'
  content: "[...] Busca SQL Ignorando Acentuação &#8211; MySQL &raquo; [...] "
- id: 45
  author: Joao Souza
  author_email: ''
  author_url: http://www.facebook.com/souzajj
  date: '2011-11-28 11:31:00 -0200'
  date_gmt: '2011-11-28 14:31:00 -0200'
  content: |
    Boa!
- id: 46
  author: Broder
  author_email: leo_paes@hotmail.com
  author_url: ''
  date: '2013-01-18 00:36:00 -0200'
  date_gmt: '2013-01-18 03:36:00 -0200'
  content: legal
- id: 51
  author: Renato
  author_email: renatotgomes@hotmail.com
  author_url: ''
  date: '2013-09-23 11:05:00 -0300'
  date_gmt: '2013-09-23 14:05:00 -0300'
  content: Irmão, parabéns pela dica, eu procurei por diversos link no google, baixei
    alguns arquivos de exemplo bem complexos que não funcionaram e você, com uma simples
    dica resolveu meu problema em 1 minuto. Muito obrigado.
- id: 58
  author: André Castro
  author_email: andregufc@gmail.com
  author_url: http://andrecastro.art.br
  date: '2014-04-09 16:25:00 -0300'
  date_gmt: '2014-04-09 19:25:00 -0300'
  content: Valeu! Dica muito útil
- id: 59
  author: Romulo
  author_email: romuloigor@gmail.com
  author_url: ''
  date: '2014-04-15 13:36:00 -0300'
  date_gmt: '2014-04-15 16:36:00 -0300'
  content: |-
    muito boa.. no meu caso eu precisava pegar o acento então ...

    select id
      from produto
     where nome like _utf8 '%ã%' COLLATE utf8_bin;
- id: 76
  author: "Álvaro Felipe"
  author_email: alvarofelipems@gmail.com
  author_url: http://semopcoes.com.br/
  date: '2015-01-21 21:27:00 -0200'
  date_gmt: '2015-01-22 00:27:00 -0200'
  content: Perfeito!
---
<p>E ae galera tudo jóia?</p>
<p>O meu post anterior possui uma solução para buscar dados que possuem acentos e trazer os dados que tem e não tem acentos, melhoramos a solução e além de ficar mais simples ainda faz a busca ignorar os acentos.</p>
<p><a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/11/mysql1.png"><img class="aligncenter size-full wp-image-325" title="" src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/11/mysql1.png" alt="" width="491" height="497" /></a></p>
<p>Se eu quero pesquisar por 'diário', ele me retorna 'diario' e 'diário', e se eu procuro 'diario', ele me retorna 'diário' e 'diario', e sem o problema mencionado no post anterior.</p>
<p>Bacana né? Então vamos a query!</p>
<p>[code lang="sql"]<br />
select nome from jornais where nome like _utf8 '%diario%' COLLATE utf8_unicode_ci;<br />
[/code]</p>
<p>Resultado</p>
<p>[code lang="sql"]<br />
mysql&gt; select nome from jornais where nome like _utf8 '%diario%' COLLATE utf8_unicode_ci;<br />
+-------------------------------+<br />
| empresa                       |<br />
+-------------------------------+<br />
| Diário do Grande ABC          |<br />
| Baguete Diario Ltda           |<br />
| Jornal Diário do Litoral      |<br />
+-------------------------------+<br />
3 rows in set (0.04 sec)<br />
[/code]</p>
<p>Vale ressaltar que a busca seguinte também trás os mesmos resultados.<br />
[code lang="sql"]<br />
select nome from jornais where nome like _utf8 '%diário%' COLLATE utf8_unicode_ci;<br />
[/code]</p>
<p>Enjoy!<br />
Fonte: <a href="http://dadomingues.blogspot.com/2008/10/select-ignorando-acento.html">http://dadomingues.blogspot.com/2008/10/select-ignorando-acento.html</a></p>
