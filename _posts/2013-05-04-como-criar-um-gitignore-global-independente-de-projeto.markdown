---
layout: post
status: publish
published: true
title: Como criar um .gitignore Global independente de projeto
author:
  display_name: Mandrake
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 431
wordpress_url: http://www.compilando.org/?p=431
date: '2013-05-04 10:59:07 -0300'
date_gmt: '2013-05-04 13:59:07 -0300'
categories:
- Git
- Outros
- Programação
- Sistemas
tags:
- ".gitignore"
- ".gitignore global"
- dicas
- git
- git-trick
comments: []
---
<p>Outro post rápido de Git.<br />
Habitualmente commitamos o <strong>.gitignore</strong> nos nossos <strong>repositórios</strong> para todos poderem usufluir de suas características.<br />
Porém as vezes é desnecessário adicionar ao .gitignore do projeto pastas e arquivos referentes a editores de textos e sistemas operacionais.<br />
Como por exemplo as <strong>pastas .DS_Store</strong> do MacOS e a <strong>pasta .tags do CTags</strong>.</p>
<p>Para estes casos criamos um <strong>.gitignore global</strong> o qual cada desenvolvedor terá um diferente, podendo adicionar as características de seu ambiente para não <strong>commitar arquivos desnecessários ao projeto</strong>.</p>
<p>[code lang="shell"]<br />
git config --global core.excludesfile '~/.gitignore'<br />
[/code]</p>
<p>Neste comando configuramos o git para utilizar o arquivo <strong>.gitignore do diretório home</strong>, além de continuar a utilizar o do projeto, ou seja, agora basta adicionar as pastas específicas do meu ambiente as quais não quero que sejam commitadas e pronto!</p>
<p>Abraços e boa sorte! :)</p>
<p>Fonte: <a target="_blank" rel='nofollow' href="http://stackoverflow.com/questions/7335420/global-git-ignore" title="http://stackoverflow.com/questions/7335420/global-git-ignore">http://stackoverflow.com/questions/7335420/global-git-ignore</a></p>
