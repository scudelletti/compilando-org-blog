---
layout: post
status: publish
published: true
title: Como saber qual processo está utilizando determinada porta no Linux
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 334
wordpress_url: http://www.compilando.org/wp/?p=334
date: '2012-02-24 12:36:10 -0200'
date_gmt: '2012-02-24 15:36:10 -0200'
categories:
- Linux
tags:
- fuser
- netstat
- porta
- porta processo
- processo
comments: []
---
<p>Estava precisando de um <strong>comando</strong> para listar qual <strong>processo</strong> estava ocupando a porta 4000 de meu PC, deu uma googleada e eis que me vem a solução... fuser... a utilização dele é bem fácil e retorna até o <strong>PID do processo</strong>...</p>
<p>Seus problemas acabaram, <strong>Saiba qual processo utiliza determinada porta no Linux</strong>!</p>
<p>[code lang="shell"]<br />
fuser -v 4000/tcp<br />
[/code]</p>
<p>Onde 4000 é a porta e TCP é o protocolo.</p>
<p>Antigamente eu utilizava <strong>Netstat</strong> para fazer isso... agora ficou bem mais simples...<br />
Bom é isso.</p>
<p>Enjoy!</p>
<p>Fonte de Consulta: <a rel="nofollow" href="http://www.vivaolinux.com.br/dica/fuser-Descobrindo-o-processo-que-uma-determinada-porta-esta-utilizando">Viva O Linux</a></p>
