---
layout: post
status: publish
published: true
title: Desenvolver software em modo virtual
author:
  display_name: Solon
  login: Solon
  email: ''
  url: ''
author_login: Solon
excerpt: Virtualização no desenvolvimento de sistemas
wordpress_id: 97
wordpress_url: http://www.compilando.org/wp/?p=97
date: '2010-10-06 23:09:06 -0300'
date_gmt: '2010-10-07 02:09:06 -0300'
categories:
- Engenharia de Software
tags:
- desenvolvimento
- desenvolvimento de sistemas
- virtualização
comments:
- id: 14
  author: Mandrake
  author_email: mandrake@compilando.org
  author_url: http://www.compilando.org
  date: '2010-10-07 12:16:35 -0300'
  date_gmt: '2010-10-07 15:16:35 -0300'
  content: |-
    Muito interessante Solon, como sempre detonando. [;)]

    Utilizo VirtualBox da Oracle da antiga Sun, que Deus a tenha. [:(]. Free e facil de mexer. Porem ouço muito falar do VMWare, só não o uso por que não gosto de versões pagas. SOu a favor do 100% Free.

    Bom VM é excelente para testar software como vc disse, o bom é que ela cria a possibilidade de testes em inúmeras plataformas sem necessitar ter várias máquinas.

    Excelente Artigo, vlw chefe.
---
<p>Olá Pessoal,</p>
<p>Vou falar sobre uma solução para desenvolvimento de software, <strong>virtualização</strong>. Um dos grandes desafios de uma equipe de desenvolvimento, é criar o ambiente.</p>
<p>Indico o VMware Lab Manager (VLM), fácil de instalar, configurar e gerenciar.</p>
<p>[caption id="attachment_112" align="aligncenter" width="350" caption="VLM"]<a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2010/10/ima_101.jpg"><img class="size-full wp-image-112 " title="ima_10" src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2010/10/ima_101.jpg" alt="" width="350" height="250" /></a>[/caption]</p>
<p>O VLM permite criar bibliotecas de configurações de diferentes máquinas, ou mesmo captura as configurações e adiciona a biblioteca. Assim, quando um usuário necessita de uma destas configurações, basta selecionar, e uma máquina virtual será instantaneamente disponibilizada com as configurações necessárias.</p>
<p>Mas será que isso funciona em um ambiente multitarefa?</p>
<p>Independentemente se for um servidor único, ou dezenas de servidores interconectados, o VLM faz o provisionamento em poucos segundos. É como se cada desenvolvedor tivesse seu próprio data center, totalmente equipado.</p>
<p>Todos estes benefícios são compatíveis com o VLM, o que significa que todos estes ambientes de desenvolvimento terão alta-disponibilidade. O Lab Manager também é eficiente em relação a discos rígidos, já que cada máquina virtual ocupa um pequeno espaço dos dados adicionado ao modelo da biblioteca.</p>
<p>O VLM também pode ser eficiente em correções de <em>bugs</em>, desde que este não esteja ligado ao hardware. Como o VLM captura as configurações, quando um <em>bug </em>em uma aplicação é descoberto, é possível criar um <em>check point</em>, suspender e disponibilizar para qualquer desenvolvedor que necessitar analisar o ocorrido. E ele pode até mesmo estar geograficamente distante, o que significa, custos menor com a colaboração e a comunicação, além de maior qualidade na entrega dos sistemas e aplicativos.</p>
<p>Uma aplicação<em> </em>bastante interessante, é a possibilidade da utilização do VLM com os <em>snapshots</em>, pontos de restauração que permite um desenvolvedor realize testes/alterações e facilmente retornar a uma situação de configuração anterior, ou seja, ele cria, vê o problema e retorna ao início, desta forma a desenvolvedor não precisa se preocupar como vai retornar ao estado validado do sistema.</p>
<p>Utilizar o VLM se mostra uma ferramenta bastante interessante que facilita e agiliza os projetos de desenvolvimento, reduzindo tempos dos desenvolvedores, testes e correções. A biblioteca de configurações do VLM permite a disponibilização sob-demanda de múltiplas máquinas virtuais, equipes de controle de qualidade (QA) ou mesmo em treinamento das equipes. O VMware Lab Manager possibilita o os recursos e o compartilha ambientes complexos multitarefa ao mesmo tempo que reduz o crescimento do número de servidores e o investimento necessário para a estrutura da empresa.</p>
<p>Existem outras ferramentas no mercado, por isso vale apena conferir a que melhor se adapta as suas necessidades. Pesquise!</p>
<p>Espero que aproveitem a dica. ^.^</p>
