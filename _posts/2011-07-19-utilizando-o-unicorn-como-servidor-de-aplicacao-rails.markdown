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
Grandes mestres, vejo mtos questionamentos sobre como fazer **deploy de sistemas em Ruby on Rails**, então estou dando uma pesquisada e vi como é facil subir o Unicorn para manter sua **aplicação Rails** no ar.

Vocês irão ver(verão pra mim é época do ano) que é extremamente fácil subir o **Unicorn**.

Vá a sua pasta de projeto rails, abra o arquivo **Gemfile** e descomente a seguinte linha:

{% highlight ruby %}
gem 'unicorn'
{% endhighlight %}

Ainda na sua raiz do projeto execute o comando abaixo para **instalar a gem** do unicorn.

{% highlight bash %}
bundle install
{% endhighlight %}

Após a instalação e atualização das Gems já podemos subir o **Unicorn como servidor de Aplicação**, neste caso subirei ele na porta 80.

{% highlight bash %}
unicorn_rails -p 80
{% endhighlight %}

Agora acesse sua aplicação via browser e voilá. **Unicorn With Rails**! ;)

**Curiosidade sobre este post:**

Para acessar sua aplicação pelo browser há muitas maneiras:
<a rel="nofollow" href="http://localhost">http://localhost</a>,
<a rel="nofollow" href="http://127.0.0.1">http://127.0.0.1</a> e
<a rel="nofollow" href="http://0.0.0.0">http://0.0.0.0</a>

**Outra curiosidade que não merece Post:**

Se você usa ubuntu e não consegue parar os servidores com CTRL+C verifique se os atalhos do teclado do terminal não utilizam deste comando, pois o terminal verifica se é um atalho antes de executar.

Abração Galera!!!
