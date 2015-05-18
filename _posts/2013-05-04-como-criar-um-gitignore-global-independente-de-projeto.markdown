---
layout: post
status: publish
published: true
title: Como criar um .gitignore Global independente de projeto
author:
  display_name: Scudelletti
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
Outro post rápido de Git.

Habitualmente commitamos o **.gitignore** nos nossos **repositórios** para todos poderem usufluir de suas características.

Porém as vezes é desnecessário adicionar ao .gitignore do projeto pastas e arquivos referentes a editores de textos e sistemas operacionais.

Como por exemplo as **pastas .DS_Store** do MacOS e a **pasta .tags do CTags**.

Para estes casos criamos um **.gitignore global** o qual cada desenvolvedor terá um diferente, podendo adicionar as características de seu ambiente para não **commitar arquivos desnecessários ao projeto**.

{% highlight bash %}
git config --global core.excludesfile '~/.gitignore'
{% endhighlight %}

Neste comando configuramos o git para utilizar o arquivo **.gitignore do diretório home**, além de continuar a utilizar o do projeto, ou seja, agora basta adicionar as pastas específicas do meu ambiente as quais não quero que sejam commitadas e pronto!

Abraços e boa sorte! :)

Fonte: <a target="_blank" rel='nofollow' href="http://stackoverflow.com/questions/7335420/global-git-ignore" title="http://stackoverflow.com/questions/7335420/global-git-ignore">http://stackoverflow.com/questions/7335420/global-git-ignore</a>
