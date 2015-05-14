---
layout: post
status: publish
published: true
title: Configurando Conexão SAP no Linux e MacOS
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
excerpt: Como conectar a um servido SAP pelo Linux e MacOS
wordpress_id: 44
wordpress_url: http://www.compilando.org/wp/?p=44
date: '2010-09-28 08:11:56 -0300'
date_gmt: '2010-09-28 11:11:56 -0300'
categories:
- Sistemas
tags:
- login SAP
- SAP MacOs
- SAP no Linux
- SAP no Ubuntu
- String de conexão SAP
comments:
- id: 3
  author: Rafa
  author_email: rafa@compilando.org
  author_url: http://rafaalves.tumblr.com
  date: '2010-09-28 11:04:09 -0300'
  date_gmt: '2010-09-28 14:04:09 -0300'
  content: "Show de Bola o artigo, direto e didático.\n100% Testado \n\n/V\nAbs irmão!"
- id: 4
  author: Marcelo Carvalho
  author_email: contato@marcelocarvalho.com
  author_url: ''
  date: '2011-10-09 22:41:00 -0300'
  date_gmt: '2011-10-09 22:41:00 -0300'
  content: |-
    Estou procurando a versão para linux onde você conseguiu?
    Obrigado
- id: 5
  author: ''
  author_email: admin@compilando.org
  author_url: ''
  date: '2011-10-09 22:47:00 -0300'
  date_gmt: '2011-10-09 22:47:00 -0300'
  content: |-
    Um amigo fez download no site oficial numa área restrita a usuários.
    Se tu tiver login no site dos caras provavelmente terá 1 versão linux.

    Fora de lá é difícil achar infelizmente.
    Abraço.
- id: 6
  author: Marcelo Carvalho
  author_email: contato@marcelocarvalho.com
  author_url: ''
  date: '2011-10-11 12:07:00 -0300'
  date_gmt: '2011-10-11 12:07:00 -0300'
  content: |-
    Eu achei uma versão na internet, a empresa onde trabalho eles não trabalham com desktop usando linux.
    Estou tetando seguir seu tutorial mas não estou conseguindo.
- id: 7
  author: ''
  author_email: admin@compilando.org
  author_url: ''
  date: '2011-10-11 12:21:00 -0300'
  date_gmt: '2011-10-11 12:21:00 -0300'
  content: |-
    Pior que nem tenho mais a versão que utilizei.
    Eu só fazia uso na faculdade. =D
- id: 8
  author: Marcelo Carvalho
  author_email: contato@marcelocarvalho.com
  author_url: ''
  date: '2011-10-11 17:59:00 -0300'
  date_gmt: '2011-10-11 17:59:00 -0300'
  content: |-
    Eu consegui uma versão na internet.
    Muito bom seu artigo consegui configurar tudo e usar ele na empresa.
- id: 9
  author: ''
  author_email: admin@compilando.org
  author_url: ''
  date: '2011-10-11 18:58:00 -0300'
  date_gmt: '2011-10-11 18:58:00 -0300'
  content: |-
    Vlw amigo.
    Boa sorte. ;)
---
<p>Ae galera tudo jóia?<br />
Graças ao Rafa to com o <strong>SAPGui no Ubuntu</strong>. :-D</p>
<p>Bom pra evitar dor de cabeça pra vcs vou ensinar <strong>como logar no SAP</strong> e como entender a <strong>String de conexão do SAP<br />
</strong><br />
Abra o SAPGui e clique em New.<br />
<a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2010/09/SAP.png"><img class="aligncenter size-full wp-image-102" title="Tela Inicial" src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2010/09/SAP.png" alt="" width="388" height="273" /></a></p>
<p style="text-align: auto;">Vá para a aba Advanced.<br />
<a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2010/09/SAP2.png"><img class="aligncenter size-full wp-image-103" title="Nova Conexão SAP" src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2010/09/SAP2.png" alt="" width="535" height="348" /></a></p>
<p>Selecione Expert Mode.</p>
<p>Coloque essa String lah dentro:<br />
conn=/H/ip.da.maquina/S/32##</p>
<p>Você deve substituir o ## pelo System Number da conexão, o ip.da.maquina pelao Ip ou dominio do servidor a ser conectado.</p>
<p><img class="aligncenter size-full wp-image-104" title="String de Conexão SAP" src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2010/09/SAP3.png" alt="" width="537" height="345" /></p>
<p>Salva e clica em Connect.<br />
Provavelmente jah vai funfar de boa.</p>
<p>Existem alguns parâmetros interessantes para alterar esta scring de conexão, da pra selecionar o client, o usuario e a senha além da linguagem.</p>
<p>Se algue souber o que significa o 32, o H e o S posta nos comentários que adiciono a este tuto básico.<br />
Acho que H é de Host mas é mera suposição.</p>
<p>Tutorial testado em MacOs e Ubuntu.</p>
<p>Bom galera espero ter ajudado aos amantes dos SO's Não-Windows.<br />
E agradeço novamente o Rafa sem ele eu estaria googleando ateh agora pra achar o <strong>SAP versão Linux</strong>.<br />
Vlw irmão. :-)</p>
