---
layout: post
status: publish
published: true
title: Ver Valor e Alterar auto_increment no MySQL
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 442
wordpress_url: http://www.compilando.org/?p=442
date: '2013-05-04 11:09:53 -0300'
date_gmt: '2013-05-04 14:09:53 -0300'
categories:
- Linux
- Programação
- MySQL
tags:
- alterar auto_increment
- auto_increment
- banco de dados
- id mysql
- MySQL
comments:
- id: 50
  author: Jefferson
  author_email: jefrmoraes@hotmail.com
  author_url: ''
  date: '2013-06-27 18:11:00 -0300'
  date_gmt: '2013-06-27 21:11:00 -0300'
  content: Muito bom, amigo!!!
- id: 63
  author: igorbrp
  author_email: igorbrp@gmail.com
  author_url: ''
  date: '2014-05-26 23:57:00 -0300'
  date_gmt: '2014-05-27 02:57:00 -0300'
  content: Me poupou um tempão. Ótimo.
---
<p>Hoje vou mostrar como <strong>descobrir</strong>(verificar) <strong>qual será o próximo valor de um campo auto_increment no MySQL</strong>. Além disso mostrarei <strong>como alterar o auto_increment de uma tabela do MySQL</strong>.</p>
<p>Percebi que era uma busca recorrente que eu fazia toda vez que precisava e achei melhor colocar isto no blog.</p>
<p>Como vocês devem saber o <strong>MySQL</strong> possui várias <strong>tabelas de systema</strong>, e utilizaremos uma delas para verificar o próximo número do <strong>auto increment</strong>.<br />
Para isto acesso seu mysql e execute a seguinte query:<br />
[code lang="SQL"]<br />
SELECT<br />
  AUTO_INCREMENT<br />
FROM information_schema.tables<br />
WHERE<br />
  TABLE_NAME='users' and<br />
  TABLE_SCHEMA=&quot;compilando&quot;;<br />
[/code]</p>
<p>Onde 'users' é o nome da tabela e 'compilando' é o nome do banco de dados.<br />
Alterando esta query da pra ver algumas informações da tabela 'users', como por exemplo a engine utilizada.</p>
<p>Agora veremos como alterar este dado.<br />
[code lang="SQL"]<br />
ALTER TABLE users AUTO_INCREMENT = 10<br />
[/code]</p>
<p>Onde 10 é o próximo valor do auto_increment.</p>
<p>Agora você pode conferir se deu certo executando a primeira query novamente.<br />
Eureka! It's works! =]</p>
<p>Fontes:<br />
<a target="_blank" rel="nofollow" href="http://www.electrictoolbox.com/reset-auto-increment-value-mysql/" title="http://www.electrictoolbox.com/reset-auto-increment-value-mysql/">http://www.electrictoolbox.com/reset-auto-increment-value-mysql/</a><br />
<a rel="nofollow" href="http://stackoverflow.com/questions/1405393/finding-the-next-available-id-in-mysql" title="http://stackoverflow.com/questions/1405393/finding-the-next-available-id-in-mysql" target="_blank">http://stackoverflow.com/questions/1405393/finding-the-next-available-id-in-mysql</a></p>
