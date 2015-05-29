---
layout: post
status: publish
published: true
title: Manipulação de Sinais de Processos em Ruby - Saiba quando sua tela foi redimensionada
author:
  display_name: Scudelletti
  login: Mandrake
  email: cadastro@scudelletti.com
  url: ''
author_login: Mandrake
author_email: cadastro@scudelletti.com
wordpress_id: 460
wordpress_url: http://www.compilando.org/?p=460
date: '2014-10-02 11:36:10 -0300'
date_gmt: '2014-10-02 14:36:10 -0300'
categories:
- Linux
- Programação
- Ruby
tags:
- Ruby
- shell
- ruby-tricks
- tricks-and-tips
- redimensionar-tela-do-terminal
comments: []
---
Código ruby do dia!

A classe [Signal](http://ruby-doc.org/core-2.1.2/Signal.html) do ruby como o próprio nome diz, permite "manipular" sinais. Sendo assim, ela nos possibilita fazer experiências legais como saber quando a tela do terminal foi redimensionada.

Para fazer este teste execute o seguinte trecho de código dentro de uma sessão do IRB.
{% highlight ruby %}
  Signal.trap('SIGWINCH', proc{ puts "The terminal size changed... Yay!"})
{% endhighlight %}

Agora redimensione a janela e veja a mensagem dentro do proc aparecer a cada resize.
Ruby é muito amor! ;)

**<span style="color:red">Edit:</span>** **Brincadeiras legais de se fazer no IRB! Para matar o processo utilize o comando `kill -9` ou Control `\` (que é o `SIGQUIT`).**

{% highlight ruby %}
Signal.trap('SIGINT', proc{ puts "It's a TRAP!!! Muahahahaha!!!"})
Signal.trap('SIGTSTP', proc{ puts "You CAN'T suspend me, I love you honey!"})
Signal.trap('SIGWINCH', proc{ puts "The terminal size changed... Yay!"})
{% endhighlight %}
