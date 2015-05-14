---
layout: post
status: publish
published: true
title: Utilizando o Unicorn como Servidor de Aplicação Rails
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 284
wordpress_url: http://www.compilando.org/wp/?p=284
date: '2011-07-19 13:41:12 -0300'
date_gmt: '2011-07-19 16:41:12 -0300'
categories:
- Linux
- Programação
- Ruby
tags:
- deploy
- rails
- servidor de aplicação Ruby
- Servidor Rails
- unicorn
comments: []
---
<p>Grandes mestres, vejo mtos questionamentos sobre como fazer <strong>deploy de sistemas em Ruby on Rails</strong>, então estou dando uma pesquisada e vi como é facil subir o Unicorn para manter sua <strong>aplicação Rails</strong> no ar.</p>
<p><a href="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/07/unicorn_with_rails.png"><img src="http://blog-scudelletti.rhcloud.com/wp-content/uploads/2011/07/unicorn_with_rails.png" alt="" title="Unicorn With Rails and Ruby" width="196" height="199" class="aligncenter size-full wp-image-285" /></a></p>
<p>Vocês irão ver(verão pra mim é época do ano) que é extremamente fácil subir o <strong>Unicorn</strong>.</p>
<p>Vá a sua pasta de projeto rails, abra o arquivo <strong>Gemfile</strong> e descomente a seguinte linha:<br />
[code lang="ruby"]<br />
gem 'unicorn'<br />
[/code]</p>
<p>Ainda na sua raiz do projeto execute o comando abaixo para <strong>instalar a gem</strong> do unicorn.<br />
[code lang="shell"]<br />
bundle install<br />
[/code]</p>
<p>Após a instalação e atualização das Gems já podemos subir o <strong>Unicorn como servidor de Aplicação</strong>, neste caso subirei ele na porta 80.<br />
[code lang="shell"]<br />
unicorn_rails -p 80<br />
[/code]</p>
<p>Agora acesse sua aplicação via browser e voilá. <strong>Unicorn With Rails</strong>! ;)</p>
<p><strong>Curiosidade sobre este post:</strong><br />
Para acessar sua aplicação pelo browser há muitas maneiras:<br />
<a rel="nofollow" href="http://localhost">http://localhost</a><br />
<a rel="nofollow" href="http://127.0.0.1">http://127.0.0.1</a><br />
<a rel="nofollow" href="http://0.0.0.0">http://0.0.0.0</a></p>
<p><strong>Outra curiosidade que não merece Post:</strong><br />
Se você usa ubuntu e não consegue parar os servidores com CTRL+C verifique se os atalhos do teclado do terminal não utilizam deste comando, pois o terminal verifica se antes é um atalho antes de executar.</p>
<p>Abração Galera!!!</p>
